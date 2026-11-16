package com.android.tools.smali.dexlib2.writer.util;

import com.android.tools.smali.dexlib2.base.value.BaseArrayEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableStringEncodedValue;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CallSiteUtil {
    public static ArrayEncodedValue getEncodedCallSite(final CallSiteReference callSiteReference) {
        return new BaseArrayEncodedValue() { // from class: com.android.tools.smali.dexlib2.writer.util.CallSiteUtil.1
            @Override // com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue
            @Nonnull
            public List<? extends EncodedValue> getValue() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new BaseMethodHandleEncodedValue() { // from class: com.android.tools.smali.dexlib2.writer.util.CallSiteUtil.1.1
                    @Override // com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue
                    @Nonnull
                    public MethodHandleReference getValue() {
                        return callSiteReference.getMethodHandle();
                    }
                });
                arrayList.add(new ImmutableStringEncodedValue(callSiteReference.getMethodName()));
                arrayList.add(new BaseMethodTypeEncodedValue() { // from class: com.android.tools.smali.dexlib2.writer.util.CallSiteUtil.1.2
                    @Override // com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue
                    @Nonnull
                    public MethodProtoReference getValue() {
                        return callSiteReference.getMethodProto();
                    }
                });
                arrayList.addAll(callSiteReference.getExtraArguments());
                return arrayList;
            }
        };
    }
}
