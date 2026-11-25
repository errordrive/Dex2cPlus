package com.dex2c.plus.ui;

import android.graphics.Color;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.dex2c.plus.model.ProjectState;

/* JADX INFO: loaded from: classes.dex */
public final class UiAnimator {
    private static final DecelerateInterpolator DECELERATE = new DecelerateInterpolator(1.6f);
    private static final OvershootInterpolator OVERSHOOT = new OvershootInterpolator(1.4f);

    private UiAnimator() {
    }

    public static void applySeamlessDecorView(AppCompatActivity appCompatActivity, View view, View view2, int i, int i2) {
        Window window;
        if (appCompatActivity == null || (window = appCompatActivity.getWindow()) == null) {
            return;
        }
        View decorView = window.getDecorView();
        int color = ContextCompat.getColor(appCompatActivity, i);
        int color2 = ContextCompat.getColor(appCompatActivity, i2);
        boolean zIsDarkMode = ProjectState.isDarkMode(appCompatActivity);
        boolean zIsColorLight = isColorLight(color);
        boolean zIsColorLight2 = isColorLight(color2);
        WindowCompat.setDecorFitsSystemWindows(window, true);
        window.addFlags(Integer.MIN_VALUE);
        window.clearFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        window.clearFlags(134217728);
        window.setStatusBarColor(color);
        window.setNavigationBarColor(color2);
        decorView.setBackgroundColor(color);
        if (view != null) {
            view.setBackgroundColor(color);
        }
        if (view2 != null) {
            view2.setBackgroundColor(color2);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            window.setStatusBarContrastEnforced(false);
            window.setNavigationBarContrastEnforced(false);
        }
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, decorView);
        if (insetsController != null) {
            insetsController.setAppearanceLightStatusBars(zIsColorLight && !zIsDarkMode);
            insetsController.setAppearanceLightNavigationBars(zIsColorLight2 && !zIsDarkMode);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = decorView.getSystemUiVisibility();
            int i3 = (!zIsColorLight || zIsDarkMode) ? systemUiVisibility & (-8193) : systemUiVisibility | 8192;
            if (Build.VERSION.SDK_INT >= 26) {
                i3 = (!zIsColorLight2 || zIsDarkMode) ? i3 & (-17) : i3 | 16;
            }
            decorView.setSystemUiVisibility(i3);
        }
    }

    private static boolean isColorLight(int i) {
        return 1.0d - ((((((double) Color.red(i)) * 0.299d) + (((double) Color.green(i)) * 0.587d)) + (((double) Color.blue(i)) * 0.114d)) / 255.0d) < 0.45d;
    }

    public static void attachPersistentDrawablePress(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            if (view != null) {
                view.setLongClickable(false);
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.dex2c.plus.ui.UiAnimator.1
                    private boolean gestureCancelled = false;
                    private long downTimeMs = 0;

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        int actionMasked = motionEvent.getActionMasked();
                        if (actionMasked == 0) {
                            this.gestureCancelled = false;
                            this.downTimeMs = motionEvent.getDownTime();
                            view2.drawableHotspotChanged(motionEvent.getX(), motionEvent.getY());
                            view2.setPressed(true);
                            return true;
                        }
                        if (actionMasked == 2) {
                            if (this.gestureCancelled) {
                                return true;
                            }
                            if (motionEvent.getX() < 0.0f || motionEvent.getX() > view2.getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() > view2.getHeight()) {
                                this.gestureCancelled = true;
                                view2.setPressed(false);
                            } else {
                                view2.drawableHotspotChanged(motionEvent.getX(), motionEvent.getY());
                            }
                            return true;
                        }
                        if (actionMasked != 1) {
                            if (actionMasked != 3 && actionMasked != 4) {
                                return true;
                            }
                            this.gestureCancelled = true;
                            view2.setPressed(false);
                            return true;
                        }
                        boolean zIsPressed = view2.isPressed();
                        view2.setPressed(false);
                        long eventTime = motionEvent.getEventTime() - this.downTimeMs;
                        long jMin = Math.min(350L, ViewConfiguration.getLongPressTimeout());
                        if (!this.gestureCancelled && zIsPressed && eventTime < jMin) {
                            view2.performClick();
                        }
                        this.gestureCancelled = false;
                        return true;
                    }
                });
            }
        }
    }

    public static void attachCompactIconPress(View... viewArr) {
        attachPersistentDrawablePress(viewArr);
    }

    public static void attachPressAnimation(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.dex2c.plus.ui.UiAnimator$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return UiAnimator.lambda$attachPressAnimation$0(view2, motionEvent);
                    }
                });
            }
        }
    }

    static /* synthetic */ boolean lambda$attachPressAnimation$0(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            view.animate().scaleX(0.97f).scaleY(0.97f).setDuration(90L).setInterpolator(DECELERATE).start();
            return false;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(160L).setInterpolator(OVERSHOOT).start();
        return false;
    }

    public static void animateEntranceStaggered(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        long j = 0;
        for (View view : viewArr) {
            if (view != null) {
                view.setAlpha(0.0f);
                view.setTranslationY(24.0f);
                view.animate().alpha(1.0f).translationY(0.0f).setStartDelay(j).setDuration(240L).setInterpolator(DECELERATE).start();
                j += 45;
            }
        }
    }

    public static void pulseBadge(final View view) {
        if (view == null) {
            return;
        }
        view.animate().scaleX(1.06f).scaleY(1.06f).setDuration(110L).withEndAction(new Runnable() { // from class: com.dex2c.plus.ui.UiAnimator$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(140L).setInterpolator(UiAnimator.OVERSHOOT).start();
            }
        }).start();
    }

    public static void applyDialogWidth(android.app.Dialog dialog) {
        if (dialog == null) {
            return;
        }
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        android.content.Context context = dialog.getContext();
        if (context == null || context.getResources() == null) {
            return;
        }
        android.util.DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics == null) {
            return;
        }
        int i = (int) (((float) displayMetrics.widthPixels) * 0.85f);
        window.setLayout(i, -2);
    }
}
