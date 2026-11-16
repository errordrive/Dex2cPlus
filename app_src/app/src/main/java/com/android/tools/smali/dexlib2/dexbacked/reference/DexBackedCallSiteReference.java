package com.android.tools.smali.dexlib2.dexbacked.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseCallSiteReference;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.util.EncodedArrayItemIterator;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.StringEncodedValue;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedCallSiteReference extends BaseCallSiteReference {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public final int callSiteIdOffset;
    public final int callSiteIndex;
    private int callSiteOffset = -1;

    @Nonnull
    public final DexBackedDexFile dexFile;

    public DexBackedCallSiteReference(DexBackedDexFile dexBackedDexFile, int i) {
        this.dexFile = dexBackedDexFile;
        this.callSiteIndex = i;
        this.callSiteIdOffset = dexBackedDexFile.getCallSiteSection().getOffset(i);
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public String getName() {
        return String.format("call_site_%d", Integer.valueOf(this.callSiteIndex));
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public MethodHandleReference getMethodHandle() {
        if (getCallSiteIterator().getItemCount() < 3) {
            throw new ExceptionWithContext("Invalid call site item: must contain at least 3 entries.", new Object[0]);
        }
        EncodedValue nextOrNull = getCallSiteIterator().getNextOrNull();
        if (nextOrNull.getValueType() != 22) {
            throw new ExceptionWithContext("Invalid encoded value type (%d) for the first item in call site %d", Integer.valueOf(nextOrNull.getValueType()), Integer.valueOf(this.callSiteIndex));
        }
        return ((MethodHandleEncodedValue) nextOrNull).getValue();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public String getMethodName() {
        EncodedArrayItemIterator callSiteIterator = getCallSiteIterator();
        if (callSiteIterator.getItemCount() < 3) {
            throw new ExceptionWithContext("Invalid call site item: must contain at least 3 entries.", new Object[0]);
        }
        callSiteIterator.skipNext();
        EncodedValue nextOrNull = callSiteIterator.getNextOrNull();
        if (nextOrNull.getValueType() != 23) {
            throw new ExceptionWithContext("Invalid encoded value type (%d) for the second item in call site %d", Integer.valueOf(nextOrNull.getValueType()), Integer.valueOf(this.callSiteIndex));
        }
        return ((StringEncodedValue) nextOrNull).getValue();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public MethodProtoReference getMethodProto() {
        EncodedArrayItemIterator callSiteIterator = getCallSiteIterator();
        if (callSiteIterator.getItemCount() < 3) {
            throw new ExceptionWithContext("Invalid call site item: must contain at least 3 entries.", new Object[0]);
        }
        callSiteIterator.skipNext();
        callSiteIterator.skipNext();
        EncodedValue nextOrNull = callSiteIterator.getNextOrNull();
        if (nextOrNull.getValueType() != 21) {
            throw new ExceptionWithContext("Invalid encoded value type (%d) for the second item in call site %d", Integer.valueOf(nextOrNull.getValueType()), Integer.valueOf(this.callSiteIndex));
        }
        return ((MethodTypeEncodedValue) nextOrNull).getValue();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public List<? extends EncodedValue> getExtraArguments() {
        ArrayList arrayList = new ArrayList();
        EncodedArrayItemIterator callSiteIterator = getCallSiteIterator();
        if (callSiteIterator.getItemCount() < 3) {
            throw new ExceptionWithContext("Invalid call site item: must contain at least 3 entries.", new Object[0]);
        }
        if (callSiteIterator.getItemCount() != 3) {
            callSiteIterator.skipNext();
            callSiteIterator.skipNext();
            callSiteIterator.skipNext();
            for (EncodedValue nextOrNull = callSiteIterator.getNextOrNull(); nextOrNull != null; nextOrNull = callSiteIterator.getNextOrNull()) {
                arrayList.add(nextOrNull);
            }
        }
        return arrayList;
    }

    private EncodedArrayItemIterator getCallSiteIterator() {
        return EncodedArrayItemIterator.newOrEmpty(this.dexFile, getCallSiteOffset());
    }

    private int getCallSiteOffset() {
        if (this.callSiteOffset < 0) {
            this.callSiteOffset = this.dexFile.getBuffer().readSmallUint(this.callSiteIdOffset);
        }
        return this.callSiteOffset;
    }

    @Override // com.android.tools.smali.dexlib2.base.reference.BaseReference, com.android.tools.smali.dexlib2.iface.reference.Reference
    public void validateReference() throws Reference.InvalidReferenceException {
        int i = this.callSiteIndex;
        if (i < 0 || i >= this.dexFile.getCallSiteSection().size()) {
            throw new Reference.InvalidReferenceException("callsite@" + this.callSiteIndex);
        }
    }
}
