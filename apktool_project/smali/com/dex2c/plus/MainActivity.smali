.class public Lcom/dex2c/plus/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final MIN_SHIMMER_DISPLAY_MS:J = 0x1a4L

.field private static final TREE_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

.field private classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

.field private fileManagerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

.field private final filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final filteredClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation
.end field

.field private isApkLoading:Z

.field private isDexTreeMode:Z

.field private lastRenderedApkPath:Ljava/lang/String;

.field private lastRenderedClassCount:I

.field private final mainHandler:Landroid/os/Handler;

.field private ndkPromptDialog:Landroid/app/Dialog;

.field private overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private shimmerStartMs:J

.field private storagePermissionDialog:Landroid/app/Dialog;

.field private telegramProfileDialog:Lcom/dex2c/plus/ui/TelegramProfileDialog;

.field private updatingSelectAllCheckBox:Z


# direct methods
.method public static synthetic $r8$lambda$-yjxOdoCQXmPRC5dhKnV_IL76p4(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$showNdkRequiredDialog$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$39iR_ZUt6VFmwnAU9PIoqFE58Ik(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$showStoragePermissionDialogIfNeeded$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4toVptUCNVvdnGKa6Uiy-kT-FgU(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$showNdkRequiredDialog$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KLWpxJdQ5XHS4WlykDZ-InKhcI(Lcom/dex2c/plus/MainActivity;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$configureOverflowDropDownListView$9(Landroid/widget/ListView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANiTVtuksMD87oIzE2m3f_W-YZs(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BFPzOm6GZksHGvQaK93Pq8eYgkk(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ijo24rej4v1SYZ2lfAK7qMuWwTE(Lcom/dex2c/plus/MainActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/MainActivity;->lambda$onCreate$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lk36XsnzfEDK6Sk55oNkK6zWY1I(Lcom/dex2c/plus/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->lambda$onApkFileSelected$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sh_61LabghQIXl3HKJz73oHr7eg(Lcom/dex2c/plus/MainActivity;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/MainActivity;->lambda$onApkFileSelected$13(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TM199KzoIjxD9j3jHT_cjUnmeDc(Lcom/dex2c/plus/MainActivity;ILjava/util/List;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dex2c/plus/MainActivity;->lambda$applyFilter$15(ILjava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8kCuMV0zExZMyeOK2vMLq_nx-A(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XT9IZwckggcHGl6avHVdwBYeNtE(Lcom/dex2c/plus/MainActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/MainActivity;->lambda$onCreate$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsPWK1CI2ig-o1ic00R4k3l7XlI(Lcom/dex2c/plus/MainActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->onApkFileSelected(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZH0lSsdrsGhSYpKdoqwM7EaSApA(Lcom/dex2c/plus/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->updateSelectedCount()V

    return-void
.end method

.method public static synthetic $r8$lambda$dNPlBBdK52f912uCvV-UpM_B5ko(Lcom/dex2c/plus/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->lambda$onApkFileSelected$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$u2klL7zAC2RVYcbCWKyJ7ic-9BM(Lcom/dex2c/plus/MainActivity;ILcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/MainActivity;->lambda$applyFilter$14(ILcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V

    return-void
.end method

.method public static synthetic $r8$lambda$upfOEfhw3G7e_cyrZXMrSUCai3Y(Lcom/dex2c/plus/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->onOverflowItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zZFcI3JIxe6j67qGianTNfEMjBg(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->showOverflowDropDownMenu(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/dex2c/plus/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyFilter(Lcom/dex2c/plus/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->applyFilter(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOverflowItemSelected(Lcom/dex2c/plus/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->onOverflowItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprepareDropdownChildView(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->prepareDropdownChildView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/MainActivity;->TREE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedApkPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedClassCount:I

    .line 79
    iput-boolean v1, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 80
    iput-boolean v1, p0, Lcom/dex2c/plus/MainActivity;->isDexTreeMode:Z

    .line 579
    iput-boolean v1, p0, Lcom/dex2c/plus/MainActivity;->isApkLoading:Z

    const-wide/16 v0, 0x0

    .line 580
    iput-wide v0, p0, Lcom/dex2c/plus/MainActivity;->shimmerStartMs:J

    return-void
.end method

.method private applyFilter(Ljava/lang/String;)V
    .locals 7

    .line 691
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    const-string p1, ""

    :goto_0
    move-object v5, p1

    .line 693
    iget-boolean v6, p0, Lcom/dex2c/plus/MainActivity;->isDexTreeMode:Z

    .line 694
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object p1

    iget-object p1, p1, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 696
    sget-object p1, Lcom/dex2c/plus/MainActivity;->TREE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda5;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dex2c/plus/MainActivity;ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkStorageAndStartupRequirements()V
    .locals 1

    .line 522
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    return-void

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->showStoragePermissionDialogIfNeeded()V

    return-void
.end method

.method private configureOverflowDropDownListView(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 12

    .line 252
    :try_start_0
    const-class v0, Landroidx/appcompat/widget/PopupMenu;

    const-string v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPopup"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 259
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 262
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getListView"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 264
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 267
    :cond_2
    move-object v7, v0

    check-cast v7, Landroid/widget/ListView;

    const/4 v0, 0x0

    .line 269
    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 270
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 271
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 273
    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 274
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v2, 0x2

    .line 275
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 276
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 277
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 278
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 279
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 280
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 281
    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHoverListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 285
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 286
    invoke-virtual {v2, v7, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :catchall_0
    :try_start_2
    new-instance v1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 290
    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 291
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dex2c/plus/MainActivity;->prepareDropdownChildView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_3
    new-instance v0, Lcom/dex2c/plus/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$2;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 302
    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, v7}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/dex2c/plus/MainActivity;Landroid/widget/ListView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 309
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    .line 310
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x15e

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 312
    new-instance v5, Lcom/dex2c/plus/MainActivity$3;

    move-object v6, p0

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/dex2c/plus/MainActivity$3;-><init>(Lcom/dex2c/plus/MainActivity;Landroid/widget/ListView;JILandroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private enablePopupMenuIconsAndTheme(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 8

    .line 458
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 460
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setOptionalIconsVisible"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 461
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 462
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :catch_0
    :try_start_1
    const-class v3, Landroidx/appcompat/widget/PopupMenu;

    const-string v4, "mPopup"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 467
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 468
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setForceShowIcon"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 471
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 472
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :catch_1
    :cond_0
    sget p1, Lcom/dex2c/plus/R$color;->md_theme_primary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 477
    sget v2, Lcom/dex2c/plus/R$color;->md_theme_onSurface:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    .line 479
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 480
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 481
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 484
    invoke-static {v5, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 485
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 487
    :cond_1
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 489
    new-instance v6, Landroid/text/SpannableString;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 490
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v6, v5, v1, v7, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 491
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$applyFilter$14(ILcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 707
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    iget-object v0, p2, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->matchedItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 708
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    invoke-virtual {p1, p2}, Lcom/dex2c/plus/ui/ClassAdapter;->applyPreparedTree(Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V

    const/4 p1, 0x1

    .line 709
    iput-boolean p1, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 710
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-boolean p2, p2, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->allChecked:Z

    invoke-virtual {p1, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 711
    iput-boolean p1, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 712
    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->setTreeShimmerVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$applyFilter$15(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 5

    .line 697
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/dex2c/plus/ui/ClassAdapter;->prepareTreeOffThread(Ljava/util/List;Ljava/lang/String;Z)Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;

    move-result-object p2

    .line 699
    iget-object p3, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-eq p1, p3, :cond_1

    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/dex2c/plus/MainActivity;->shimmerStartMs:J

    sub-long/2addr p3, v0

    .line 701
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x1a4

    sub-long/2addr v3, p3

    .line 702
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 704
    :cond_2
    iget-object p3, p0, Lcom/dex2c/plus/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance p4, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p1, p2}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dex2c/plus/MainActivity;ILcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V

    invoke-virtual {p3, p4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$configureOverflowDropDownListView$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$configureOverflowDropDownListView$9(Landroid/widget/ListView;)V
    .locals 3

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 304
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dex2c/plus/MainActivity;->prepareDropdownChildView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onApkFileSelected$11()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lcom/dex2c/plus/MainActivity;->isApkLoading:Z

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedApkPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 632
    iput v0, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedClassCount:I

    .line 633
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->restoreApkHeaderAndClasses()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onApkFileSelected$12()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lcom/dex2c/plus/MainActivity;->isApkLoading:Z

    .line 639
    invoke-direct {p0, v0}, Lcom/dex2c/plus/MainActivity;->setTreeShimmerVisible(Z)V

    .line 640
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 641
    const-string v1, "Invalid APK"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onApkFileSelected$13(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 616
    :try_start_0
    invoke-static {p1, p2}, Lcom/dex2c/plus/engine/ApkDexManager;->loadApk(Landroid/content/Context;Ljava/io/File;)Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;

    move-result-object p1

    .line 617
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 618
    iput-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkSourceFile:Ljava/io/File;

    .line 619
    iget-object p2, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->displayName:Ljava/lang/String;

    iput-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkName:Ljava/lang/String;

    .line 620
    iget-object p2, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->appLabel:Ljava/lang/String;

    iput-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->apkDisplayLabel:Ljava/lang/String;

    .line 621
    iget-object p2, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->versionName:Ljava/lang/String;

    iput-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->apkVersionName:Ljava/lang/String;

    .line 622
    iget-wide v1, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->versionCode:J

    iput-wide v1, v0, Lcom/dex2c/plus/model/ProjectState;->apkVersionCode:J

    .line 623
    iget p2, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->dexCount:I

    iput p2, v0, Lcom/dex2c/plus/model/ProjectState;->dexCount:I

    .line 624
    iget-object p2, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->cachedApk:Ljava/io/File;

    iput-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    .line 625
    iget-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 626
    iget-object p2, v0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    iget-object p1, p1, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->classes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 628
    new-instance p1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 636
    :catch_0
    new-instance p1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->openInBuiltFileManager()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->showTelegramProfileDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 134
    iput-boolean p2, p0, Lcom/dex2c/plus/MainActivity;->isDexTreeMode:Z

    .line 135
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 136
    :goto_0
    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->applyFilter(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 140
    iget-boolean p1, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    if-eqz p1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dex2c/plus/model/DexClassItem;

    iput-boolean p2, v1, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ClassAdapter;->refreshAllSelectionCounts()V

    .line 145
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ClassAdapter;->notifyDataSetChanged()V

    .line 146
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->updateSelectedCount()V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->launchBuildActivity()V

    return-void
.end method

.method private synthetic lambda$showNdkRequiredDialog$6(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 210
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dex2c/plus/ui/BuildActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v0, "extra_online_ndk_install"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showNdkRequiredDialog$7(Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showStoragePermissionDialogIfNeeded$10(Landroid/view/View;)V
    .locals 0

    .line 558
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->requestStoragePermission(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Dex2c-TreeWorker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p0, 0x1

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private launchBuildActivity()V
    .locals 3

    .line 155
    invoke-static {p0}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object v0

    .line 156
    iget-boolean v0, v0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->showNdkRequiredDialog()V

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 161
    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getSelectedClasses()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string v0, "Select classes"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->showBuildConfirmDialog()V

    return-void

    .line 162
    :cond_3
    :goto_0
    const-string v0, "Select APK"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onApkFileSelected(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 606
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger;->clear()V

    .line 609
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/dex2c/plus/MainActivity;->isApkLoading:Z

    .line 611
    invoke-direct {p0, v0}, Lcom/dex2c/plus/MainActivity;->setTreeShimmerVisible(Z)V

    .line 613
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dex2c/plus/MainActivity;Landroid/content/Context;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 644
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onOverflowItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 432
    sget v0, Lcom/dex2c/plus/R$id;->action_credits:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 433
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dex2c/plus/ui/AcknowledgementActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 435
    :cond_0
    sget v0, Lcom/dex2c/plus/R$id;->action_github:I

    if-ne p1, v0, :cond_1

    .line 436
    invoke-static {p0}, Lcom/dex2c/plus/MainActivity;->openGithubRepoNative(Landroid/content/Context;)V

    return v1

    .line 438
    :cond_1
    sget v0, Lcom/dex2c/plus/R$id;->action_settings:I

    if-ne p1, v0, :cond_2

    .line 439
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dex2c/plus/ui/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 441
    :cond_2
    sget v0, Lcom/dex2c/plus/R$id;->action_exit:I

    if-ne p1, v0, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->finishAffinity()V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static openGithubRepoNative(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://github.com/iAmINCoder/Dex2cPlus"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private openInBuiltFileManager()V
    .locals 3

    .line 564
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->showStoragePermissionDialogIfNeeded()V

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->fileManagerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/FileManagerDialog;->dismiss()V

    .line 572
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkSourceFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 573
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkSourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 575
    :goto_0
    new-instance v1, Lcom/dex2c/plus/ui/FileManagerDialog;

    new-instance v2, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/dex2c/plus/ui/FileManagerDialog;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V

    iput-object v1, p0, Lcom/dex2c/plus/MainActivity;->fileManagerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    .line 576
    invoke-virtual {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->show()V

    return-void
.end method

.method private prepareDropdownChildView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/dex2c/plus/R$id;->action_settings:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget v0, Lcom/dex2c/plus/R$drawable;->bg_dropdown_item_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    sget v0, Lcom/dex2c/plus/R$id;->action_settings:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private restoreApkHeaderAndClasses()V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    iget-boolean v0, p0, Lcom/dex2c/plus/MainActivity;->isApkLoading:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 653
    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    .line 654
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 671
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v1, v3}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    invoke-direct {p0, v3}, Lcom/dex2c/plus/MainActivity;->setTreeShimmerVisible(Z)V

    .line 676
    :cond_2
    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 677
    iget-object v0, v0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 678
    iget-object v3, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedApkPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedClassCount:I

    if-eq v0, v3, :cond_5

    .line 682
    :cond_3
    iput-object v1, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedApkPath:Ljava/lang/String;

    .line 683
    iput v0, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedClassCount:I

    .line 684
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    :cond_4
    invoke-direct {p0, v2}, Lcom/dex2c/plus/MainActivity;->applyFilter(Ljava/lang/String;)V

    .line 687
    :cond_5
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->updateSelectedCount()V

    return-void

    .line 657
    :cond_6
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 658
    invoke-direct {p0, v3}, Lcom/dex2c/plus/MainActivity;->setTreeShimmerVisible(Z)V

    .line 659
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 660
    iput-object v2, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedApkPath:Ljava/lang/String;

    .line 661
    iput v3, p0, Lcom/dex2c/plus/MainActivity;->lastRenderedClassCount:I

    .line 662
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/dex2c/plus/ui/ClassAdapter;->prepareTreeOffThread(Ljava/util/List;Ljava/lang/String;Z)Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dex2c/plus/ui/ClassAdapter;->applyPreparedTree(Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 665
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 666
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 667
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->updateSelectedCount()V

    return-void
.end method

.method private setTreeShimmerVisible(Z)V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dex2c/plus/MainActivity;->shimmerStartMs:J

    .line 587
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 588
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1, v1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 589
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContent:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerFilterLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->startShimmer()V

    .line 592
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 593
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1, v1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 594
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->startShimmer()V

    return-void

    .line 596
    :cond_1
    iget-object p1, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->stopShimmer()V

    .line 597
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerFilterLoading:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->stopShimmer()V

    .line 600
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1, v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->setVisibility(I)V

    .line 601
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private showNdkRequiredDialog()V
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 181
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v3, -0x2

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 192
    :cond_2
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->ivDialogIcon:Landroid/widget/ImageView;

    sget v2, Lcom/dex2c/plus/R$drawable;->ic_rocket_protect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->tvDialogTitle:Landroid/widget/TextView;

    const-string v2, "Android NDK Required"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {p0}, Lcom/dex2c/plus/engine/NdkCompiler;->getPersistentNdkArchive(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_default_ndk_msg

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_default_ndk_msg

    iget-object v2, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->tvDialogMessage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found offline Android NDK backup ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Install it now without downloading from internet?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    const-string v3, "LOCAL INSTALL"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_btn_color

    :cond_default_ndk_msg
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->tvDialogMessage:Landroid/widget/TextView;

    const-string v2, "Android NDK toolchain is required to compile translated C/C++ code into native (.so) libraries. Please install it first to enable native build support."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    const-string v3, "ONLINE INSTALL"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_btn_color

    .line 201
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    sget v3, Lcom/dex2c/plus/R$color;->md_theme_primary:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_primary:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    new-instance v2, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    new-instance v1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showOverflowDropDownMenu(Landroid/view/View;)V
    .locals 7

    .line 220
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/dex2c/plus/R$style;->OfficialOverflowPopupThemeOverlay:I

    invoke-direct {v2, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 226
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    const/4 v5, 0x0

    sget v6, Lcom/dex2c/plus/R$style;->OfficialOverflowPopupMenu:I

    const v4, 0x800005

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 227
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/dex2c/plus/R$menu;->menu_main_overflow:I

    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->enablePopupMenuIconsAndTheme(Landroidx/appcompat/widget/PopupMenu;)V

    .line 230
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 232
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0, p1}, Lcom/dex2c/plus/MainActivity;->configureOverflowDropDownListView(Landroidx/appcompat/widget/PopupMenu;)V

    return-void
.end method

.method private showStoragePermissionDialogIfNeeded()V
    .locals 4

    .line 533
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 537
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 539
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 540
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 542
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 545
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 547
    iget-object v2, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v3, -0x2

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 553
    :cond_2
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->ivDialogIcon:Landroid/widget/ImageView;

    sget v2, Lcom/dex2c/plus/R$drawable;->ic_folder_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->tvDialogTitle:Landroid/widget/TextView;

    const-string v2, "Storage Permission Required"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->tvDialogMessage:Landroid/widget/TextView;

    const-string v2, "Allow storage access so Dex2c can browse APK files and save protected outputs to /storage/emulated/0/Dex2cPlus."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogSecondary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    const-string v2, "ALLOW"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogPermissionPromptBinding;->btnDialogPrimary:Landroid/widget/TextView;

    new-instance v1, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showTelegramProfileDialog()V
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->telegramProfileDialog:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->telegramProfileDialog:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dismiss()V

    .line 453
    :cond_1
    new-instance v0, Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dex2c/plus/MainActivity;->telegramProfileDialog:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    .line 454
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private syncSelectAllCheckBoxState()V
    .locals 6

    .line 718
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 720
    iget-object v2, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 721
    iget-object v5, p0, Lcom/dex2c/plus/MainActivity;->filteredClasses:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dex2c/plus/model/DexClassItem;

    iget-boolean v5, v5, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-nez v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 726
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    .line 727
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 728
    iput-boolean v3, p0, Lcom/dex2c/plus/MainActivity;->updatingSelectAllCheckBox:Z

    return-void
.end method

.method private updateSelectedCount()V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getSelectedClassCount()I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->tvSelectedCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->tvSelectedCount:Landroid/widget/TextView;

    if-lez v0, :cond_1

    .line 736
    sget v0, Lcom/dex2c/plus/R$color;->studio_emerald:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/dex2c/plus/R$color;->md_theme_primary:I

    .line 735
    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->syncSelectAllCheckBoxState()V

    return-void
.end method


# virtual methods
.method public getNativeAbi()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 93
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->applyThemeMode(I)V

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->loadPrefs(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/dex2c/plus/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    .line 100
    invoke-virtual {p1}, Lcom/dex2c/plus/databinding/ActivityMainBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/MainActivity;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->headerContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rootContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/dex2c/plus/R$color;->md_theme_headerSurface:I

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_surfaceContainer:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/dex2c/plus/ui/UiAnimator;->applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x3

    .line 109
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderApkPicker:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderTelegram:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnMoreMenu:Landroid/widget/ImageButton;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/dex2c/plus/ui/UiAnimator;->attachPersistentDrawablePress([Landroid/view/View;)V

    .line 114
    new-array p1, v2, [Landroid/view/View;

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnBuild:Landroid/widget/ImageButton;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/dex2c/plus/ui/UiAnimator;->attachPressAnimation([Landroid/view/View;)V

    .line 116
    new-instance p1, Lcom/dex2c/plus/ui/ClassAdapter;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-direct {p1, v0}, Lcom/dex2c/plus/ui/ClassAdapter;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    .line 117
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 119
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->classAdapter:Lcom/dex2c/plus/ui/ClassAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderApkPicker:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderTelegram:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnMoreMenu:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    new-instance v0, Lcom/dex2c/plus/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$1;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->swTreeMode:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnBuild:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->restoreApkHeaderAndClasses()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->filterSeqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 743
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->overflowPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->storagePermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->ndkPromptDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->fileManagerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-eqz v0, :cond_3

    .line 754
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/FileManagerDialog;->dismiss()V

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->telegramProfileDialog:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    if-eqz v0, :cond_4

    .line 757
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dismiss()V

    .line 759
    :cond_4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 515
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->checkStorageAndStartupRequirements()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 498
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 499
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dex2c/plus/model/ProjectState;->loadPrefs(Landroid/content/Context;)V

    .line 500
    iget-object v0, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->headerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dex2c/plus/MainActivity;->binding:Lcom/dex2c/plus/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rootContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_headerSurface:I

    sget v3, Lcom/dex2c/plus/R$color;->md_theme_surfaceContainer:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/dex2c/plus/ui/UiAnimator;->applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V

    .line 508
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->restoreApkHeaderAndClasses()V

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/dex2c/plus/MainActivity;->checkStorageAndStartupRequirements()V

    return-void
.end method

.method private showBuildConfirmDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isFinishing()Z
    move-result v0
    if-nez v0, :cond_out

    invoke-virtual {p0}, Lcom/dex2c/plus/MainActivity;->isDestroyed()Z
    move-result v0
    if-eqz v0, :cond_show

    :cond_out
    return-void

    :cond_show
    new-instance v0, Landroid/app/Dialog;
    sget v1, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I
    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v1
    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
    move-result-object v1

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->getRoot()Landroid/widget/LinearLayout;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/dex2c/plus/ui/UiAnimator;->applyDialogWidth(Landroid/app/Dialog;)V

    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->tvCustomInputTitle:Landroid/widget/TextView;
    const-string v3, "Remote Kill Switch URL"
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;
    const-string v3, "Pastebin/JSON raw URL (or leave empty)"
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;
    move-result-object v2
    if-eqz v2, :cond_no_init_url

    invoke-virtual {v2}, Lcom/dex2c/plus/model/ProjectState;->getRemoteControlUrl()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :cond_no_init_url

    iget-object v4, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    move-result v3
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_no_init_url
    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputOk:Landroid/widget/TextView;
    const-string v4, "START BUILD"
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputCancel:Landroid/widget/TextView;
    new-instance v4, Lcom/dex2c/plus/ui/BuildPromptCancelListener;
    invoke-direct {v4, v0}, Lcom/dex2c/plus/ui/BuildPromptCancelListener;-><init>(Landroid/app/Dialog;)V
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputOk:Landroid/widget/TextView;
    new-instance v4, Lcom/dex2c/plus/ui/BuildPromptOkListener;
    invoke-direct {v4, p0, v0, v1, v2}, Lcom/dex2c/plus/ui/BuildPromptOkListener;-><init>(Lcom/dex2c/plus/MainActivity;Landroid/app/Dialog;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;)V
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    return-void
.end method
