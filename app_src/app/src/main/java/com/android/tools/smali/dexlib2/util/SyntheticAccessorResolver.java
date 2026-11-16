package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.util.IteratorUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class SyntheticAccessorResolver {
    public static final int ADD_ASSIGNMENT = 7;
    public static final int AND_ASSIGNMENT = 12;
    public static final int DIV_ASSIGNMENT = 10;
    public static final int GETTER = 1;
    public static final int METHOD = 0;
    public static final int MUL_ASSIGNMENT = 9;
    public static final int OR_ASSIGNMENT = 13;
    public static final int POSTFIX_DECREMENT = 5;
    public static final int POSTFIX_INCREMENT = 3;
    public static final int PREFIX_DECREMENT = 6;
    public static final int PREFIX_INCREMENT = 4;
    public static final int REM_ASSIGNMENT = 11;
    public static final int SETTER = 2;
    public static final int SHL_ASSIGNMENT = 15;
    public static final int SHR_ASSIGNMENT = 16;
    public static final int SUB_ASSIGNMENT = 8;
    public static final int USHR_ASSIGNMENT = 17;
    public static final int XOR_ASSIGNMENT = 14;
    private final Map<String, ClassDef> classDefMap;
    private final Map<MethodReference, AccessedMember> resolvedAccessors = new ConcurrentHashMap();
    private final SyntheticAccessorFSM syntheticAccessorFSM;

    public SyntheticAccessorResolver(@Nonnull Opcodes opcodes, @Nonnull Iterable<? extends ClassDef> iterable) {
        this.syntheticAccessorFSM = new SyntheticAccessorFSM(opcodes);
        HashMap map = new HashMap();
        for (ClassDef classDef : iterable) {
            map.put(classDef.getType(), classDef);
        }
        this.classDefMap = Collections.unmodifiableMap(map);
    }

    public static boolean looksLikeSyntheticAccessor(String str) {
        return str.startsWith("access$");
    }

    @Nullable
    public AccessedMember getAccessedMember(@Nonnull MethodReference methodReference) {
        Method next;
        MethodImplementation implementation;
        List<? extends Instruction> listUnmodifiableList;
        int iTest;
        AccessedMember accessedMember = this.resolvedAccessors.get(methodReference);
        if (accessedMember != null) {
            return accessedMember;
        }
        ClassDef classDef = this.classDefMap.get(methodReference.getDefiningClass());
        if (classDef == null) {
            return null;
        }
        Iterator<? extends Method> it = classDef.getMethods().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                implementation = null;
                break;
            }
            next = it.next();
            implementation = next.getImplementation();
            if (implementation != null && methodReferenceEquals(next, methodReference)) {
                break;
            }
        }
        if (next == null || !AccessFlags.SYNTHETIC.isSet(next.getAccessFlags()) || (iTest = this.syntheticAccessorFSM.test((listUnmodifiableList = Collections.unmodifiableList(IteratorUtils.toList(implementation.getInstructions()))))) < 0) {
            return null;
        }
        AccessedMember accessedMember2 = new AccessedMember(iTest, ((ReferenceInstruction) listUnmodifiableList.get(0)).getReference());
        this.resolvedAccessors.put(methodReference, accessedMember2);
        return accessedMember2;
    }

    public static class AccessedMember {

        @Nonnull
        public final Reference accessedMember;
        public final int accessedMemberType;

        public AccessedMember(int i, @Nonnull Reference reference) {
            this.accessedMemberType = i;
            this.accessedMember = reference;
        }
    }

    private static boolean methodReferenceEquals(@Nonnull MethodReference methodReference, @Nonnull MethodReference methodReference2) {
        return methodReference.getName().equals(methodReference2.getName()) && methodReference.getReturnType().equals(methodReference2.getReturnType()) && methodReference.getParameterTypes().equals(methodReference2.getParameterTypes());
    }
}
