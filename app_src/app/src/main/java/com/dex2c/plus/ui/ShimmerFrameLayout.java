package com.dex2c.plus.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.dex2c.plus.model.ProjectState;

/* JADX INFO: loaded from: classes.dex */
public class ShimmerFrameLayout extends FrameLayout {
    private boolean autoStart;
    private LinearGradient linearGradient;
    private final Matrix shaderMatrix;
    private boolean shimmerActive;
    private ValueAnimator shimmerAnimator;
    private final Paint shimmerPaint;
    private float translateFraction;
    private int viewHeight;
    private int viewWidth;

    public ShimmerFrameLayout(Context context) {
        this(context, null);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.shimmerPaint = new Paint(1);
        this.shaderMatrix = new Matrix();
        this.translateFraction = -1.0f;
        this.viewWidth = 0;
        this.viewHeight = 0;
        this.shimmerActive = true;
        this.autoStart = true;
        setWillNotDraw(false);
    }

    private void setupShimmerShader(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        boolean zIsDarkMode = ProjectState.isDarkMode(getContext());
        int i3 = zIsDarkMode ? 452984831 : 640965534;
        int i4 = zIsDarkMode ? 234881023 : 305421214;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, i * 0.65f, i2 * 0.35f, new int[]{ViewCompat.MEASURED_SIZE_MASK, i4, i3, i4, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.0f, 0.32f, 0.5f, 0.68f, 1.0f}, Shader.TileMode.CLAMP);
        this.linearGradient = linearGradient;
        this.shimmerPaint.setShader(linearGradient);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewWidth = i;
        this.viewHeight = i2;
        setupShimmerShader(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i;
        super.dispatchDraw(canvas);
        if (!this.shimmerActive || this.linearGradient == null || (i = this.viewWidth) <= 0 || this.viewHeight <= 0) {
            return;
        }
        float f = this.translateFraction * i * 1.6f;
        this.shaderMatrix.reset();
        this.shaderMatrix.setTranslate(f, 0.0f);
        this.linearGradient.setLocalMatrix(this.shaderMatrix);
        canvas.drawRect(0.0f, 0.0f, this.viewWidth, this.viewHeight, this.shimmerPaint);
    }

    public void startShimmer() {
        this.autoStart = true;
        this.shimmerActive = true;
        ValueAnimator valueAnimator = this.shimmerAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-1.0f, 1.3f);
            this.shimmerAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(1750L);
            this.shimmerAnimator.setRepeatCount(-1);
            this.shimmerAnimator.setRepeatMode(1);
            this.shimmerAnimator.setInterpolator(new LinearInterpolator());
            this.shimmerAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dex2c.plus.ui.ShimmerFrameLayout$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$startShimmer$0(valueAnimator2);
                }
            });
            this.shimmerAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShimmer$0(ValueAnimator valueAnimator) {
        this.translateFraction = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        postInvalidateOnAnimation();
    }

    public void stopShimmer() {
        this.autoStart = false;
        this.shimmerActive = false;
        ValueAnimator valueAnimator = this.shimmerAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.shimmerAnimator = null;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autoStart) {
            startShimmer();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.shimmerAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.shimmerAnimator = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            if (this.autoStart) {
                startShimmer();
            }
        } else {
            ValueAnimator valueAnimator = this.shimmerAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.shimmerAnimator = null;
            }
        }
    }
}
