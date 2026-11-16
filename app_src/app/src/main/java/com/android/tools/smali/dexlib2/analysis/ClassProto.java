package com.android.tools.smali.dexlib2.analysis;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.analysis.util.MemoizingSupplier;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.util.AlignmentUtils;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.util.AbstractIterator;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.IteratorUtils;
import com.android.tools.smali.util.SparseArray;
import com.android.tools.smali.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.Supplier;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ClassProto implements TypeProto {
    private static final byte OTHER = 2;
    private static final byte REFERENCE = 0;
    private static final byte WIDE = 1;

    @Nonnull
    protected final ClassPath classPath;

    @Nonnull
    protected final String type;
    protected boolean vtableFullyResolved = true;
    protected boolean interfacesFullyResolved = true;
    protected Set<String> unresolvedInterfaces = null;

    @Nonnull
    private final Supplier<ClassDef> classDefSupplier = MemoizingSupplier.memoize(new Supplier<ClassDef>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.function.Supplier
        public ClassDef get() {
            return ClassProto.this.classPath.getClassDef(ClassProto.this.type);
        }
    });

    @Nonnull
    private final Supplier<LinkedHashMap<String, ClassDef>> preDefaultMethodInterfaceSupplier = MemoizingSupplier.memoize(new Supplier<LinkedHashMap<String, ClassDef>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.2
        @Override // java.util.function.Supplier
        public LinkedHashMap<String, ClassDef> get() {
            HashSet hashSet = new HashSet(0);
            LinkedHashMap<String, ClassDef> linkedHashMap = new LinkedHashMap<>();
            try {
                for (String str : ClassProto.this.getClassDef().getInterfaces()) {
                    if (!linkedHashMap.containsKey(str)) {
                        try {
                            linkedHashMap.put(str, ClassProto.this.classPath.getClassDef(str));
                        } catch (UnresolvedClassException unused) {
                            linkedHashMap.put(str, null);
                            hashSet.add(str);
                            ClassProto.this.interfacesFullyResolved = false;
                        }
                        ClassProto classProto = (ClassProto) ClassProto.this.classPath.getClass(str);
                        for (String str2 : classProto.getInterfaces().keySet()) {
                            if (!linkedHashMap.containsKey(str2)) {
                                linkedHashMap.put(str2, classProto.getInterfaces().get(str2));
                            }
                        }
                        if (!classProto.interfacesFullyResolved) {
                            hashSet.addAll(classProto.getUnresolvedInterfaces());
                            ClassProto.this.interfacesFullyResolved = false;
                        }
                    }
                }
            } catch (UnresolvedClassException unused2) {
                linkedHashMap.put(ClassProto.this.type, null);
                hashSet.add(ClassProto.this.type);
                ClassProto.this.interfacesFullyResolved = false;
            }
            if (ClassProto.this.isInterface() && !linkedHashMap.containsKey(ClassProto.this.getType())) {
                linkedHashMap.put(ClassProto.this.getType(), null);
            }
            String superclass = ClassProto.this.getSuperclass();
            if (superclass != null) {
                try {
                    ClassProto classProto2 = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                    for (String str3 : classProto2.getInterfaces().keySet()) {
                        if (!linkedHashMap.containsKey(str3)) {
                            linkedHashMap.put(str3, null);
                        }
                    }
                    if (!classProto2.interfacesFullyResolved) {
                        hashSet.addAll(classProto2.getUnresolvedInterfaces());
                        ClassProto.this.interfacesFullyResolved = false;
                    }
                } catch (UnresolvedClassException unused3) {
                    hashSet.add(superclass);
                    ClassProto.this.interfacesFullyResolved = false;
                }
            }
            if (hashSet.size() > 0) {
                ClassProto.this.unresolvedInterfaces = hashSet;
            }
            return linkedHashMap;
        }
    });

    @Nonnull
    private final Supplier<LinkedHashMap<String, ClassDef>> postDefaultMethodInterfaceSupplier = MemoizingSupplier.memoize(new Supplier<LinkedHashMap<String, ClassDef>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.3
        @Override // java.util.function.Supplier
        public LinkedHashMap<String, ClassDef> get() {
            HashSet hashSet = new HashSet(0);
            LinkedHashMap<String, ClassDef> linkedHashMap = new LinkedHashMap<>();
            String superclass = ClassProto.this.getSuperclass();
            if (superclass != null) {
                ClassProto classProto = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                Iterator<String> it = classProto.getInterfaces().keySet().iterator();
                while (it.hasNext()) {
                    linkedHashMap.put(it.next(), null);
                }
                if (!classProto.interfacesFullyResolved) {
                    hashSet.addAll(classProto.getUnresolvedInterfaces());
                    ClassProto.this.interfacesFullyResolved = false;
                }
            }
            try {
                for (String str : ClassProto.this.getClassDef().getInterfaces()) {
                    if (!linkedHashMap.containsKey(str)) {
                        ClassProto classProto2 = (ClassProto) ClassProto.this.classPath.getClass(str);
                        try {
                            for (Map.Entry<String, ClassDef> entry : classProto2.getInterfaces().entrySet()) {
                                if (!linkedHashMap.containsKey(entry.getKey())) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        } catch (UnresolvedClassException unused) {
                            linkedHashMap.put(str, null);
                            hashSet.add(str);
                            ClassProto.this.interfacesFullyResolved = false;
                        }
                        if (!classProto2.interfacesFullyResolved) {
                            hashSet.addAll(classProto2.getUnresolvedInterfaces());
                            ClassProto.this.interfacesFullyResolved = false;
                        }
                        try {
                            linkedHashMap.put(str, ClassProto.this.classPath.getClassDef(str));
                        } catch (UnresolvedClassException unused2) {
                            linkedHashMap.put(str, null);
                            hashSet.add(str);
                            ClassProto.this.interfacesFullyResolved = false;
                        }
                    }
                }
            } catch (UnresolvedClassException unused3) {
                linkedHashMap.put(ClassProto.this.type, null);
                hashSet.add(ClassProto.this.type);
                ClassProto.this.interfacesFullyResolved = false;
            }
            if (hashSet.size() > 0) {
                ClassProto.this.unresolvedInterfaces = hashSet;
            }
            return linkedHashMap;
        }
    });

    @Nonnull
    private final Supplier<SparseArray<FieldReference>> dalvikInstanceFieldsSupplier = MemoizingSupplier.memoize(new Supplier<SparseArray<FieldReference>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.5
        static final /* synthetic */ boolean $assertionsDisabled = false;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.function.Supplier
        public SparseArray<FieldReference> get() {
            ClassProto classProto;
            int nextFieldOffset;
            SparseArray<FieldReference> sparseArray;
            ArrayList<Field> sortedInstanceFields = getSortedInstanceFields(ClassProto.this.getClassDef());
            int size = sortedInstanceFields.size();
            byte[] bArr = new byte[sortedInstanceFields.size()];
            for (int i = 0; i < size; i++) {
                bArr[i] = ClassProto.getFieldType(sortedInstanceFields.get(i));
            }
            int size2 = sortedInstanceFields.size() - 1;
            int i2 = 0;
            while (i2 < size) {
                if (bArr[i2] != 0) {
                    while (size2 > i2) {
                        if (bArr[size2] == 0) {
                            swap(bArr, sortedInstanceFields, i2, size2);
                            size2--;
                            break;
                        }
                        size2--;
                    }
                }
                if (bArr[i2] != 0) {
                    break;
                }
                i2++;
            }
            String superclass = ClassProto.this.getSuperclass();
            int i3 = 8;
            if (superclass != null) {
                classProto = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                nextFieldOffset = classProto.getNextFieldOffset();
            } else {
                classProto = null;
                nextFieldOffset = 8;
            }
            int i4 = nextFieldOffset % 8 == 0 ? 0 : 1;
            if (i2 < size && i2 % 2 != i4) {
                if (bArr[i2] == 1) {
                    for (int i5 = size - 1; i5 > i2; i5--) {
                        if (bArr[i5] == 2) {
                            swap(bArr, sortedInstanceFields, i2, i5);
                            i2++;
                            break;
                        }
                    }
                } else {
                    i2++;
                }
            }
            int i6 = size - 1;
            while (i2 < size) {
                if (bArr[i2] != 1) {
                    while (i6 > i2) {
                        if (bArr[i6] == 1) {
                            swap(bArr, sortedInstanceFields, i2, i6);
                            i6--;
                            break;
                        }
                        i6--;
                    }
                }
                if (bArr[i2] != 1) {
                    break;
                }
                i2++;
            }
            if (classProto != null) {
                sparseArray = classProto.getInstanceFields();
            } else {
                sparseArray = new SparseArray<>();
            }
            int size3 = sparseArray.size();
            SparseArray<FieldReference> sparseArray2 = new SparseArray<>(size3 + size);
            if (classProto != null && size3 > 0) {
                for (int i7 = 0; i7 < size3; i7++) {
                    sparseArray2.append(sparseArray.keyAt(i7), sparseArray.valueAt(i7));
                }
                int i8 = size3 - 1;
                int iKeyAt = sparseArray2.keyAt(i8);
                char cCharAt = sparseArray.valueAt(i8).getType().charAt(0);
                i3 = (cCharAt == 'J' || cCharAt == 'D') ? iKeyAt + 8 : iKeyAt + 4;
            }
            boolean z = false;
            for (int i9 = 0; i9 < size; i9++) {
                Field field = sortedInstanceFields.get(i9);
                if (bArr[i9] == 1 && !z) {
                    if (i3 % 8 != 0) {
                        i3 += 4;
                    }
                    z = true;
                }
                sparseArray2.append(i3, field);
                i3 = bArr[i9] == 1 ? i3 + 8 : i3 + 4;
            }
            return sparseArray2;
        }

        @Nonnull
        private ArrayList<Field> getSortedInstanceFields(@Nonnull ClassDef classDef) {
            ArrayList<Field> arrayList = (ArrayList) IteratorUtils.toList(classDef.getInstanceFields());
            Collections.sort(arrayList);
            return arrayList;
        }

        private void swap(byte[] bArr, List<Field> list, int i, int i2) {
            byte b = bArr[i];
            bArr[i] = bArr[i2];
            bArr[i2] = b;
            list.set(i2, list.set(i, list.get(i2)));
        }
    });

    @Nonnull
    private final Supplier<SparseArray<FieldReference>> artInstanceFieldsSupplier = MemoizingSupplier.memoize(new Supplier<SparseArray<FieldReference>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.6
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.function.Supplier
        public SparseArray<FieldReference> get() {
            PriorityQueue<FieldGap> priorityQueue = new PriorityQueue<>();
            SparseArray<FieldReference> sparseArray = new SparseArray<>();
            ArrayList<Field> sortedInstanceFields = getSortedInstanceFields(ClassProto.this.getClassDef());
            String superclass = ClassProto.this.getSuperclass();
            int fieldSize = 0;
            if (superclass != null) {
                SparseArray<FieldReference> instanceFields = ((ClassProto) ClassProto.this.classPath.getClass(superclass)).getInstanceFields();
                FieldReference fieldReferenceValueAt = null;
                int iKeyAt = 0;
                for (int i = 0; i < instanceFields.size(); i++) {
                    iKeyAt = instanceFields.keyAt(i);
                    fieldReferenceValueAt = instanceFields.valueAt(i);
                    sparseArray.put(iKeyAt, fieldReferenceValueAt);
                }
                if (fieldReferenceValueAt != null) {
                    fieldSize = iKeyAt + getFieldSize(fieldReferenceValueAt);
                }
            }
            for (Field field : sortedInstanceFields) {
                int fieldSize2 = getFieldSize(field);
                if (!AlignmentUtils.isAligned(fieldSize, fieldSize2)) {
                    int iAlignOffset = AlignmentUtils.alignOffset(fieldSize, fieldSize2);
                    addFieldGap(fieldSize, iAlignOffset, priorityQueue);
                    fieldSize = iAlignOffset;
                }
                FieldGap fieldGapPeek = priorityQueue.peek();
                if (fieldGapPeek != null && fieldGapPeek.size >= fieldSize2) {
                    priorityQueue.poll();
                    sparseArray.put(fieldGapPeek.offset, field);
                    if (fieldGapPeek.size > fieldSize2) {
                        addFieldGap(fieldGapPeek.offset + fieldSize2, fieldGapPeek.offset + fieldGapPeek.size, priorityQueue);
                    }
                } else {
                    sparseArray.append(fieldSize, field);
                    fieldSize += fieldSize2;
                }
            }
            return sparseArray;
        }

        private void addFieldGap(int i, int i2, @Nonnull PriorityQueue<FieldGap> priorityQueue) {
            while (i < i2) {
                int i3 = i2 - i;
                if (i3 >= 4 && i % 4 == 0) {
                    priorityQueue.add(FieldGap.newFieldGap(i, 4, ClassProto.this.classPath.oatVersion));
                    i += 4;
                } else if (i3 >= 2 && i % 2 == 0) {
                    priorityQueue.add(FieldGap.newFieldGap(i, 2, ClassProto.this.classPath.oatVersion));
                    i += 2;
                } else {
                    priorityQueue.add(FieldGap.newFieldGap(i, 1, ClassProto.this.classPath.oatVersion));
                    i++;
                }
            }
        }

        @Nonnull
        private ArrayList<Field> getSortedInstanceFields(@Nonnull ClassDef classDef) {
            ArrayList<Field> arrayList = (ArrayList) IteratorUtils.toList(classDef.getInstanceFields());
            Collections.sort(arrayList, new Comparator<Field>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.6.1
                @Override // java.util.Comparator
                public int compare(Field field, Field field2) {
                    int iCompare = Integer.compare(getFieldSortOrder(field), getFieldSortOrder(field2));
                    if (iCompare != 0) {
                        return iCompare;
                    }
                    int iCompareTo = field.getName().compareTo(field2.getName());
                    return iCompareTo != 0 ? iCompareTo : field.getType().compareTo(field2.getType());
                }
            });
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getFieldSortOrder(@Nonnull FieldReference fieldReference) {
            char cCharAt = fieldReference.getType().charAt(0);
            if (cCharAt == 'F') {
                return 4;
            }
            if (cCharAt != 'L') {
                if (cCharAt == 'S') {
                    return 6;
                }
                if (cCharAt == 'I') {
                    return 3;
                }
                if (cCharAt == 'J') {
                    return 1;
                }
                if (cCharAt == 'Z') {
                    return 7;
                }
                if (cCharAt != '[') {
                    switch (cCharAt) {
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                            return 8;
                        case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                            return 5;
                        case HeaderItem.TYPE_START_OFFSET /* 68 */:
                            return 2;
                        default:
                            throw new ExceptionWithContext("Invalid field type: %s", fieldReference.getType());
                    }
                }
            }
            return 0;
        }

        private int getFieldSize(@Nonnull FieldReference fieldReference) {
            return ClassProto.getTypeSize(fieldReference.getType().charAt(0));
        }
    });

    @Nonnull
    private final Supplier<List<Method>> preDefaultMethodVtableSupplier = MemoizingSupplier.memoize(new Supplier<List<Method>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.7
        @Override // java.util.function.Supplier
        public List<Method> get() {
            ArrayList arrayList = new ArrayList();
            try {
                String superclass = ClassProto.this.getSuperclass();
                if (superclass != null) {
                    ClassProto classProto = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                    arrayList.addAll(classProto.getVtable());
                    if (!classProto.vtableFullyResolved) {
                        ClassProto.this.vtableFullyResolved = false;
                        return arrayList;
                    }
                }
                if (!ClassProto.this.isInterface()) {
                    ClassProto classProto2 = ClassProto.this;
                    classProto2.addToVtable(classProto2.getClassDef().getVirtualMethods(), arrayList, true, true);
                    for (ClassDef classDef : ClassProto.this.getDirectInterfaces()) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<? extends Method> it = classDef.getVirtualMethods().iterator();
                        while (it.hasNext()) {
                            arrayList2.add(new ReparentedMethod(it.next(), ClassProto.this.type));
                        }
                        ClassProto.this.addToVtable(arrayList2, arrayList, false, true);
                    }
                }
                return arrayList;
            } catch (UnresolvedClassException unused) {
                arrayList.addAll(((ClassProto) ClassProto.this.classPath.getClass("Ljava/lang/Object;")).getVtable());
                ClassProto.this.vtableFullyResolved = false;
                return arrayList;
            }
        }
    });

    @Nonnull
    private final Supplier<List<Method>> buggyPostDefaultMethodVtableSupplier = MemoizingSupplier.memoize(new Supplier<List<Method>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.8
        @Override // java.util.function.Supplier
        public List<Method> get() {
            ArrayList arrayList;
            ArrayList arrayList2 = new ArrayList();
            try {
                String superclass = ClassProto.this.getSuperclass();
                if (superclass != null) {
                    ClassProto classProto = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                    arrayList2.addAll(classProto.getVtable());
                    if (!classProto.vtableFullyResolved) {
                        ClassProto.this.vtableFullyResolved = false;
                        return arrayList2;
                    }
                }
                if (!ClassProto.this.isInterface()) {
                    ClassProto classProto2 = ClassProto.this;
                    classProto2.addToVtable(classProto2.getClassDef().getVirtualMethods(), arrayList2, true, true);
                    ArrayList arrayList3 = new ArrayList(ClassProto.this.getInterfaces().keySet());
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    final HashMap map = new HashMap();
                    for (int size = arrayList3.size() - 1; size >= 0; size--) {
                        for (Method method : ClassProto.this.classPath.getClassDef((String) arrayList3.get(size)).getVirtualMethods()) {
                            int iFindMethodIndexInVtableReverse = ClassProto.this.findMethodIndexInVtableReverse(arrayList2, method);
                            Method method2 = iFindMethodIndexInVtableReverse >= 0 ? (Method) arrayList2.get(iFindMethodIndexInVtableReverse) : null;
                            int i = 0;
                            while (i < arrayList2.size()) {
                                Method method3 = (Method) arrayList2.get(i);
                                if (MethodUtil.methodSignaturesMatch(method3, method)) {
                                    if (ClassProto.this.classPath.shouldCheckPackagePrivateAccess()) {
                                        arrayList = arrayList3;
                                        if (AnalyzedMethodUtil.canAccess(ClassProto.this, method3, true, false, false)) {
                                        }
                                    } else {
                                        arrayList = arrayList3;
                                    }
                                    if (ClassProto.this.interfaceMethodOverrides(method, method3)) {
                                        arrayList2.set(i, method);
                                    }
                                } else {
                                    arrayList = arrayList3;
                                }
                                i++;
                                arrayList3 = arrayList;
                            }
                            ArrayList arrayList7 = arrayList3;
                            if (iFindMethodIndexInVtableReverse < 0 || ClassProto.this.isOverridableByDefaultMethod((Method) arrayList2.get(iFindMethodIndexInVtableReverse))) {
                                int iFindMethodIndexInVtable = ClassProto.this.findMethodIndexInVtable(arrayList4, method);
                                if (iFindMethodIndexInVtable < 0) {
                                    if (ClassProto.this.findMethodIndexInVtable(arrayList5, method) < 0) {
                                        int iFindMethodIndexInVtable2 = ClassProto.this.findMethodIndexInVtable(arrayList6, method);
                                        if (iFindMethodIndexInVtable2 >= 0) {
                                            if (!AccessFlags.ABSTRACT.isSet(method.getAccessFlags()) && !((ClassProto) ClassProto.this.classPath.getClass(((Method) arrayList6.get(iFindMethodIndexInVtable2)).getDefiningClass())).implementsInterface(method.getDefiningClass())) {
                                                Integer num = (Integer) map.get((Method) arrayList6.remove(iFindMethodIndexInVtable2));
                                                num.intValue();
                                                map.put(method, num);
                                                arrayList4.add(method);
                                            }
                                        } else if (AccessFlags.ABSTRACT.isSet(method.getAccessFlags())) {
                                            if (method2 == null) {
                                                arrayList6.add(method);
                                                map.put(method, Integer.valueOf(map.size()));
                                            }
                                        } else if (method2 == null || ClassProto.this.interfaceMethodOverrides(method, method2)) {
                                            arrayList4.add(method);
                                            map.put(method, Integer.valueOf(map.size()));
                                        }
                                    }
                                } else if (!AccessFlags.ABSTRACT.isSet(method.getAccessFlags()) && !((ClassProto) ClassProto.this.classPath.getClass(((Method) arrayList4.get(iFindMethodIndexInVtable)).getDefiningClass())).implementsInterface(method.getDefiningClass())) {
                                    arrayList5.add((Method) arrayList4.remove(iFindMethodIndexInVtable));
                                }
                            }
                            arrayList3 = arrayList7;
                        }
                    }
                    Comparator<MethodReference> comparator = new Comparator<MethodReference>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.8.1
                        @Override // java.util.Comparator
                        public int compare(MethodReference methodReference, MethodReference methodReference2) {
                            return Integer.compare(((Integer) map.get(methodReference)).intValue(), ((Integer) map.get(methodReference2)).intValue());
                        }
                    };
                    Collections.sort(arrayList6, comparator);
                    Collections.sort(arrayList4, comparator);
                    Collections.sort(arrayList5, comparator);
                    arrayList2.addAll(arrayList6);
                    arrayList2.addAll(arrayList4);
                    arrayList2.addAll(arrayList5);
                }
                return arrayList2;
            } catch (UnresolvedClassException unused) {
                arrayList2.addAll(((ClassProto) ClassProto.this.classPath.getClass("Ljava/lang/Object;")).getVtable());
                ClassProto.this.vtableFullyResolved = false;
                return arrayList2;
            }
        }
    });

    @Nonnull
    private final Supplier<List<Method>> postDefaultMethodVtableSupplier = MemoizingSupplier.memoize(new Supplier<List<Method>>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.9
        @Override // java.util.function.Supplier
        public List<Method> get() {
            ArrayList arrayList = new ArrayList();
            try {
                String superclass = ClassProto.this.getSuperclass();
                if (superclass != null) {
                    ClassProto classProto = (ClassProto) ClassProto.this.classPath.getClass(superclass);
                    arrayList.addAll(classProto.getVtable());
                    if (!classProto.vtableFullyResolved) {
                        ClassProto.this.vtableFullyResolved = false;
                        return arrayList;
                    }
                }
                if (!ClassProto.this.isInterface()) {
                    ClassProto classProto2 = ClassProto.this;
                    classProto2.addToVtable(classProto2.getClassDef().getVirtualMethods(), arrayList, true, true);
                    List list = IteratorUtils.toList(ClassProto.this.getDirectInterfaces());
                    Collections.reverse(list);
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    final HashMap map = new HashMap();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        for (Method method : ((ClassDef) it.next()).getVirtualMethods()) {
                            int iFindMethodIndexInVtable = ClassProto.this.findMethodIndexInVtable(arrayList, method);
                            if (iFindMethodIndexInVtable >= 0) {
                                if (ClassProto.this.interfaceMethodOverrides(method, (Method) arrayList.get(iFindMethodIndexInVtable))) {
                                    arrayList.set(iFindMethodIndexInVtable, method);
                                }
                            } else {
                                int iFindMethodIndexInVtable2 = ClassProto.this.findMethodIndexInVtable(arrayList2, method);
                                if (iFindMethodIndexInVtable2 < 0) {
                                    if (ClassProto.this.findMethodIndexInVtable(arrayList3, method) < 0) {
                                        int iFindMethodIndexInVtable3 = ClassProto.this.findMethodIndexInVtable(arrayList4, method);
                                        if (iFindMethodIndexInVtable3 >= 0) {
                                            if (!AccessFlags.ABSTRACT.isSet(method.getAccessFlags()) && !((ClassProto) ClassProto.this.classPath.getClass(((Method) arrayList4.get(iFindMethodIndexInVtable3)).getDefiningClass())).implementsInterface(method.getDefiningClass())) {
                                                Integer num = (Integer) map.get((Method) arrayList4.remove(iFindMethodIndexInVtable3));
                                                num.intValue();
                                                map.put(method, num);
                                                arrayList2.add(method);
                                            }
                                        } else if (!AccessFlags.ABSTRACT.isSet(method.getAccessFlags())) {
                                            arrayList2.add(method);
                                            map.put(method, Integer.valueOf(map.size()));
                                        } else {
                                            arrayList4.add(method);
                                            map.put(method, Integer.valueOf(map.size()));
                                        }
                                    }
                                } else if (!AccessFlags.ABSTRACT.isSet(method.getAccessFlags()) && !((ClassProto) ClassProto.this.classPath.getClass(((Method) arrayList2.get(iFindMethodIndexInVtable2)).getDefiningClass())).implementsInterface(method.getDefiningClass())) {
                                    arrayList3.add((Method) arrayList2.remove(iFindMethodIndexInVtable2));
                                }
                            }
                        }
                    }
                    Comparator<MethodReference> comparator = new Comparator<MethodReference>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.9.1
                        @Override // java.util.Comparator
                        public int compare(MethodReference methodReference, MethodReference methodReference2) {
                            return Integer.compare(((Integer) map.get(methodReference)).intValue(), ((Integer) map.get(methodReference2)).intValue());
                        }
                    };
                    Collections.sort(arrayList2, comparator);
                    Collections.sort(arrayList3, comparator);
                    Collections.sort(arrayList4, comparator);
                    ClassProto.this.addToVtable(arrayList2, arrayList, false, false);
                    ClassProto.this.addToVtable(arrayList3, arrayList, false, false);
                    ClassProto.this.addToVtable(arrayList4, arrayList, false, false);
                }
                return arrayList;
            } catch (UnresolvedClassException unused) {
                arrayList.addAll(((ClassProto) ClassProto.this.classPath.getClass("Ljava/lang/Object;")).getVtable());
                ClassProto.this.vtableFullyResolved = false;
                return arrayList;
            }
        }
    });

    public ClassProto(@Nonnull ClassPath classPath, @Nonnull String str) {
        if (str.charAt(0) != 'L') {
            throw new ExceptionWithContext("Cannot construct ClassProto for non reference type: %s", str);
        }
        this.classPath = classPath;
        this.type = str;
    }

    public String toString() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public ClassPath getClassPath() {
        return this.classPath;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public String getType() {
        return this.type;
    }

    @Nonnull
    public ClassDef getClassDef() {
        return (ClassDef) this.classDefSupplier.get();
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean isInterface() {
        return (getClassDef().getAccessFlags() & AccessFlags.INTERFACE.getValue()) != 0;
    }

    @Nonnull
    protected LinkedHashMap<String, ClassDef> getInterfaces() {
        if (!this.classPath.isArt() || this.classPath.oatVersion < 72) {
            return (LinkedHashMap) this.preDefaultMethodInterfaceSupplier.get();
        }
        return (LinkedHashMap) this.postDefaultMethodInterfaceSupplier.get();
    }

    @Nonnull
    protected Set<String> getUnresolvedInterfaces() {
        Set<String> set = this.unresolvedInterfaces;
        return set == null ? Collections.EMPTY_SET : set;
    }

    @Nonnull
    protected Iterable<ClassDef> getDirectInterfaces() {
        AbstractIterator abstractIteratorFilter = IteratorUtils.filter(getInterfaces().values(), new Predicate<ClassDef>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.4
            @Override // java.util.function.Predicate
            public boolean test(@Nullable ClassDef classDef) {
                return classDef != null;
            }
        });
        if (this.interfacesFullyResolved) {
            return abstractIteratorFilter;
        }
        throw new UnresolvedClassException("Interfaces for class %s not fully resolved: %s", getType(), StringUtils.join(getUnresolvedInterfaces(), ","));
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean implementsInterface(@Nonnull String str) {
        if (getInterfaces().containsKey(str)) {
            return true;
        }
        if (this.interfacesFullyResolved) {
            return false;
        }
        throw new UnresolvedClassException("Interfaces for class %s not fully resolved", getType());
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public String getSuperclass() {
        return getClassDef().getSuperclass();
    }

    private boolean checkInterface(@Nonnull ClassProto classProto) {
        boolean zIsInterface;
        boolean z;
        try {
            zIsInterface = isInterface();
            z = true;
        } catch (UnresolvedClassException unused) {
            zIsInterface = true;
            z = false;
        }
        if (zIsInterface) {
            try {
                if (classProto.implementsInterface(getType())) {
                    return true;
                }
            } catch (UnresolvedClassException e) {
                if (z) {
                    throw e;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        if (((com.android.tools.smali.dexlib2.analysis.ClassProto) r6).checkInterface(r5) != false) goto L24;
     */
    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @javax.annotation.Nonnull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.tools.smali.dexlib2.analysis.TypeProto getCommonSuperclass(@javax.annotation.Nonnull com.android.tools.smali.dexlib2.analysis.TypeProto r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.android.tools.smali.dexlib2.analysis.ClassProto
            if (r0 != 0) goto L9
            com.android.tools.smali.dexlib2.analysis.TypeProto r6 = r6.getCommonSuperclass(r5)
            return r6
        L9:
            if (r5 == r6) goto Lb8
            java.lang.String r0 = r5.getType()
            java.lang.String r1 = r6.getType()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L1b
            goto Lb8
        L1b:
            java.lang.String r0 = r5.getType()
            java.lang.String r1 = "Ljava/lang/Object;"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L29
            goto Lb8
        L29:
            java.lang.String r0 = r6.getType()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L34
            goto L4c
        L34:
            r0 = 1
            r1 = r6
            com.android.tools.smali.dexlib2.analysis.ClassProto r1 = (com.android.tools.smali.dexlib2.analysis.ClassProto) r1     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L42
            boolean r1 = r5.checkInterface(r1)     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L42
            if (r1 == 0) goto L40
            goto Lb8
        L40:
            r1 = 0
            goto L43
        L42:
            r1 = 1
        L43:
            r2 = r6
            com.android.tools.smali.dexlib2.analysis.ClassProto r2 = (com.android.tools.smali.dexlib2.analysis.ClassProto) r2     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L4d
            boolean r2 = r2.checkInterface(r5)     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L4d
            if (r2 == 0) goto L4f
        L4c:
            return r6
        L4d:
            r1 = 1
        L4f:
            if (r1 == 0) goto L58
            com.android.tools.smali.dexlib2.analysis.ClassPath r6 = r5.classPath
            com.android.tools.smali.dexlib2.analysis.TypeProto r6 = r6.getUnknownClass()
            return r6
        L58:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r1.add(r5)
            java.lang.Iterable r2 = com.android.tools.smali.dexlib2.analysis.util.TypeProtoUtils.getSuperclassChain(r5)
            java.util.Iterator r2 = r2.iterator()
            com.android.tools.smali.util.IteratorUtils.addAll(r1, r2)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r2.add(r6)
            java.lang.Iterable r6 = com.android.tools.smali.dexlib2.analysis.util.TypeProtoUtils.getSuperclassChain(r6)
            java.util.Iterator r6 = r6.iterator()
            com.android.tools.smali.util.IteratorUtils.addAll(r2, r6)
            java.util.Collections.reverse(r1)
            java.util.Collections.reverse(r2)
            int r6 = r1.size()
            int r3 = r2.size()
            int r6 = java.lang.Math.min(r6, r3)
            int r6 = r6 - r0
        L91:
            if (r6 < 0) goto Lb1
            java.lang.Object r0 = r1.get(r6)
            com.android.tools.smali.dexlib2.analysis.TypeProto r0 = (com.android.tools.smali.dexlib2.analysis.TypeProto) r0
            java.lang.String r3 = r0.getType()
            java.lang.Object r4 = r2.get(r6)
            com.android.tools.smali.dexlib2.analysis.TypeProto r4 = (com.android.tools.smali.dexlib2.analysis.TypeProto) r4
            java.lang.String r4 = r4.getType()
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto Lae
            return r0
        Lae:
            int r6 = r6 + (-1)
            goto L91
        Lb1:
            com.android.tools.smali.dexlib2.analysis.ClassPath r6 = r5.classPath
            com.android.tools.smali.dexlib2.analysis.TypeProto r6 = r6.getUnknownClass()
            return r6
        Lb8:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.tools.smali.dexlib2.analysis.ClassProto.getCommonSuperclass(com.android.tools.smali.dexlib2.analysis.TypeProto):com.android.tools.smali.dexlib2.analysis.TypeProto");
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public FieldReference getFieldByOffset(int i) {
        if (getInstanceFields().size() == 0) {
            return null;
        }
        return getInstanceFields().get(i);
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public Method getMethodByVtableIndex(int i) {
        List<Method> vtable = getVtable();
        if (i < 0 || i >= vtable.size()) {
            return null;
        }
        return vtable.get(i);
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public int findMethodIndexInVtable(@Nonnull MethodReference methodReference) {
        return findMethodIndexInVtable(getVtable(), methodReference);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findMethodIndexInVtable(@Nonnull List<Method> list, MethodReference methodReference) {
        for (int i = 0; i < list.size(); i++) {
            Method method = list.get(i);
            if (MethodUtil.methodSignaturesMatch(method, methodReference) && (!this.classPath.shouldCheckPackagePrivateAccess() || AnalyzedMethodUtil.canAccess(this, method, true, false, false))) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findMethodIndexInVtableReverse(@Nonnull List<Method> list, MethodReference methodReference) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Method method = list.get(size);
            if (MethodUtil.methodSignaturesMatch(method, methodReference) && (!this.classPath.shouldCheckPackagePrivateAccess() || AnalyzedMethodUtil.canAccess(this, method, true, false, false))) {
                return size;
            }
        }
        return -1;
    }

    @Nonnull
    public SparseArray<FieldReference> getInstanceFields() {
        if (this.classPath.isArt()) {
            return (SparseArray) this.artInstanceFieldsSupplier.get();
        }
        return (SparseArray) this.dalvikInstanceFieldsSupplier.get();
    }

    private static abstract class FieldGap implements Comparable<FieldGap> {
        public final int offset;
        public final int size;

        public static FieldGap newFieldGap(int i, int i2, int i3) {
            if (i3 >= 67) {
                return new FieldGap(i, i2) { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.FieldGap.1
                    @Override // java.lang.Comparable
                    public int compareTo(@Nonnull FieldGap fieldGap) {
                        int iCompare = Integer.compare(fieldGap.size, this.size);
                        return iCompare != 0 ? iCompare : Integer.compare(this.offset, fieldGap.offset);
                    }
                };
            }
            return new FieldGap(i, i2) { // from class: com.android.tools.smali.dexlib2.analysis.ClassProto.FieldGap.2
                @Override // java.lang.Comparable
                public int compareTo(@Nonnull FieldGap fieldGap) {
                    int iCompare = Integer.compare(this.size, fieldGap.size);
                    return iCompare != 0 ? iCompare : Integer.compare(fieldGap.offset, this.offset);
                }
            };
        }

        private FieldGap(int i, int i2) {
            this.offset = i;
            this.size = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNextFieldOffset() {
        SparseArray<FieldReference> instanceFields = getInstanceFields();
        if (instanceFields.size() == 0) {
            return this.classPath.isArt() ? 0 : 8;
        }
        int size = instanceFields.size() - 1;
        int iKeyAt = instanceFields.keyAt(size);
        FieldReference fieldReferenceValueAt = instanceFields.valueAt(size);
        if (this.classPath.isArt()) {
            return iKeyAt + getTypeSize(fieldReferenceValueAt.getType().charAt(0));
        }
        char cCharAt = fieldReferenceValueAt.getType().charAt(0);
        return (cCharAt == 'D' || cCharAt == 'J') ? iKeyAt + 8 : iKeyAt + 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getTypeSize(char c) {
        if (c == 'F' || c == 'L') {
            return 4;
        }
        if (c == 'S') {
            return 2;
        }
        if (c == 'I') {
            return 4;
        }
        if (c == 'J') {
            return 8;
        }
        if (c != 'Z') {
            if (c == '[') {
                return 4;
            }
            switch (c) {
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    return 2;
                case HeaderItem.TYPE_START_OFFSET /* 68 */:
                    return 8;
                default:
                    throw new ExceptionWithContext("Invalid type: %s", Character.valueOf(c));
            }
        }
        return 1;
    }

    @Nonnull
    public List<Method> getVtable() {
        if (!this.classPath.isArt() || this.classPath.oatVersion < 72) {
            return (List) this.preDefaultMethodVtableSupplier.get();
        }
        if (this.classPath.oatVersion < 87) {
            return (List) this.buggyPostDefaultMethodVtableSupplier.get();
        }
        return (List) this.postDefaultMethodVtableSupplier.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToVtable(@Nonnull Iterable<? extends Method> iterable, @Nonnull List<Method> list, boolean z, boolean z2) {
        Iterable<Method> iterable2 = iterable;
        if (z2) {
            ArrayList arrayList = (ArrayList) IteratorUtils.toList(iterable);
            Collections.sort(arrayList);
            iterable2 = arrayList;
        }
        for (Method method : iterable2) {
            int iFindMethodIndexInVtable = findMethodIndexInVtable(list, method);
            if (iFindMethodIndexInVtable < 0) {
                list.add(method);
            } else if (z) {
                list.set(iFindMethodIndexInVtable, method);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte getFieldType(@Nonnull FieldReference fieldReference) {
        char cCharAt = fieldReference.getType().charAt(0);
        if (cCharAt == 'D' || cCharAt == 'J') {
            return (byte) 1;
        }
        return (cCharAt == 'L' || cCharAt == '[') ? (byte) 0 : (byte) 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOverridableByDefaultMethod(@Nonnull Method method) {
        return ((ClassProto) this.classPath.getClass(method.getDefiningClass())).isInterface();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean interfaceMethodOverrides(@Nonnull Method method, @Nonnull Method method2) {
        if (((ClassProto) this.classPath.getClass(method2.getDefiningClass())).isInterface()) {
            return ((ClassProto) this.classPath.getClass(method.getDefiningClass())).implementsInterface(method2.getDefiningClass());
        }
        return false;
    }

    static class ReparentedMethod extends BaseMethodReference implements Method {
        private final String definingClass;
        private final Method method;

        public ReparentedMethod(Method method, String str) {
            this.method = method;
            this.definingClass = str;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getDefiningClass() {
            return this.definingClass;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getName() {
            return this.method.getName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
        @Nonnull
        public List<? extends CharSequence> getParameterTypes() {
            return this.method.getParameterTypes();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
        @Nonnull
        public String getReturnType() {
            return this.method.getReturnType();
        }

        @Override // com.android.tools.smali.dexlib2.iface.Method
        @Nonnull
        public List<? extends MethodParameter> getParameters() {
            return this.method.getParameters();
        }

        @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        public int getAccessFlags() {
            return this.method.getAccessFlags();
        }

        @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Annotatable
        @Nonnull
        public Set<? extends Annotation> getAnnotations() {
            return this.method.getAnnotations();
        }

        @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
            return this.method.getHiddenApiRestrictions();
        }

        @Override // com.android.tools.smali.dexlib2.iface.Method
        @Nullable
        public MethodImplementation getImplementation() {
            return this.method.getImplementation();
        }
    }
}
