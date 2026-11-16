package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseCallSiteReference extends BaseReference implements CallSiteReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    public int hashCode() {
        return (((((((getName().hashCode() * 31) + getMethodHandle().hashCode()) * 31) + getMethodName().hashCode()) * 31) + getMethodProto().hashCode()) * 31) + getExtraArguments().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof CallSiteReference)) {
            CallSiteReference callSiteReference = (CallSiteReference) obj;
            if (getMethodHandle().equals(callSiteReference.getMethodHandle()) && getMethodName().equals(callSiteReference.getMethodName()) && getMethodProto().equals(callSiteReference.getMethodProto()) && getExtraArguments().equals(callSiteReference.getExtraArguments())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return DexFormatter.INSTANCE.getCallSite(this);
    }
}
