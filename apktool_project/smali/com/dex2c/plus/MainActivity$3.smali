.class Lcom/dex2c/plus/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/MainActivity;->configureOverflowDropDownListView(Landroidx/appcompat/widget/PopupMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downPos:I

.field private downTimeMs:J

.field private downX:F

.field private downY:F

.field private gestureCancelled:Z

.field private isLongPress:Z

.field private final longPressRunnable:Ljava/lang/Runnable;

.field private pressedChild:Landroid/view/View;

.field final synthetic this$0:Lcom/dex2c/plus/MainActivity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$longPressThresholdMs:J

.field final synthetic val$popupMenu:Landroidx/appcompat/widget/PopupMenu;

.field final synthetic val$touchSlop:I


# direct methods
.method public static synthetic $r8$lambda$oWMoHTm34n1Kdw6Y-hnfIuSuuvg(Lcom/dex2c/plus/MainActivity$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity$3;->lambda$$0()V

    return-void
.end method

.method constructor <init>(Lcom/dex2c/plus/MainActivity;Landroid/widget/ListView;JILandroidx/appcompat/widget/PopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->this$0:Lcom/dex2c/plus/MainActivity;

    iput-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->val$listView:Landroid/widget/ListView;

    iput-wide p3, p0, Lcom/dex2c/plus/MainActivity$3;->val$longPressThresholdMs:J

    iput p5, p0, Lcom/dex2c/plus/MainActivity$3;->val$touchSlop:I

    iput-object p6, p0, Lcom/dex2c/plus/MainActivity$3;->val$popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    const/4 p1, -0x1

    .line 314
    iput p1, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lcom/dex2c/plus/MainActivity$3;->downX:F

    .line 316
    iput p1, p0, Lcom/dex2c/plus/MainActivity$3;->downY:F

    const-wide/16 p1, 0x0

    .line 317
    iput-wide p1, p0, Lcom/dex2c/plus/MainActivity$3;->downTimeMs:J

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    .line 319
    iput-boolean p1, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    .line 321
    new-instance p1, Lcom/dex2c/plus/MainActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/dex2c/plus/MainActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/MainActivity$3;)V

    iput-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$0()V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    :cond_0
    return-void
.end method

.method private releasePressedChild()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity$3;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-static {v0}, Lcom/dex2c/plus/MainActivity;->-$$Nest$fgetmainHandler(Lcom/dex2c/plus/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dex2c/plus/MainActivity$3;->longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity$3;->releasePressedChild()V

    .line 343
    iput v0, p0, Lcom/dex2c/plus/MainActivity$3;->downX:F

    .line 344
    iput v1, p0, Lcom/dex2c/plus/MainActivity$3;->downY:F

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dex2c/plus/MainActivity$3;->downTimeMs:J

    .line 346
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    .line 347
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    .line 348
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->val$listView:Landroid/widget/ListView;

    float-to-int p2, v0

    float-to-int v3, v1

    invoke-virtual {p1, p2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    if-eq p1, v2, :cond_0

    .line 351
    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 353
    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-static {p2, p1}, Lcom/dex2c/plus/MainActivity;->-$$Nest$mprepareDropdownChildView(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V

    .line 354
    iput-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 356
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 358
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    .line 356
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 361
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 362
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-static {p1}, Lcom/dex2c/plus/MainActivity;->-$$Nest$fgetmainHandler(Lcom/dex2c/plus/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->longPressRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/dex2c/plus/MainActivity$3;->val$longPressThresholdMs:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v4

    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    .line 367
    iget-boolean p1, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 370
    :cond_2
    iget p1, p0, Lcom/dex2c/plus/MainActivity$3;->downX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 371
    iget v2, p0, Lcom/dex2c/plus/MainActivity$3;->downY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 372
    iget-object v5, p0, Lcom/dex2c/plus/MainActivity$3;->val$listView:Landroid/widget/ListView;

    float-to-int v6, v0

    float-to-int v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v5

    .line 373
    iget-object v6, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 374
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_3

    iget-object v6, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 375
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 376
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_3

    const/4 v3, 0x1

    .line 378
    :cond_3
    iget v6, p0, Lcom/dex2c/plus/MainActivity$3;->val$touchSlop:I

    int-to-float v7, v6

    cmpl-float p1, p1, v7

    if-gtz p1, :cond_6

    int-to-float p1, v6

    cmpl-float p1, v2, p1

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    if-ne v5, p1, :cond_6

    if-nez v3, :cond_4

    goto :goto_0

    .line 384
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/dex2c/plus/MainActivity$3;->downTimeMs:J

    sub-long/2addr p1, v2

    iget-wide v2, p0, Lcom/dex2c/plus/MainActivity$3;->val$longPressThresholdMs:J

    cmp-long v5, p1, v2

    if-ltz v5, :cond_5

    .line 385
    iput-boolean v4, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    .line 388
    :cond_5
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->pressedChild:Landroid/view/View;

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    .line 388
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return v4

    .line 379
    :cond_6
    :goto_0
    iput-boolean v4, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    .line 380
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity$3;->releasePressedChild()V

    :cond_7
    :goto_1
    return v4

    :cond_8
    if-ne p1, v4, :cond_e

    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/dex2c/plus/MainActivity$3;->downTimeMs:J

    sub-long/2addr p1, v0

    .line 396
    iget-boolean v0, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/dex2c/plus/MainActivity$3;->val$longPressThresholdMs:J

    cmp-long v5, p1, v0

    if-ltz v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 p1, 0x1

    .line 397
    :goto_3
    iget p2, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    .line 399
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity$3;->releasePressedChild()V

    .line 400
    iput v2, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    .line 402
    iget-boolean v0, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    if-ne p2, v2, :cond_b

    goto :goto_4

    .line 408
    :cond_b
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$3;->val$popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-ltz p2, :cond_c

    .line 409
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 410
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->val$popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    if-eqz p1, :cond_c

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 413
    iget-object p2, p0, Lcom/dex2c/plus/MainActivity$3;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-static {p2, p1}, Lcom/dex2c/plus/MainActivity;->-$$Nest$monOverflowItemSelected(Lcom/dex2c/plus/MainActivity;Landroid/view/MenuItem;)Z

    :cond_c
    return v4

    .line 403
    :cond_d
    :goto_4
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    .line 404
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    return v4

    :cond_e
    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    const/4 p2, 0x4

    if-ne p1, p2, :cond_f

    goto :goto_5

    :cond_f
    return v4

    .line 418
    :cond_10
    :goto_5
    iput-boolean v4, p0, Lcom/dex2c/plus/MainActivity$3;->gestureCancelled:Z

    .line 419
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity$3;->isLongPress:Z

    .line 420
    iput v2, p0, Lcom/dex2c/plus/MainActivity$3;->downPos:I

    .line 421
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity$3;->releasePressedChild()V

    return v4
.end method
