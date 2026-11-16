.class public Lcom/dex2c/plus/ui/GlowConsoleTextView;
.super Landroid/view/View;
.source "GlowConsoleTextView.java"


# static fields
.field private static final MAX_WRAPPED_LINES:I = 0x9c4


# instance fields
.field private final asciiWidths:[F

.field private autoFollowBottom:Z

.field private baselineOffsetPx:F

.field private final density:F

.field private isDragging:Z

.field private lastProcessedRevisionSeq:J

.field private lastTouchY:F

.field private lastWrappedWidthPx:I

.field private lineHeightPx:F

.field private final maxFlingVelocity:I

.field private maxScrollY:I

.field private measuredWidthPx:I

.field private final minFlingVelocity:I

.field private final padBottom:I

.field private final padLeft:I

.field private final padRight:I

.field private final padTop:I

.field private final rawSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrollYOffset:I

.field private final scroller:Landroid/widget/OverScroller;

.field private final textPaint:Landroid/text/TextPaint;

.field private final touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final wrappedLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p2, Landroid/text/TextPaint;

    const/16 p3, 0x81

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    const/16 p3, 0x80

    .line 39
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->asciiWidths:[F

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rawSnapshot:Ljava/util/List;

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->measuredWidthPx:I

    .line 52
    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastWrappedWidthPx:I

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastProcessedRevisionSeq:J

    .line 55
    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    .line 56
    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    .line 59
    iput-boolean p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    .line 71
    new-instance p3, Landroid/widget/OverScroller;

    invoke-direct {p3, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    .line 72
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 73
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->touchSlop:I

    .line 74
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->minFlingVelocity:I

    .line 75
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxFlingVelocity:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float v1, p3, v0

    float-to-int v1, v1

    .line 78
    iput v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 79
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padRight:I

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 80
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padTop:I

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 81
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padBottom:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41580000    # 13.5f

    .line 83
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 85
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    sget v0, Lcom/dex2c/plus/R$color;->console_text:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->initAsciiWidthTable()V

    .line 91
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 92
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    .line 93
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p1, p1

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->baselineOffsetPx:F

    return-void
.end method

.method private initAsciiWidthTable()V
    .locals 5

    const/16 v0, 0x80

    .line 97
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-char v4, v3

    .line 99
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->asciiWidths:[F

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    .line 102
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    :goto_1
    const/16 v1, 0x20

    if-ge v2, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->asciiWidths:[F

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rebuildWrappedLinesFull(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;I)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 158
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    .line 159
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getLineCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getRevisionSeq()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastProcessedRevisionSeq:J

    .line 165
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    .line 166
    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    return-void

    :cond_1
    if-lez p2, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveEffectiveWidth()I

    move-result p2

    .line 171
    :goto_0
    iput p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastWrappedWidthPx:I

    .line 172
    invoke-virtual {p1}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getRevisionSeq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastProcessedRevisionSeq:J

    const/16 v2, 0x5dc

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 176
    iget-object v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rawSnapshot:Ljava/util/List;

    invoke-virtual {p1, v1, v2, v3}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->copyLinesWindow(IILjava/util/List;)V

    .line 178
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padRight:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x0

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rawSnapshot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rawSnapshot:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x9

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 188
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrapSingleLineByMeasuredWidth(Ljava/lang/String;F)V

    goto :goto_3

    .line 183
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 192
    :cond_6
    iget-object p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x9c4

    if-le p1, p2, :cond_7

    .line 193
    iget-object p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    .line 194
    iget-object p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 197
    :cond_7
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->updateMaxScrollY()V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resolveEffectiveWidth()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getMeasuredWidth()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->measuredWidthPx:I

    :cond_1
    if-gtz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_2
    return v0
.end method

.method private updateMaxScrollY()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padBottom:I

    add-int/2addr v0, v1

    .line 202
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getMeasuredHeight()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    sub-int/2addr v0, v1

    .line 204
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    return-void

    .line 206
    :cond_1
    iput v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    return-void
.end method

.method private wrapSingleLineByMeasuredWidth(Ljava/lang/String;F)V
    .locals 11

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_b

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v9, v2

    const/4 v1, 0x0

    const/4 v8, -0x1

    :goto_1
    const/16 v10, 0x20

    if-ge v9, v3, :cond_4

    .line 221
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->asciiWidths:[F

    aget v5, v5, v4

    goto :goto_2

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v1, p1, v9, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    const/4 v1, 0x1

    :goto_2
    add-float/2addr v0, v5

    cmpl-float v5, v0, p2

    if-lez v5, :cond_1

    goto :goto_3

    :cond_1
    if-eq v4, v10, :cond_2

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v9, 0x1

    move v8, v4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-ne v9, v3, :cond_5

    .line 242
    iget-object p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 247
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    if-lez p1, :cond_7

    add-int v9, v2, p1

    goto :goto_4

    :cond_6
    move-object v1, p1

    move v5, p2

    :cond_7
    :goto_4
    if-gt v9, v2, :cond_8

    add-int/lit8 v8, v2, 0x1

    goto :goto_5

    :cond_8
    if-le v8, v2, :cond_9

    sub-int p1, v9, v8

    const/16 p2, 0x12

    if-gt p1, p2, :cond_9

    goto :goto_5

    :cond_9
    move v8, v9

    .line 259
    :goto_5
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    :goto_6
    if-ge v2, v3, :cond_a

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v10, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    move-object p1, v1

    move p2, v5

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    .line 337
    iget v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    .line 338
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public onBufferUpdated(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveEffectiveWidth()I

    move-result v0

    .line 142
    iget v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastWrappedWidthPx:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getRevisionSeq()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastProcessedRevisionSeq:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->updateMaxScrollY()V

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rebuildWrappedLinesFull(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;I)V

    .line 147
    :goto_1
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    if-eqz p1, :cond_3

    .line 148
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    goto :goto_2

    .line 150
    :cond_3
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    .line 152
    :goto_2
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 284
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 285
    iget-object v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dex2c/plus/ConsoleLogger;->getGapBuffer()Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v2}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getLineCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 288
    invoke-direct {v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveEffectiveWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rebuildWrappedLinesFull(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;I)V

    .line 289
    iget-boolean v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    if-eqz v2, :cond_0

    .line 290
    iget v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    iput v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    .line 294
    :cond_0
    iget-object v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 296
    :cond_1
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-direct {v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveEffectiveWidth()I

    move-result v2

    :goto_0
    move v8, v2

    .line 297
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getHeight()I

    move-result v2

    .line 298
    iget v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    iget v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v9, 0x0

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v10, v2

    .line 299
    iget v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    div-float v2, v10, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    add-int/lit8 v2, v2, 0x3

    .line 300
    iget-object v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_a

    .line 303
    iget-object v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->wrappedLines:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    iget v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padTop:I

    int-to-float v3, v3

    int-to-float v4, v12

    iget v5, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->baselineOffsetPx:F

    add-float v6, v3, v4

    add-float/2addr v5, v6

    const/4 v3, 0x0

    cmpg-float v5, v5, v3

    if-ltz v5, :cond_9

    sub-float v4, v6, v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_9

    .line 306
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v4, 0x9

    .line 308
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 310
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v4, v4, 0x1

    .line 311
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 313
    :goto_2
    iget v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padRight:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 315
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 316
    iget v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    const/high16 v5, 0x41400000    # 12.0f

    iget v7, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->density:F

    mul-float v7, v7, v5

    sub-float/2addr v3, v7

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 317
    iget-object v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v3, v18

    if-gtz v3, :cond_6

    .line 318
    iget v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v3, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 320
    :cond_6
    iget-object v13, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v3

    .line 321
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    int-to-float v5, v5

    iget-object v7, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    move v13, v4

    move v4, v3

    const/4 v3, 0x0

    move/from16 v20, v13

    move-object v13, v2

    move-object v2, v14

    move/from16 v14, v20

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    :goto_3
    move-object v13, v2

    move v14, v4

    .line 324
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 325
    iget v2, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    int-to-float v2, v2

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v13, v2, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 328
    :cond_8
    iget v3, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->padLeft:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 129
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 130
    invoke-static {v0, p1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveSize(II)I

    move-result p1

    .line 131
    invoke-static {v1, p2}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->resolveSize(II)I

    move-result p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->setMeasuredDimension(II)V

    if-lez p1, :cond_0

    .line 133
    iget p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->measuredWidthPx:I

    if-eq p1, p2, :cond_0

    .line 134
    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->measuredWidthPx:I

    .line 135
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dex2c/plus/ConsoleLogger;->getGapBuffer()Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rebuildWrappedLinesFull(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    .line 272
    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->measuredWidthPx:I

    .line 273
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dex2c/plus/ConsoleLogger;->getGapBuffer()Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->rebuildWrappedLinesFull(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;I)V

    .line 274
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    if-eqz p1, :cond_0

    .line 275
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    return-void

    .line 277
    :cond_0
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    iget p2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 345
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 391
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->recycleVelocityTracker()V

    .line 388
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    return v2

    .line 360
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 361
    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastTouchY:F

    sub-float/2addr v0, p1

    .line 362
    iget-boolean v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    if-nez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 363
    iput-boolean v2, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    .line 365
    :cond_3
    iget-boolean v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    if-eqz v3, :cond_5

    .line 366
    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastTouchY:F

    .line 367
    iget p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    float-to-int v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    .line 368
    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lineHeightPx:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v0, v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->autoFollowBottom:Z

    .line 369
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->invalidate()V

    :cond_5
    return v2

    .line 374
    :cond_6
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    if-eqz p1, :cond_7

    .line 375
    iget-object p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxFlingVelocity:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 376
    iget-object p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 377
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->minFlingVelocity:I

    if-le v0, v3, :cond_7

    .line 378
    iget-object v4, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    iget v6, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scrollYOffset:I

    neg-int v8, p1

    const/4 v11, 0x0

    iget v12, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->maxScrollY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 379
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->postInvalidateOnAnimation()V

    .line 382
    :cond_7
    invoke-direct {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->recycleVelocityTracker()V

    .line 383
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    return v2

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 355
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->lastTouchY:F

    .line 356
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/GlowConsoleTextView;->isDragging:Z

    return v2
.end method

.method public setGlowActive(Z)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->invalidate()V

    return-void
.end method
