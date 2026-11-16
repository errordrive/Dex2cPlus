package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.base.BaseTryBlock;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedTryBlock extends BaseTryBlock<DexBackedExceptionHandler> {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int handlersStartOffset;
    private final int tryItemOffset;

    public DexBackedTryBlock(@Nonnull DexBackedDexFile dexBackedDexFile, int i, int i2) {
        this.dexFile = dexBackedDexFile;
        this.tryItemOffset = i;
        this.handlersStartOffset = i2;
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getStartCodeAddress() {
        return this.dexFile.getDataBuffer().readSmallUint(this.tryItemOffset);
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getCodeUnitCount() {
        return this.dexFile.getDataBuffer().readUshort(this.tryItemOffset + 4);
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    @Nonnull
    public List<? extends DexBackedExceptionHandler> getExceptionHandlers() {
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.handlersStartOffset + this.dexFile.getDataBuffer().readUshort(this.tryItemOffset + 6));
        int sleb128 = dexReader.readSleb128();
        if (sleb128 > 0) {
            return new VariableSizeList<DexBackedTypedExceptionHandler>(this.dexFile.getDataBuffer(), dexReader.getOffset(), sleb128) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedTryBlock.1
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
                @Nonnull
                protected /* bridge */ /* synthetic */ DexBackedTypedExceptionHandler readNextItem(@Nonnull DexReader dexReader2, int i) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader2, i);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
                @Nonnull
                protected DexBackedTypedExceptionHandler readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2, int i) {
                    return new DexBackedTypedExceptionHandler(DexBackedTryBlock.this.dexFile, dexReader2);
                }
            };
        }
        final int i = (sleb128 * (-1)) + 1;
        return new VariableSizeList<DexBackedExceptionHandler>(this.dexFile.getDataBuffer(), dexReader.getOffset(), i) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedTryBlock.2
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            @Nonnull
            protected /* bridge */ /* synthetic */ DexBackedExceptionHandler readNextItem(@Nonnull DexReader dexReader2, int i2) {
                return readNextItem((DexReader<? extends DexBuffer>) dexReader2, i2);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            @Nonnull
            protected DexBackedExceptionHandler readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2, int i2) {
                if (i2 == i - 1) {
                    return new DexBackedCatchAllExceptionHandler(dexReader2);
                }
                return new DexBackedTypedExceptionHandler(DexBackedTryBlock.this.dexFile, dexReader2);
            }
        };
    }
}
