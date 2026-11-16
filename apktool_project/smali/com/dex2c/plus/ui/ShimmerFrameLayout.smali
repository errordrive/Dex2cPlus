.class public Lcom/dex2c/plus/ui/ShimmerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerFrameLayout.java"


# instance fields
.field private autoStart:Z

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private shimmerActive:Z

.field private shimmerAnimator:Landroid/animation/ValueAnimator;

.field private final shimmerPaint:Landroid/graphics/Paint;

.field private translateFraction:F

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public static synthetic $r8$lambda$kDvZeZ4K5Epw5wu6JmuS1tED-xI(Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->lambda$startShimmer$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 p1, -0x40800000    # -1.0f

    .line 27
    iput p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->translateFraction:F

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewWidth:I

    .line 29
    iput p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewHeight:I

    .line 30
    iput-boolean p2, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerActive:Z

    .line 31
    iput-boolean p2, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->autoStart:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$startShimmer$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->translateFraction:F

    .line 93
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setupShimmerShader(II)V
    .locals 10

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x1affffff

    goto :goto_0

    :cond_1
    const v1, 0x26345b9e

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0xdffffff

    goto :goto_1

    :cond_2
    const v0, 0x12345b9e

    .line 53
    :goto_1
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float p1, p1

    const v3, 0x3f266666    # 0.65f

    mul-float v5, p1, v3

    int-to-float p1, p2

    const p2, 0x3eb33333    # 0.35f

    mul-float v6, p1, p2

    const p1, 0xffffff

    filled-new-array {p1, v0, v1, v0, p1}, [I

    move-result-object v7

    const/4 p1, 0x5

    new-array v8, p1, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->linearGradient:Landroid/graphics/LinearGradient;

    .line 59
    iget-object p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ea3d70a    # 0.32f
        0x3f000000    # 0.5f
        0x3f2e147b    # 0.68f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->linearGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->translateFraction:F

    int-to-float v0, v0

    const v2, 0x3fcccccd    # 1.6f

    mul-float v0, v0, v2

    mul-float v1, v1, v0

    .line 76
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 77
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shaderMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 78
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->linearGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 79
    iget v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    iget-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->autoStart:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->startShimmer()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 65
    iput p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewWidth:I

    .line 66
    iput p2, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->viewHeight:I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setupShimmerShader(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 129
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->autoStart:Z

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->startShimmer()V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public startShimmer()V
    .locals 4

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->autoStart:Z

    .line 84
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerActive:Z

    .line 85
    iget-object v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6d6

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    iget-object v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 89
    iget-object v1, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 90
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/dex2c/plus/ui/ShimmerFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/ui/ShimmerFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public stopShimmer()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->autoStart:Z

    .line 100
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerActive:Z

    .line 101
    iget-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->shimmerAnimator:Landroid/animation/ValueAnimator;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method
