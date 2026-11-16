package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedOdexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.CdexHeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.OdexHeaderItem;
import com.android.tools.smali.util.InputStreamUtil;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexUtil {
    public static int verifyDexHeader(@Nonnull InputStream inputStream) throws IOException {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("InputStream must support mark");
        }
        inputStream.mark(44);
        byte[] bArr = new byte[44];
        try {
            try {
                InputStreamUtil.readFully(inputStream, bArr);
                inputStream.reset();
                return verifyDexHeader(bArr, 0);
            } catch (EOFException unused) {
                throw new DexBackedDexFile.NotADexFile("File is too short");
            }
        } catch (Throwable th) {
            inputStream.reset();
            throw th;
        }
    }

    public static int verifyDexHeader(@Nonnull byte[] bArr, int i) {
        int version = HeaderItem.getVersion(bArr, i);
        if (version == -1) {
            StringBuilder sb = new StringBuilder("Not a valid dex magic value:");
            for (int i2 = 0; i2 < 8; i2++) {
                sb.append(String.format(" %02x", Byte.valueOf(bArr[i2])));
            }
            throw new DexBackedDexFile.NotADexFile(sb.toString());
        }
        if (!HeaderItem.isSupportedDexVersion(version)) {
            throw new UnsupportedFile(String.format("Dex version %03d is not supported", Integer.valueOf(version)));
        }
        int endian = HeaderItem.getEndian(bArr, i);
        if (endian == 2018915346) {
            throw new UnsupportedFile("Big endian dex files are not supported");
        }
        if (endian == 305419896) {
            return version;
        }
        throw new InvalidFile(String.format("Invalid endian tag: 0x%x", Integer.valueOf(endian)));
    }

    public static int verifyCdexHeader(@Nonnull byte[] bArr, int i) {
        int version = CdexHeaderItem.getVersion(bArr, i);
        if (version == -1) {
            StringBuilder sb = new StringBuilder("Not a valid cdex magic value:");
            for (int i2 = 0; i2 < 8; i2++) {
                sb.append(String.format(" %02x", Byte.valueOf(bArr[i + i2])));
            }
            throw new DexBackedDexFile.NotADexFile(sb.toString());
        }
        if (!CdexHeaderItem.isSupportedCdexVersion(version)) {
            throw new UnsupportedFile(String.format("Dex version %03d is not supported", Integer.valueOf(version)));
        }
        int endian = HeaderItem.getEndian(bArr, i);
        if (endian == 2018915346) {
            throw new UnsupportedFile("Big endian dex files are not supported");
        }
        if (endian == 305419896) {
            return version;
        }
        throw new InvalidFile(String.format("Invalid endian tag: 0x%x", Integer.valueOf(endian)));
    }

    public static void verifyOdexHeader(@Nonnull InputStream inputStream) throws IOException {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("InputStream must support mark");
        }
        inputStream.mark(8);
        byte[] bArr = new byte[8];
        try {
            try {
                InputStreamUtil.readFully(inputStream, bArr);
                inputStream.reset();
                verifyOdexHeader(bArr, 0);
            } catch (EOFException unused) {
                throw new DexBackedOdexFile.NotAnOdexFile("File is too short");
            }
        } catch (Throwable th) {
            inputStream.reset();
            throw th;
        }
    }

    public static void verifyOdexHeader(@Nonnull byte[] bArr, int i) {
        int version = OdexHeaderItem.getVersion(bArr, i);
        if (version == -1) {
            StringBuilder sb = new StringBuilder("Not a valid odex magic value:");
            for (int i2 = 0; i2 < 8; i2++) {
                sb.append(String.format(" %02x", Byte.valueOf(bArr[i2])));
            }
            throw new DexBackedOdexFile.NotAnOdexFile(sb.toString());
        }
        if (!OdexHeaderItem.isSupportedOdexVersion(version)) {
            throw new UnsupportedFile(String.format("Odex version %03d is not supported", Integer.valueOf(version)));
        }
    }

    public static class InvalidFile extends RuntimeException {
        public InvalidFile() {
        }

        public InvalidFile(String str) {
            super(str);
        }

        public InvalidFile(String str, Throwable th) {
            super(str, th);
        }

        public InvalidFile(Throwable th) {
            super(th);
        }
    }

    public static class UnsupportedFile extends RuntimeException {
        public UnsupportedFile() {
        }

        public UnsupportedFile(String str) {
            super(str);
        }

        public UnsupportedFile(String str, Throwable th) {
            super(str, th);
        }

        public UnsupportedFile(Throwable th) {
            super(th);
        }
    }
}
