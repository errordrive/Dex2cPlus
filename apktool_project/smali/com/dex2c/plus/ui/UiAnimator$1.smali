.class Lcom/dex2c/plus/ui/UiAnimator$1;
.super Ljava/lang/Object;
.source "UiAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/ui/UiAnimator;->attachPersistentDrawablePress([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downTimeMs:J

.field private gestureCancelled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->downTimeMs:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->downTimeMs:J

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v2

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 122
    iget-boolean v0, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    if-eqz v0, :cond_1

    return v2

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 128
    :cond_2
    iput-boolean v2, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    return v2

    :cond_3
    if-ne v0, v2, :cond_5

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->downTimeMs:J

    sub-long/2addr v3, v5

    .line 138
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v5, p2

    const-wide/16 v7, 0x15e

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 139
    iget-boolean p2, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    cmp-long p2, v3, v5

    if-gez p2, :cond_4

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 142
    :cond_4
    iput-boolean v1, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    return v2

    :cond_5
    const/4 p2, 0x3

    if-eq v0, p2, :cond_7

    const/4 p2, 0x4

    if-ne v0, p2, :cond_6

    goto :goto_1

    :cond_6
    return v2

    .line 145
    :cond_7
    :goto_1
    iput-boolean v2, p0, Lcom/dex2c/plus/ui/UiAnimator$1;->gestureCancelled:Z

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v2
.end method
