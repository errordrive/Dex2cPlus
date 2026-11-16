.class public final Lcom/dex2c/plus/engine/FastZipModifier;
.super Ljava/lang/Object;
.source "FastZipModifier.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    :try_start_0
    const-string v0, "dex2cplus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native appendFilesNative(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public static native applyRuleReplacementsNative(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native bytesToHexNative([B)Ljava/lang/String;
.end method

.method public static native computeFileSha256Native(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native computePackageSignatureNative([[B[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native deleteDirNative(Ljava/lang/String;)V
.end method

.method public static native extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native hexToBytesNative(Ljava/lang/String;)[B
.end method

.method public static native normalizeClassDescriptorNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native parseAxmlTargetNative(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native resolveAssetsLibEntryPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native sanitizeZipFakeEncryptionNative(Ljava/lang/String;)Z
.end method

.method public static native toR8IdentifierNative(I)Ljava/lang/String;
.end method

.method public static native writeBytesNative(Ljava/lang/String;[B)Z
.end method
