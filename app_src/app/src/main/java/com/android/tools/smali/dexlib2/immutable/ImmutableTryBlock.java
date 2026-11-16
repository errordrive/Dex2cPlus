package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.base.BaseTryBlock;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableTryBlock extends BaseTryBlock<ImmutableExceptionHandler> {
    private static final ImmutableConverter<ImmutableTryBlock, TryBlock<? extends ExceptionHandler>> CONVERTER = new ImmutableConverter<ImmutableTryBlock, TryBlock<? extends ExceptionHandler>>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableTryBlock.1
        @Override // com.android.tools.smali.util.ImmutableConverter
        protected /* bridge */ /* synthetic */ boolean isImmutable(@Nonnull TryBlock<? extends ExceptionHandler> tryBlock) {
            return isImmutable2((TryBlock) tryBlock);
        }

        /* JADX INFO: renamed from: isImmutable, reason: avoid collision after fix types in other method */
        protected boolean isImmutable2(@Nonnull TryBlock tryBlock) {
            return tryBlock instanceof ImmutableTryBlock;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableTryBlock makeImmutable(@Nonnull TryBlock<? extends ExceptionHandler> tryBlock) {
            return ImmutableTryBlock.of(tryBlock);
        }
    };
    protected final int codeUnitCount;

    @Nonnull
    protected final List<? extends ImmutableExceptionHandler> exceptionHandlers;
    protected final int startCodeAddress;

    public ImmutableTryBlock(int i, int i2, @Nullable List<? extends ExceptionHandler> list) {
        this.startCodeAddress = i;
        this.codeUnitCount = i2;
        this.exceptionHandlers = ImmutableExceptionHandler.immutableListOf(list);
    }

    public static ImmutableTryBlock of(TryBlock<? extends ExceptionHandler> tryBlock) {
        if (tryBlock instanceof ImmutableTryBlock) {
            return (ImmutableTryBlock) tryBlock;
        }
        return new ImmutableTryBlock(tryBlock.getStartCodeAddress(), tryBlock.getCodeUnitCount(), tryBlock.getExceptionHandlers());
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getStartCodeAddress() {
        return this.startCodeAddress;
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getCodeUnitCount() {
        return this.codeUnitCount;
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    @Nonnull
    public List<? extends ImmutableExceptionHandler> getExceptionHandlers() {
        return this.exceptionHandlers;
    }

    @Nonnull
    public static List<ImmutableTryBlock> immutableListOf(@Nullable List<? extends TryBlock<? extends ExceptionHandler>> list) {
        return CONVERTER.toList(list);
    }
}
