package com.android.tools.smali.dexlib2.rewriter;

import com.android.tools.smali.dexlib2.base.reference.BaseCallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CallSiteReferenceRewriter implements Rewriter<CallSiteReference> {

    @Nonnull
    protected final Rewriters rewriters;

    public CallSiteReferenceRewriter(@Nonnull Rewriters rewriters) {
        this.rewriters = rewriters;
    }

    @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
    @Nonnull
    public CallSiteReference rewrite(@Nonnull CallSiteReference callSiteReference) {
        return new RewrittenCallSiteReference(callSiteReference);
    }

    protected class RewrittenCallSiteReference extends BaseCallSiteReference {

        @Nonnull
        protected CallSiteReference callSiteReference;

        public RewrittenCallSiteReference(CallSiteReference callSiteReference) {
            this.callSiteReference = callSiteReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
        @Nonnull
        public String getName() {
            return this.callSiteReference.getName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
        @Nonnull
        public MethodHandleReference getMethodHandle() {
            return RewriterUtils.rewriteMethodHandleReference(CallSiteReferenceRewriter.this.rewriters, this.callSiteReference.getMethodHandle());
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
        @Nonnull
        public String getMethodName() {
            return this.callSiteReference.getMethodName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
        @Nonnull
        public MethodProtoReference getMethodProto() {
            return RewriterUtils.rewriteMethodProtoReference(CallSiteReferenceRewriter.this.rewriters.getTypeRewriter(), this.callSiteReference.getMethodProto());
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
        @Nonnull
        public List<? extends EncodedValue> getExtraArguments() {
            return (List) this.callSiteReference.getExtraArguments().stream().map(new Function<EncodedValue, EncodedValue>() { // from class: com.android.tools.smali.dexlib2.rewriter.CallSiteReferenceRewriter.RewrittenCallSiteReference.1
                @Override // java.util.function.Function
                @Nonnull
                public EncodedValue apply(EncodedValue encodedValue) {
                    return RewriterUtils.rewriteValue(CallSiteReferenceRewriter.this.rewriters, encodedValue);
                }
            }).collect(Collectors.toList());
        }
    }
}
