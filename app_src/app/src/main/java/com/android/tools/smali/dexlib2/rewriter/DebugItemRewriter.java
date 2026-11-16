package com.android.tools.smali.dexlib2.rewriter;

import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.debug.EndLocal;
import com.android.tools.smali.dexlib2.iface.debug.LocalInfo;
import com.android.tools.smali.dexlib2.iface.debug.RestartLocal;
import com.android.tools.smali.dexlib2.iface.debug.StartLocal;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DebugItemRewriter implements Rewriter<DebugItem> {

    @Nonnull
    protected final Rewriters rewriters;

    public DebugItemRewriter(@Nonnull Rewriters rewriters) {
        this.rewriters = rewriters;
    }

    @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
    @Nonnull
    public DebugItem rewrite(@Nonnull DebugItem debugItem) {
        int debugItemType = debugItem.getDebugItemType();
        if (debugItemType == 3) {
            return new RewrittenStartLocal((StartLocal) debugItem);
        }
        if (debugItemType != 5) {
            return debugItemType != 6 ? debugItem : new RewrittenRestartLocal((RestartLocal) debugItem);
        }
        return new RewrittenEndLocal((EndLocal) debugItem);
    }

    protected class BaseRewrittenLocalInfoDebugItem<T extends DebugItem & LocalInfo> implements DebugItem, LocalInfo {

        @Nonnull
        protected T debugItem;

        public BaseRewrittenLocalInfoDebugItem(T t) {
            this.debugItem = t;
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
        public int getDebugItemType() {
            return this.debugItem.getDebugItemType();
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
        public int getCodeAddress() {
            return this.debugItem.getCodeAddress();
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
        @Nullable
        public String getName() {
            return this.debugItem.getName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
        @Nullable
        public String getType() {
            return (String) RewriterUtils.rewriteNullable(DebugItemRewriter.this.rewriters.getTypeRewriter(), this.debugItem.getType());
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
        @Nullable
        public String getSignature() {
            return this.debugItem.getSignature();
        }
    }

    protected class RewrittenStartLocal extends BaseRewrittenLocalInfoDebugItem<StartLocal> implements StartLocal {
        public RewrittenStartLocal(StartLocal startLocal) {
            super(startLocal);
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.StartLocal
        public int getRegister() {
            return ((StartLocal) this.debugItem).getRegister();
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.StartLocal
        @Nullable
        public StringReference getNameReference() {
            return ((StartLocal) this.debugItem).getNameReference();
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.StartLocal
        @Nullable
        public TypeReference getTypeReference() {
            TypeReference typeReference = ((StartLocal) this.debugItem).getTypeReference();
            if (typeReference == null) {
                return null;
            }
            return RewriterUtils.rewriteTypeReference(DebugItemRewriter.this.rewriters.getTypeRewriter(), typeReference);
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.StartLocal
        @Nullable
        public StringReference getSignatureReference() {
            return ((StartLocal) this.debugItem).getSignatureReference();
        }
    }

    protected class RewrittenEndLocal extends BaseRewrittenLocalInfoDebugItem<EndLocal> implements EndLocal {
        public RewrittenEndLocal(EndLocal endLocal) {
            super(endLocal);
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.EndLocal
        public int getRegister() {
            return ((EndLocal) this.debugItem).getRegister();
        }
    }

    protected class RewrittenRestartLocal extends BaseRewrittenLocalInfoDebugItem<RestartLocal> implements RestartLocal {
        public RewrittenRestartLocal(RestartLocal restartLocal) {
            super(restartLocal);
        }

        @Override // com.android.tools.smali.dexlib2.iface.debug.RestartLocal
        public int getRegister() {
            return ((RestartLocal) this.debugItem).getRegister();
        }
    }
}
