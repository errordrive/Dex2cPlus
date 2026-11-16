package com.dex2c.plus.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.core.content.ContextCompat;
import com.dex2c.plus.ConsoleLogger;
import com.dex2c.plus.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GlowConsoleTextView extends View {
    private static final int MAX_WRAPPED_LINES = 2500;
    private final float[] asciiWidths;
    private boolean autoFollowBottom;
    private float baselineOffsetPx;
    private final float density;
    private boolean isDragging;
    private long lastProcessedRevisionSeq;
    private float lastTouchY;
    private int lastWrappedWidthPx;
    private float lineHeightPx;
    private final int maxFlingVelocity;
    private int maxScrollY;
    private int measuredWidthPx;
    private final int minFlingVelocity;
    private final int padBottom;
    private final int padLeft;
    private final int padRight;
    private final int padTop;
    private final List<String> rawSnapshot;
    private int scrollYOffset;
    private final OverScroller scroller;
    private final TextPaint textPaint;
    private final int touchSlop;
    private VelocityTracker velocityTracker;
    private final List<String> wrappedLines;

    public GlowConsoleTextView(Context context) {
        this(context, null);
    }

    public GlowConsoleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GlowConsoleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.asciiWidths = new float[128];
        this.rawSnapshot = new ArrayList(256);
        this.wrappedLines = new ArrayList(512);
        this.measuredWidthPx = 0;
        this.lastWrappedWidthPx = 0;
        this.lastProcessedRevisionSeq = -1L;
        this.scrollYOffset = 0;
        this.maxScrollY = 0;
        this.autoFollowBottom = true;
        this.isDragging = false;
        this.scroller = new OverScroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        float f = context.getResources().getDisplayMetrics().density;
        this.density = f;
        this.padLeft = (int) (f * 16.0f);
        this.padRight = (int) (16.0f * f);
        this.padTop = (int) (20.0f * f);
        this.padBottom = (int) (26.0f * f);
        textPaint.setTextSize(TypedValue.applyDimension(2, 13.5f, context.getResources().getDisplayMetrics()));
        textPaint.setTypeface(Typeface.SERIF != null ? Typeface.DEFAULT : Typeface.MONOSPACE);
        textPaint.setColor(ContextCompat.getColor(context, R.color.console_text));
        initAsciiWidthTable();
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        this.lineHeightPx = (fontMetrics.descent - fontMetrics.ascent) + (f * 5.0f);
        this.baselineOffsetPx = -fontMetrics.ascent;
    }

    private void initAsciiWidthTable() {
        char[] cArr = new char[128];
        for (int i = 0; i < 128; i++) {
            cArr[i] = (char) i;
        }
        this.textPaint.getTextWidths(cArr, 0, 128, this.asciiWidths);
        float fMeasureText = this.textPaint.measureText(" ");
        for (int i2 = 0; i2 < 32; i2++) {
            this.asciiWidths[i2] = fMeasureText;
        }
    }

    public void setGlowActive(boolean z) {
        invalidate();
    }

    private int resolveEffectiveWidth() {
        int width = getWidth();
        if (width <= 0) {
            width = getMeasuredWidth();
        }
        if (width <= 0) {
            width = this.measuredWidthPx;
        }
        return width <= 0 ? getResources().getDisplayMetrics().widthPixels : width;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = getResources().getDisplayMetrics().widthPixels;
        int i4 = getResources().getDisplayMetrics().heightPixels;
        int iResolveSize = resolveSize(i3, i);
        setMeasuredDimension(iResolveSize, resolveSize(i4, i2));
        if (iResolveSize <= 0 || iResolveSize == this.measuredWidthPx) {
            return;
        }
        this.measuredWidthPx = iResolveSize;
        rebuildWrappedLinesFull(ConsoleLogger.get().getGapBuffer(), iResolveSize);
    }

    public void onBufferUpdated(ConsoleLogger.ChunkedGapBuffer chunkedGapBuffer) {
        if (chunkedGapBuffer == null) {
            return;
        }
        int iResolveEffectiveWidth = resolveEffectiveWidth();
        if (iResolveEffectiveWidth != this.lastWrappedWidthPx || chunkedGapBuffer.getRevisionSeq() != this.lastProcessedRevisionSeq) {
            rebuildWrappedLinesFull(chunkedGapBuffer, iResolveEffectiveWidth);
        } else {
            updateMaxScrollY();
        }
        if (this.autoFollowBottom) {
            this.scrollYOffset = this.maxScrollY;
        } else {
            this.scrollYOffset = Math.max(0, Math.min(this.scrollYOffset, this.maxScrollY));
        }
        invalidate();
    }

    private void rebuildWrappedLinesFull(ConsoleLogger.ChunkedGapBuffer chunkedGapBuffer, int i) {
        this.wrappedLines.clear();
        if (chunkedGapBuffer == null) {
            this.maxScrollY = 0;
            this.scrollYOffset = 0;
            return;
        }
        int lineCount = chunkedGapBuffer.getLineCount();
        if (lineCount <= 0) {
            this.lastProcessedRevisionSeq = chunkedGapBuffer.getRevisionSeq();
            this.maxScrollY = 0;
            this.scrollYOffset = 0;
            return;
        }
        if (i <= 0) {
            i = resolveEffectiveWidth();
        }
        this.lastWrappedWidthPx = i;
        this.lastProcessedRevisionSeq = chunkedGapBuffer.getRevisionSeq();
        int iMin = Math.min(lineCount, 1500);
        chunkedGapBuffer.copyLinesWindow(Math.max(0, lineCount - iMin), iMin, this.rawSnapshot);
        float fMax = Math.max(200.0f, (i - this.padLeft) - this.padRight);
        for (int i2 = 0; i2 < this.rawSnapshot.size(); i2++) {
            String str = this.rawSnapshot.get(i2);
            if (str == null || str.isEmpty()) {
                this.wrappedLines.add("");
            } else if (str.indexOf(9) >= 0) {
                this.wrappedLines.add(str);
            } else {
                wrapSingleLineByMeasuredWidth(str, fMax);
            }
        }
        if (this.wrappedLines.size() > MAX_WRAPPED_LINES) {
            this.wrappedLines.subList(0, this.wrappedLines.size() - MAX_WRAPPED_LINES).clear();
        }
        updateMaxScrollY();
    }

    private void updateMaxScrollY() {
        int size = ((int) (this.wrappedLines.size() * this.lineHeightPx)) + this.padTop + this.padBottom;
        int height = getHeight() > 0 ? getHeight() : getMeasuredHeight();
        if (height > 0) {
            this.maxScrollY = Math.max(0, size - height);
        } else {
            this.maxScrollY = 0;
        }
    }

    private void wrapSingleLineByMeasuredWidth(String str, float f) {
        String str2;
        float f2;
        float fMeasureText;
        int length = str.length();
        int i = 0;
        while (i < length) {
            float f3 = 0.0f;
            int i2 = i;
            boolean z = false;
            int i3 = -1;
            while (i2 < length) {
                char cCharAt = str.charAt(i2);
                if (cCharAt < 128) {
                    fMeasureText = this.asciiWidths[cCharAt];
                } else {
                    fMeasureText = this.textPaint.measureText(str, i2, i2 + 1);
                    z = true;
                }
                f3 += fMeasureText;
                if (f3 > f) {
                    break;
                }
                if (cCharAt == ' ' || cCharAt == '/' || cCharAt == '|' || cCharAt == ',' || cCharAt == ';') {
                    i3 = i2 + 1;
                }
                i2++;
            }
            if (i2 == length) {
                this.wrappedLines.add(str.substring(i));
                return;
            }
            if (z) {
                str2 = str;
                f2 = f;
                int iBreakText = this.textPaint.breakText(str2, i, length, true, f2, null);
                if (iBreakText > 0) {
                    i2 = i + iBreakText;
                }
            } else {
                str2 = str;
                f2 = f;
            }
            if (i2 <= i) {
                i3 = i + 1;
            } else if (i3 <= i || i2 - i3 > 18) {
                i3 = i2;
            }
            this.wrappedLines.add(str2.substring(i, i3));
            i = i3;
            while (i < length && str2.charAt(i) == ' ') {
                i++;
            }
            str = str2;
            f = f2;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0) {
            this.measuredWidthPx = i;
            rebuildWrappedLinesFull(ConsoleLogger.get().getGapBuffer(), i);
            if (this.autoFollowBottom) {
                this.scrollYOffset = this.maxScrollY;
            } else {
                this.scrollYOffset = Math.max(0, Math.min(this.scrollYOffset, this.maxScrollY));
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        ConsoleLogger.ChunkedGapBuffer gapBuffer;
        super.onDraw(canvas);
        if (this.wrappedLines.isEmpty() && (gapBuffer = ConsoleLogger.get().getGapBuffer()) != null && gapBuffer.getLineCount() > 0) {
            rebuildWrappedLinesFull(gapBuffer, resolveEffectiveWidth());
            if (this.autoFollowBottom) {
                this.scrollYOffset = this.maxScrollY;
            }
        }
        if (this.wrappedLines.isEmpty()) {
            return;
        }
        int width = getWidth() > 0 ? getWidth() : resolveEffectiveWidth();
        int height = getHeight();
        int iMax = Math.max(0, (int) ((this.scrollYOffset - this.padTop) / this.lineHeightPx));
        float f2 = height;
        int iMin = Math.min(this.wrappedLines.size(), ((int) Math.ceil(f2 / this.lineHeightPx)) + 3 + iMax);
        for (int i = iMax; i < iMin; i++) {
            String str = this.wrappedLines.get(i);
            float f3 = this.padTop;
            float f4 = this.lineHeightPx;
            float f5 = (f3 + (i * f4)) - this.scrollYOffset;
            float f6 = this.baselineOffsetPx;
            float f7 = f5 + f6;
            if (f4 + f7 >= 0.0f && f7 - f6 <= f2 && str != null && !str.isEmpty()) {
                int iIndexOf = str.indexOf(9);
                if (iIndexOf >= 0) {
                    String strSubstring = str.substring(0, iIndexOf);
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    float fMeasureText = (width - this.padRight) - (strSubstring2.isEmpty() ? 0.0f : this.textPaint.measureText(strSubstring2));
                    if (strSubstring.isEmpty()) {
                        f = fMeasureText;
                    } else {
                        float fMax = Math.max(60.0f, (fMeasureText - this.padLeft) - (this.density * 12.0f));
                        if (this.textPaint.measureText(strSubstring) <= fMax) {
                            canvas.drawText(strSubstring, this.padLeft, f7, this.textPaint);
                            f = fMeasureText;
                        } else {
                            f = fMeasureText;
                            canvas.drawText(strSubstring, 0, Math.max(0, this.textPaint.breakText(strSubstring, 0, strSubstring.length(), true, fMax, null)), this.padLeft, f7, (Paint) this.textPaint);
                        }
                    }
                    if (!strSubstring2.isEmpty()) {
                        canvas.drawText(strSubstring2, Math.max(this.padLeft, f), f7, this.textPaint);
                    }
                } else {
                    canvas.drawText(str, this.padLeft, f7, this.textPaint);
                }
            }
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            int iMax = Math.max(0, Math.min(this.scroller.getCurrY(), this.maxScrollY));
            this.scrollYOffset = iMax;
            this.autoFollowBottom = ((float) (this.maxScrollY - iMax)) <= this.lineHeightPx * 1.5f;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            this.lastTouchY = motionEvent.getY();
            this.isDragging = false;
            return true;
        }
        if (actionMasked == 1) {
            if (this.isDragging) {
                this.velocityTracker.computeCurrentVelocity(1000, this.maxFlingVelocity);
                int yVelocity = (int) this.velocityTracker.getYVelocity();
                if (Math.abs(yVelocity) > this.minFlingVelocity) {
                    this.scroller.fling(0, this.scrollYOffset, 0, -yVelocity, 0, 0, 0, this.maxScrollY);
                    postInvalidateOnAnimation();
                }
            }
            recycleVelocityTracker();
            this.isDragging = false;
            return true;
        }
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                recycleVelocityTracker();
                this.isDragging = false;
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
        float y = motionEvent.getY();
        float f = this.lastTouchY - y;
        if (!this.isDragging && Math.abs(f) > this.touchSlop) {
            this.isDragging = true;
        }
        if (this.isDragging) {
            this.lastTouchY = y;
            int iMax = Math.max(0, Math.min(this.scrollYOffset + ((int) f), this.maxScrollY));
            this.scrollYOffset = iMax;
            this.autoFollowBottom = ((float) (this.maxScrollY - iMax)) <= this.lineHeightPx * 1.5f;
            invalidate();
        }
        return true;
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }
}
