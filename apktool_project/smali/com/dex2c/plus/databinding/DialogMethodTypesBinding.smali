.class public final Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;
.super Ljava/lang/Object;
.source "DialogMethodTypesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnMethodTypesCancel:Landroid/widget/TextView;

.field public final btnMethodTypesOk:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rowDialogTypeBridge:Landroid/widget/LinearLayout;

.field public final rowDialogTypePrivate:Landroid/widget/LinearLayout;

.field public final rowDialogTypeStatic:Landroid/widget/LinearLayout;

.field public final rowDialogTypeSynchronized:Landroid/widget/LinearLayout;

.field public final rowDialogTypeSynthetic:Landroid/widget/LinearLayout;

.field public final rowDialogTypeVarargs:Landroid/widget/LinearLayout;

.field public final rowDialogTypeVirtual:Landroid/widget/LinearLayout;

.field public final swDialogTypeBridge:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypePrivate:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypeStatic:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypeSynchronized:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypeSynthetic:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypeVarargs:Landroidx/appcompat/widget/SwitchCompat;

.field public final swDialogTypeVirtual:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rootView:Landroid/widget/LinearLayout;

    .line 81
    iput-object p2, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->btnMethodTypesCancel:Landroid/widget/TextView;

    .line 82
    iput-object p3, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->btnMethodTypesOk:Landroid/widget/TextView;

    .line 83
    iput-object p4, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeBridge:Landroid/widget/LinearLayout;

    .line 84
    iput-object p5, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypePrivate:Landroid/widget/LinearLayout;

    .line 85
    iput-object p6, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeStatic:Landroid/widget/LinearLayout;

    .line 86
    iput-object p7, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeSynchronized:Landroid/widget/LinearLayout;

    .line 87
    iput-object p8, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeSynthetic:Landroid/widget/LinearLayout;

    .line 88
    iput-object p9, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeVarargs:Landroid/widget/LinearLayout;

    .line 89
    iput-object p10, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeVirtual:Landroid/widget/LinearLayout;

    .line 90
    iput-object p11, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeBridge:Landroidx/appcompat/widget/SwitchCompat;

    .line 91
    iput-object p12, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypePrivate:Landroidx/appcompat/widget/SwitchCompat;

    .line 92
    iput-object p13, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeStatic:Landroidx/appcompat/widget/SwitchCompat;

    .line 93
    iput-object p14, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynchronized:Landroidx/appcompat/widget/SwitchCompat;

    .line 94
    iput-object p15, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynthetic:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 p1, p16

    .line 95
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVarargs:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 p1, p17

    .line 96
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVirtual:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 126
    sget v1, Lcom/dex2c/plus/R$id;->btnMethodTypesCancel:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 132
    sget v1, Lcom/dex2c/plus/R$id;->btnMethodTypesOk:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 138
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeBridge:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 144
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypePrivate:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 150
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeStatic:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 156
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeSynchronized:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 162
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeSynthetic:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 168
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeVarargs:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 174
    sget v1, Lcom/dex2c/plus/R$id;->rowDialogTypeVirtual:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 180
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeBridge:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v14, :cond_0

    .line 186
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypePrivate:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v15, :cond_0

    .line 192
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeStatic:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v16, :cond_0

    .line 198
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeSynchronized:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v17, :cond_0

    .line 204
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeSynthetic:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v18, :cond_0

    .line 210
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeVarargs:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v19, :cond_0

    .line 216
    sget v1, Lcom/dex2c/plus/R$id;->swDialogTypeVirtual:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v20, :cond_0

    .line 222
    new-instance v3, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    return-object v3

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;
    .locals 2

    .line 113
    sget v0, Lcom/dex2c/plus/R$layout;->dialog_method_types:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
