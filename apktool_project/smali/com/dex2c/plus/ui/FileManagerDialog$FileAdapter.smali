.class Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/FileManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;",
        ">;"
    }
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dex2c/plus/ui/FileManagerDialog;


# direct methods
.method public static synthetic $r8$lambda$9qcJX4yt4qwXAbkKFci0AE1vewI(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$3(Ljava/io/File;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VN4MsqXMqA-8e3nnDRY6yIJE4Sc(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$2(Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WpqzyEF4az8eDWdSIlvJ7PUw4TA(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9jLRf3nKMpH4l2OLItnvw-J2Ww(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$6(Ljava/io/File;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_OA5gVF8lamEffm52frm0NT25wc(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$5(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcyhh51g4FgElYGuI6cm_9Cqo9c(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$4(Ljava/io/File;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3gjcTfe6Um_1DZaHUg_R27AhFM(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->lambda$onBindViewHolder$1(Ljava/io/File;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/dex2c/plus/ui/FileManagerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->files:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dex2c/plus/ui/FileManagerDialog;Lcom/dex2c/plus/ui/FileManagerDialog-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mloadDirectory(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/io/File;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 228
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mloadDirectory(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 252
    iget-object v0, p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->boundPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetdialog(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 254
    iget-object p1, p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 255
    iget-object p1, p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Ljava/io/File;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mloadOriginalApkIcon(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-static {}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$sfgetICON_CACHE()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetmainHandler(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$sfgetNO_ICON_PATHS()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Ljava/io/File;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 269
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fputselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V

    .line 270
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mupdateSelectButtonState(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    .line 271
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 275
    iget-object p1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    .line 276
    iget-object p3, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p3, p2}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fputselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V

    .line 277
    iget-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mupdateSelectButtonState(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    .line 278
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$6(Ljava/io/File;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 283
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2, p1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fputselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;Ljava/io/File;)V

    .line 284
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$mupdateSelectButtonState(Lcom/dex2c/plus/ui/FileManagerDialog;)V

    .line 285
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetdialog(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 286
    iget-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {p2}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetlistener(Lcom/dex2c/plus/ui/FileManagerDialog;)Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;->onApkSelected(Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 192
    check-cast p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->onBindViewHolder(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;I)V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 212
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 213
    iput-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->boundPath:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetdateFmt(Lcom/dex2c/plus/ui/FileManagerDialog;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->tvFileName:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->tvFileSub:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 220
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    .line 222
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    sget v1, Lcom/dex2c/plus/R$drawable;->ic_folder_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetcontext(Lcom/dex2c/plus/ui/FileManagerDialog;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dex2c/plus/R$color;->folder_icon_tint:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 225
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->itemView:Landroid/view/View;

    new-instance v1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 232
    :cond_0
    iget-object v1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;)Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetselectedFileCandidate(Lcom/dex2c/plus/ui/FileManagerDialog;)Ljava/io/File;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 236
    :cond_1
    iget-object v1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 237
    iget-object v1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 238
    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->this$0:Lcom/dex2c/plus/ui/FileManagerDialog;

    invoke-static {v1}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$fgetpickerMode(Lcom/dex2c/plus/ui/FileManagerDialog;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 239
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    sget v1, Lcom/dex2c/plus/R$drawable;->ic_dex_file:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$sfgetICON_CACHE()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 243
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->ivFileIcon:Landroid/widget/ImageView;

    sget v4, Lcom/dex2c/plus/R$drawable;->ic_apk_default:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    invoke-static {}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$sfgetNO_ICON_PATHS()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 247
    invoke-static {}, Lcom/dex2c/plus/ui/FileManagerDialog;->-$$Nest$sfgetICON_EXECUTOR()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v4, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2, v0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Ljava/lang/String;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 266
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 268
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->cbFileSelect:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    iget-object v0, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->itemView:Landroid/view/View;

    new-instance v1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object p1, p1, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 204
    invoke-static {p2, p1, v0}, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    move-result-object p1

    .line 206
    new-instance p2, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;

    invoke-direct {p2, p0, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;-><init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Lcom/dex2c/plus/databinding/ItemFileEntryBinding;)V

    return-object p2
.end method

.method setFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->notifyDataSetChanged()V

    return-void
.end method
