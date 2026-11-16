.class public Lcom/dex2c/plus/ui/FileManagerDialog;
.super Ljava/lang/Object;
.source "FileManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;,
        Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;
    }
.end annotation


# static fields
.field private static final ICON_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final MODE_APK:I = 0x0

.field public static final MODE_NDK_ARCHIVE:I = 0x1

.field private static final NO_ICON_PATHS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adapter:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

.field private final binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

.field private final context:Landroid/content/Context;

.field private currentDir:Ljava/io/File;

.field private final dateFmt:Ljava/text/SimpleDateFormat;

.field private final dialog:Landroid/app/Dialog;

.field private final listener:Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;

.field private final mainHandler:Landroid/os/Handler;

.field private final pickerMode:I

.field private final rootStorageDir:Ljava/io/File;

.field private selectedFileCandidate:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$-fV02QMQ8pdzLqXGthE_Kf3ISAs(Lcom/dex2c/plus/ui/FileManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KkWblvq9oqFUOgKZEZjgQcKdlcw(Lcom/dex2c/plus/ui/FileManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-Cbl6YcvZNz9zC9-vHclUEcP3k(Lcom/dex2c/plus/ui/FileManagerDialog;Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog;->lambda$new$3(Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdateFmt(Lcom/dex2c/plus/ui/FileManagerDialog;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dateFmt:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/dex2c/plus/ui/FileManagerDialog;)Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->listener:Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpickerMode(Lcom/dex2c/plus/ui/FileManagerDialog;)I
    .locals 0

    iget p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->pickerMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadDirectory(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->loadDirectory(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadOriginalApkIcon(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->loadOriginalApkIcon(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSelectButtonState(Lcom/dex2c/plus/ui/FileManagerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/ui/FileManagerDialog;->updateSelectButtonState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetICON_CACHE()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->ICON_CACHE:Landroid/util/LruCache;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetICON_EXECUTOR()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetNO_ICON_PATHS()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->NO_ICON_PATHS:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->ICON_CACHE:Landroid/util/LruCache;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->NO_ICON_PATHS:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/ui/FileManagerDialog;->ICON_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ILcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy, hh:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dateFmt:Ljava/text/SimpleDateFormat;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->mainHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->context:Landroid/content/Context;

    .line 76
    iput-object p4, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->listener:Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;

    .line 77
    iput p3, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->pickerMode:I

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->rootStorageDir:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 80
    :goto_0
    iput-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->currentDir:Ljava/io/File;

    .line 82
    new-instance p2, Landroid/app/Dialog;

    sget v0, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    .line 85
    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 89
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 90
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    if-ne p3, v0, :cond_2

    .line 97
    iget-object p2, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmTitle:Landroid/widget/TextView;

    const-string p3, "Select NDK Package (.zip)"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p2, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmEmpty:Landroid/widget/TextView;

    const-string p3, "No folders or NDK (.zip) files found"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object p2, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmTitle:Landroid/widget/TextView;

    const-string p3, "Select APK"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p2, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmEmpty:Landroid/widget/TextView;

    const-string p3, "No folders or APK files found"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    new-instance p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog;Lcom/dex2c/plus/ui/FileManagerDialog-IA;)V

    iput-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->adapter:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    .line 105
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->rvFiles:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    iget-object p1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->rvFiles:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 107
    iget-object p1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->rvFiles:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmClose:Landroid/widget/TextView;

    new-instance p2, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmUp:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmSelect:Landroid/widget/TextView;

    new-instance p2, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p4}, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog;Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->currentDir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->loadDirectory(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dex2c/plus/ui/FileManagerDialog;-><init>(Landroid/content/Context;Ljava/io/File;ILcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V

    return-void
.end method

.method private isMatchingTargetFile(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 134
    iget v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->pickerMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 135
    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".tar.xz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".tar.gz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".tgz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2

    .line 137
    :cond_3
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic lambda$loadDirectory$4(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 183
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/dex2c/plus/ui/FileManagerDialog;->navigateUp()V

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 114
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    invoke-interface {p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;->onApkSelected(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Dex2c-ApkIconLoader"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p0, 0x1

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private loadDirectory(Ljava/io/File;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->rootStorageDir:Ljava/io/File;

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->currentDir:Ljava/io/File;

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    .line 162
    invoke-direct {p0}, Lcom/dex2c/plus/ui/FileManagerDialog;->updateSelectButtonState()V

    .line 163
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmCurrentPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->rootStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmUp:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 173
    array-length v2, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    aget-object v5, p1, v4

    .line 174
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/dex2c/plus/ui/FileManagerDialog;->isMatchingTargetFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 175
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 178
    :cond_6
    new-instance p1, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/dex2c/plus/ui/FileManagerDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    :cond_7
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->adapter:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    invoke-virtual {p1, v0}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->setFiles(Ljava/util/List;)V

    .line 188
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->tvFmEmpty:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->rvFiles:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    :cond_9
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private loadOriginalApkIcon(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 313
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private navigateUp()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->currentDir:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-direct {p0, v0}, Lcom/dex2c/plus/ui/FileManagerDialog;->loadDirectory(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSelectButtonState()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->selectedFileCandidate:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmSelect:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 144
    sget v3, Lcom/dex2c/plus/R$color;->md_theme_primary:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/dex2c/plus/R$color;->md_theme_onSurfaceVariant:I

    .line 143
    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->binding:Lcom/dex2c/plus/databinding/DialogFileManagerBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/DialogFileManagerBinding;->btnFmSelect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v0, 0x3ee66666    # 0.45f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
