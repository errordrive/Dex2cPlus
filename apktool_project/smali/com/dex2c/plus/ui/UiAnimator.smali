.class public final Lcom/dex2c/plus/ui/UiAnimator;
.super Ljava/lang/Object;
.source "UiAnimator.java"


# static fields
.field private static final DECELERATE:Landroid/view/animation/DecelerateInterpolator;

.field private static final OVERSHOOT:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/dex2c/plus/ui/UiAnimator;->DECELERATE:Landroid/view/animation/DecelerateInterpolator;

    .line 21
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/dex2c/plus/ui/UiAnimator;->OVERSHOOT:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs animateEntranceStaggered([Landroid/view/View;)V
    .locals 7

    if-nez p0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 195
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 196
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 198
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 199
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 200
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xf0

    .line 201
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/dex2c/plus/ui/UiAnimator;->DECELERATE:Landroid/view/animation/DecelerateInterpolator;

    .line 202
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v4, 0x2d

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V
    .locals 6

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 39
    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 40
    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    .line 41
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    .line 42
    invoke-static {p3}, Lcom/dex2c/plus/ui/UiAnimator;->isColorLight(I)Z

    move-result v2

    .line 43
    invoke-static {p4}, Lcom/dex2c/plus/ui/UiAnimator;->isColorLight(I)Z

    move-result v3

    const/4 v4, 0x1

    .line 45
    invoke-static {v0, v4}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/high16 v5, -0x80000000

    .line 47
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    const/high16 v5, 0x4000000

    .line 48
    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v5, 0x8000000

    .line 49
    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 51
    invoke-virtual {v0, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 52
    invoke-virtual {v0, p4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 53
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 59
    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    const/4 p3, 0x0

    if-lt p1, p2, :cond_4

    .line 63
    invoke-static {v0, p3}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 64
    invoke-static {v0, p3}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/Window;Z)V

    .line 67
    :cond_4
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v2, :cond_5

    if-nez p0, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    if-eqz v3, :cond_6

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 70
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 73
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_b

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    if-eqz v2, :cond_8

    if-nez p0, :cond_8

    or-int/lit16 p1, p1, 0x2000

    goto :goto_2

    :cond_8
    and-int/lit16 p1, p1, -0x2001

    .line 80
    :goto_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_a

    if-eqz v3, :cond_9

    if-nez p0, :cond_9

    or-int/lit8 p1, p1, 0x10

    goto :goto_3

    :cond_9
    and-int/lit8 p1, p1, -0x11

    .line 87
    :cond_a
    :goto_3
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static varargs attachCompactIconPress([Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/dex2c/plus/ui/UiAnimator;->attachPersistentDrawablePress([Landroid/view/View;)V

    return-void
.end method

.method public static varargs attachPersistentDrawablePress([Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 106
    new-instance v4, Lcom/dex2c/plus/ui/UiAnimator$1;

    invoke-direct {v4}, Lcom/dex2c/plus/ui/UiAnimator$1;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static varargs attachPressAnimation([Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    new-instance v3, Lcom/dex2c/plus/ui/UiAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/dex2c/plus/ui/UiAnimator$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static isColorLight(I)Z
    .locals 6

    .line 92
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double v0, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    cmpg-double p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$attachPressAnimation$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 180
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/dex2c/plus/ui/UiAnimator;->OVERSHOOT:Landroid/view/animation/OvershootInterpolator;

    .line 181
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f7851ec    # 0.97f

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x5a

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/dex2c/plus/ui/UiAnimator;->DECELERATE:Landroid/view/animation/DecelerateInterpolator;

    .line 172
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$pulseBadge$1(Landroid/view/View;)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x8c

    .line 217
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/dex2c/plus/ui/UiAnimator;->OVERSHOOT:Landroid/view/animation/OvershootInterpolator;

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static pulseBadge(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f87ae14    # 1.06f

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x6e

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/dex2c/plus/ui/UiAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/UiAnimator$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static applyDialogWidth(Landroid/app/Dialog;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
