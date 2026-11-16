.class Lcom/android/tools/smali/util/StringWrapper$1$1;
.super Ljava/lang/Object;
.source "StringWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/util/StringWrapper$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private currentLineStart:I

.field private nextLine:Ljava/lang/String;

.field private nextLineSet:Z

.field final synthetic this$0:Lcom/android/tools/smali/util/StringWrapper$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/util/StringWrapper$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    .line 58
    iput-boolean p1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    return-void
.end method

.method private calculateNext()V
    .locals 5

    .line 70
    iget v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v1, v1, Lcom/android/tools/smali/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v0, v0, Lcom/android/tools/smali/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->last()I

    move-result v0

    .line 75
    iget v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    return-void

    .line 83
    :cond_1
    iget v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    sub-int v1, v0, v1

    iget-object v3, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget v3, v3, Lcom/android/tools/smali/util/StringWrapper$1;->val$maxWidth:I

    if-le v1, v3, :cond_3

    .line 84
    iget-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v1, v1, Lcom/android/tools/smali/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    if-gt v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget v0, v0, Lcom/android/tools/smali/util/StringWrapper$1;->val$maxWidth:I

    add-int/2addr v0, v1

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v1, v1, Lcom/android/tools/smali/util/StringWrapper$1;->val$string:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    .line 100
    iput v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    return-void

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v1, v1, Lcom/android/tools/smali/util/StringWrapper$1;->val$string:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->this$0:Lcom/android/tools/smali/util/StringWrapper$1;

    iget-object v1, v1, Lcom/android/tools/smali/util/StringWrapper$1;->val$string:Ljava/lang/String;

    iget v4, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    .line 93
    iput-boolean v2, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    .line 94
    iput v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->currentLineStart:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/tools/smali/util/StringWrapper$1$1;->calculateNext()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/smali/util/StringWrapper$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/android/tools/smali/util/StringWrapper$1$1;->nextLineSet:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
