package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.base.BaseTryBlock;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderTryBlock extends BaseTryBlock<BuilderExceptionHandler> {

    @Nonnull
    public final Label end;

    @Nonnull
    public final BuilderExceptionHandler exceptionHandler;

    @Nonnull
    public final Label start;

    public BuilderTryBlock(@Nonnull Label label, @Nonnull Label label2, @Nullable String str, @Nonnull Label label3) {
        this.start = label;
        this.end = label2;
        this.exceptionHandler = BuilderExceptionHandler.newExceptionHandler(str, label3);
    }

    public BuilderTryBlock(@Nonnull Label label, @Nonnull Label label2, @Nullable TypeReference typeReference, @Nonnull Label label3) {
        this.start = label;
        this.end = label2;
        this.exceptionHandler = BuilderExceptionHandler.newExceptionHandler(typeReference, label3);
    }

    public BuilderTryBlock(@Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.start = label;
        this.end = label2;
        this.exceptionHandler = BuilderExceptionHandler.newExceptionHandler(label3);
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getStartCodeAddress() {
        return this.start.getCodeAddress();
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public int getCodeUnitCount() {
        return this.end.getCodeAddress() - this.start.getCodeAddress();
    }

    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    @Nonnull
    public List<? extends BuilderExceptionHandler> getExceptionHandlers() {
        return Collections.unmodifiableList(Arrays.asList(this.exceptionHandler));
    }
}
