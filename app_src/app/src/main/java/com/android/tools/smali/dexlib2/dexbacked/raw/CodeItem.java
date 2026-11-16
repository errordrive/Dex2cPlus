package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.VerificationError;
import com.android.tools.smali.dexlib2.dexbacked.CDexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedInstruction;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.instruction.FieldOffsetInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.InlineIndexInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.NarrowLiteralInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OffsetInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.ThreeRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.TwoRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.VerificationErrorInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.VtableIndexInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.WideLiteralInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.SparseSwitchPayload;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.NumberUtils;
import com.android.tools.smali.util.StringUtils;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class CodeItem {
    public static int CDEX_INSTRUCTIONS_SIZE_AND_PREHEADER_FLAGS_OFFSET = 2;
    public static int CDEX_INSTRUCTIONS_SIZE_SHIFT = 5;
    public static int CDEX_INS_COUNT_SHIFT = 8;
    public static int CDEX_OUTS_COUNT_SHIFT = 4;
    public static int CDEX_PREHEADER_FLAGS_MASK = 31;
    public static int CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE = 16;
    public static int CDEX_PREHEADER_FLAG_INS_COUNT = 2;
    public static int CDEX_PREHEADER_FLAG_OUTS_COUNT = 4;
    public static int CDEX_PREHEADER_FLAG_REGISTER_COUNT = 1;
    public static int CDEX_PREHEADER_FLAG_TRIES_COUNT = 8;
    public static int CDEX_REGISTER_COUNT_SHIFT = 12;
    public static int CDEX_TRIES_SIZE_SHIFT = 0;
    public static final int DEBUG_INFO_OFFSET = 8;
    public static final int INSTRUCTION_COUNT_OFFSET = 12;
    public static final int INSTRUCTION_START_OFFSET = 16;
    public static final int INS_OFFSET = 2;
    public static final int OUTS_OFFSET = 4;
    public static final int REGISTERS_OFFSET = 0;
    public static final int TRIES_SIZE_OFFSET = 6;

    public static class TryItem {
        public static final int CODE_UNIT_COUNT_OFFSET = 4;
        public static final int HANDLER_OFFSET = 6;
        public static final int ITEM_SIZE = 8;
        public static final int START_ADDRESS_OFFSET = 0;
    }

    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        if (dexAnnotator.dexFile instanceof CDexBackedDexFile) {
            return makeAnnotatorForCDex(dexAnnotator, mapItem);
        }
        return makeAnnotatorForDex(dexAnnotator, mapItem);
    }

    @Nonnull
    private static SectionAnnotator makeAnnotatorForDex(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new CodeItemAnnotator(dexAnnotator, mapItem);
    }

    @Nonnull
    private static SectionAnnotator makeAnnotatorForCDex(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new CodeItemAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem.1
            private List<Integer> sortedItems;

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public void annotateSection(@Nonnull AnnotatedBytes annotatedBytes) {
                ArrayList arrayList = new ArrayList(this.itemIdentities.keySet());
                this.sortedItems = arrayList;
                arrayList.sort(new Comparator() { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem$1$$ExternalSyntheticLambda1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ((Integer) obj).compareTo((Integer) obj2);
                    }
                });
                annotatedBytes.moveTo(this.sectionOffset);
                annotateSectionInner(annotatedBytes, this.itemIdentities.size());
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected int getItemOffset(int i, int i2) {
                return this.sortedItems.get(i).intValue();
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem.CodeItemAnnotator
            protected CodeItemAnnotator.PreInstructionInfo annotatePreInstructionFields(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader, @Nullable String str) {
                char c;
                int ushort = dexReader.readUshort();
                int i = (ushort >> CodeItem.CDEX_TRIES_SIZE_SHIFT) & 15;
                int i2 = (ushort >> CodeItem.CDEX_OUTS_COUNT_SHIFT) & 15;
                int i3 = (ushort >> CodeItem.CDEX_INS_COUNT_SHIFT) & 15;
                int i4 = (ushort >> CodeItem.CDEX_REGISTER_COUNT_SHIFT) & 15;
                int cursor = annotatedBytes.getCursor();
                annotatedBytes.annotate(2, "tries_size = %d", Integer.valueOf(i));
                annotatedBytes.annotate(0, "outs_size = %d", Integer.valueOf(i2));
                annotatedBytes.annotate(0, "ins_size = %d", Integer.valueOf(i3));
                annotatedBytes.annotate(0, "registers_size = %d", Integer.valueOf(i4));
                int ushort2 = dexReader.readUshort();
                int i5 = ushort2 >> CodeItem.CDEX_INSTRUCTIONS_SIZE_SHIFT;
                annotatedBytes.annotate(2, "insns_size = %d", Integer.valueOf(i5));
                int cursor2 = annotatedBytes.getCursor();
                if ((CodeItem.CDEX_PREHEADER_FLAGS_MASK & ushort2) != 0) {
                    int iBitCount = Integer.bitCount(CodeItem.CDEX_PREHEADER_FLAGS_MASK & ushort2);
                    if ((CodeItem.CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE & ushort2) != 0) {
                        iBitCount++;
                    }
                    annotatedBytes.moveTo(cursor - (iBitCount * 2));
                    annotatedBytes.deindent();
                    annotatedBytes.annotate(0, "[preheader for next code_item]", new Object[0]);
                    annotatedBytes.indent();
                    annotatedBytes.moveTo(cursor2);
                }
                if ((CodeItem.CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE & ushort2) != 0) {
                    annotatedBytes.annotate(0, "insns_size_preheader_flag=1", new Object[0]);
                    dexReader.setOffset(cursor - 2);
                    int ushort3 = dexReader.readUshort();
                    cursor -= 4;
                    dexReader.setOffset(cursor);
                    int ushort4 = ushort3 + dexReader.readUshort();
                    annotatedBytes.moveTo(cursor);
                    int i6 = i5 + ushort4;
                    c = 1;
                    annotatedBytes.annotate(2, "insns_size = %d + %d = %d", Integer.valueOf(i5), Integer.valueOf(ushort4), Integer.valueOf(i6));
                    annotatedBytes.moveTo(cursor2);
                    i5 = i6;
                } else {
                    c = 1;
                }
                if ((CodeItem.CDEX_PREHEADER_FLAG_REGISTER_COUNT & ushort2) != 0) {
                    annotatedBytes.annotate(0, "registers_size_preheader_flag=1", new Object[0]);
                    cursor -= 2;
                    annotatedBytes.moveTo(cursor);
                    dexReader.setOffset(cursor);
                    int ushort5 = dexReader.readUshort();
                    Integer numValueOf = Integer.valueOf(i4);
                    Integer numValueOf2 = Integer.valueOf(ushort5);
                    Integer numValueOf3 = Integer.valueOf(i4 + ushort5);
                    Object[] objArr = new Object[3];
                    objArr[0] = numValueOf;
                    objArr[c] = numValueOf2;
                    objArr[2] = numValueOf3;
                    annotatedBytes.annotate(2, "registers_size = %d + %d = %d", objArr);
                    annotatedBytes.moveTo(cursor2);
                }
                if ((CodeItem.CDEX_PREHEADER_FLAG_INS_COUNT & ushort2) != 0) {
                    annotatedBytes.annotate(0, "ins_size_preheader_flag=1", new Object[0]);
                    cursor -= 2;
                    annotatedBytes.moveTo(cursor);
                    dexReader.setOffset(cursor);
                    int ushort6 = dexReader.readUshort();
                    Integer numValueOf4 = Integer.valueOf(i3);
                    Integer numValueOf5 = Integer.valueOf(ushort6);
                    Integer numValueOf6 = Integer.valueOf(i3 + ushort6);
                    Object[] objArr2 = new Object[3];
                    objArr2[0] = numValueOf4;
                    objArr2[c] = numValueOf5;
                    objArr2[2] = numValueOf6;
                    annotatedBytes.annotate(2, "ins_size = %d + %d = %d", objArr2);
                    annotatedBytes.moveTo(cursor2);
                }
                if ((CodeItem.CDEX_PREHEADER_FLAG_OUTS_COUNT & ushort2) != 0) {
                    annotatedBytes.annotate(0, "outs_size_preheader_flag=1", new Object[0]);
                    cursor -= 2;
                    annotatedBytes.moveTo(cursor);
                    dexReader.setOffset(cursor);
                    int ushort7 = dexReader.readUshort();
                    Integer numValueOf7 = Integer.valueOf(i2);
                    Integer numValueOf8 = Integer.valueOf(ushort7);
                    Integer numValueOf9 = Integer.valueOf(i2 + ushort7);
                    Object[] objArr3 = new Object[3];
                    objArr3[0] = numValueOf7;
                    objArr3[c] = numValueOf8;
                    objArr3[2] = numValueOf9;
                    annotatedBytes.annotate(2, "outs_size = %d + %d = %d", objArr3);
                    annotatedBytes.moveTo(cursor2);
                }
                if ((CodeItem.CDEX_PREHEADER_FLAG_TRIES_COUNT & ushort2) != 0) {
                    annotatedBytes.annotate(0, "tries_size_preheader_flag=1", new Object[0]);
                    int i7 = cursor - 2;
                    annotatedBytes.moveTo(i7);
                    dexReader.setOffset(i7);
                    int ushort8 = dexReader.readUshort();
                    int i8 = i + ushort8;
                    Integer numValueOf10 = Integer.valueOf(i);
                    Integer numValueOf11 = Integer.valueOf(ushort8);
                    Integer numValueOf12 = Integer.valueOf(i8);
                    Object[] objArr4 = new Object[3];
                    objArr4[0] = numValueOf10;
                    objArr4[c] = numValueOf11;
                    objArr4[2] = numValueOf12;
                    annotatedBytes.annotate(2, "tries_size = %d + %d = %d", objArr4);
                    annotatedBytes.moveTo(cursor2);
                    i = i8;
                }
                dexReader.setOffset(cursor2);
                return new CodeItemAnnotator.PreInstructionInfo(i, i5);
            }
        };
    }

    private static class CodeItemAnnotator extends SectionAnnotator {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private SectionAnnotator debugInfoAnnotator;

        @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
        public int getItemAlignment() {
            return 4;
        }

        public CodeItemAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
            super(dexAnnotator, mapItem);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
        @Nonnull
        public String getItemName() {
            return "code_item";
        }

        protected class PreInstructionInfo {
            public int instructionSize;
            public int triesCount;

            public PreInstructionInfo(int i, int i2) {
                this.triesCount = i;
                this.instructionSize = i2;
            }
        }

        protected PreInstructionInfo annotatePreInstructionFields(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader, @Nullable String str) {
            annotatedBytes.annotate(2, "registers_size = %d", Integer.valueOf(dexReader.readUshort()));
            annotatedBytes.annotate(2, "ins_size = %d", Integer.valueOf(dexReader.readUshort()));
            annotatedBytes.annotate(2, "outs_size = %d", Integer.valueOf(dexReader.readUshort()));
            int ushort = dexReader.readUshort();
            annotatedBytes.annotate(2, "tries_size = %d", Integer.valueOf(ushort));
            int i = dexReader.readInt();
            annotatedBytes.annotate(4, "debug_info_off = 0x%x", Integer.valueOf(i));
            if (i > 0) {
                addDebugInfoIdentity(i, str);
            }
            int smallUint = dexReader.readSmallUint();
            annotatedBytes.annotate(4, "insns_size = 0x%x", Integer.valueOf(smallUint));
            return new PreInstructionInfo(ushort, smallUint);
        }

        protected void annotateInstructions(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
            annotatedBytes.annotate(0, "instructions:", new Object[0]);
            annotatedBytes.indent();
            int i2 = i * 2;
            annotatedBytes.setLimit(annotatedBytes.getCursor(), annotatedBytes.getCursor() + i2);
            int offset = dexReader.getOffset() + i2;
            while (dexReader.getOffset() < offset) {
                try {
                    try {
                        Instruction from = DexBackedInstruction.readFrom(this.dexFile, dexReader);
                        if (dexReader.getOffset() > offset) {
                            annotatedBytes.annotateTo(offset, "truncated instruction", new Object[0]);
                            dexReader.setOffset(offset);
                        } else {
                            switch (AnonymousClass2.$SwitchMap$com$android$tools$smali$dexlib2$Format[from.getOpcode().format.ordinal()]) {
                                case 1:
                                    annotateInstruction10x(annotatedBytes, from);
                                    break;
                                case 2:
                                    annotateInstruction35c(annotatedBytes, (Instruction35c) from);
                                    break;
                                case 3:
                                    annotateInstruction3rc(annotatedBytes, (Instruction3rc) from);
                                    break;
                                case 4:
                                    annotateArrayPayload(annotatedBytes, (ArrayPayload) from);
                                    break;
                                case 5:
                                    annotatePackedSwitchPayload(annotatedBytes, (PackedSwitchPayload) from);
                                    break;
                                case 6:
                                    annotateSparseSwitchPayload(annotatedBytes, (SparseSwitchPayload) from);
                                    break;
                                default:
                                    annotateDefaultInstruction(annotatedBytes, from);
                                    break;
                            }
                        }
                    } catch (ExceptionWithContext e) {
                        e.printStackTrace(System.err);
                        annotatedBytes.annotate(0, "annotation error: %s", e.getMessage());
                        annotatedBytes.moveTo(offset);
                        dexReader.setOffset(offset);
                    }
                } catch (Throwable th) {
                    annotatedBytes.clearLimit();
                    annotatedBytes.deindent();
                    throw th;
                }
            }
            annotatedBytes.clearLimit();
            annotatedBytes.deindent();
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0072 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void annotatePostInstructionFields(@javax.annotation.Nonnull com.android.tools.smali.dexlib2.util.AnnotatedBytes r12, @javax.annotation.Nonnull com.android.tools.smali.dexlib2.dexbacked.DexReader<? extends com.android.tools.smali.dexlib2.dexbacked.DexBuffer> r13, int r14) {
            /*
                Method dump skipped, instruction units count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem.CodeItemAnnotator.annotatePostInstructionFields(com.android.tools.smali.dexlib2.util.AnnotatedBytes, com.android.tools.smali.dexlib2.dexbacked.DexReader, int):void");
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
        public void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
            try {
                DexReader<? extends DexBuffer> dexReader = this.dexFile.getBuffer().readerAt(annotatedBytes.getCursor());
                PreInstructionInfo preInstructionInfoAnnotatePreInstructionFields = annotatePreInstructionFields(annotatedBytes, dexReader, str);
                annotateInstructions(annotatedBytes, dexReader, preInstructionInfoAnnotatePreInstructionFields.instructionSize);
                annotatePostInstructionFields(annotatedBytes, dexReader, preInstructionInfoAnnotatePreInstructionFields.triesCount);
            } catch (ExceptionWithContext e) {
                annotatedBytes.annotate(0, "annotation error: %s", e.getMessage());
            }
        }

        private String formatRegister(int i) {
            return String.format("v%d", Integer.valueOf(i));
        }

        private void annotateInstruction10x(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull Instruction instruction) {
            annotatedBytes.annotate(2, instruction.getOpcode().name, new Object[0]);
        }

        private void annotateInstruction35c(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull Instruction35c instruction35c) {
            ArrayList arrayList = new ArrayList();
            int registerCount = instruction35c.getRegisterCount();
            if (registerCount == 1) {
                arrayList.add(formatRegister(instruction35c.getRegisterC()));
            } else if (registerCount == 2) {
                arrayList.add(formatRegister(instruction35c.getRegisterC()));
                arrayList.add(formatRegister(instruction35c.getRegisterD()));
            } else if (registerCount == 3) {
                arrayList.add(formatRegister(instruction35c.getRegisterC()));
                arrayList.add(formatRegister(instruction35c.getRegisterD()));
                arrayList.add(formatRegister(instruction35c.getRegisterE()));
            } else if (registerCount == 4) {
                arrayList.add(formatRegister(instruction35c.getRegisterC()));
                arrayList.add(formatRegister(instruction35c.getRegisterD()));
                arrayList.add(formatRegister(instruction35c.getRegisterE()));
                arrayList.add(formatRegister(instruction35c.getRegisterF()));
            } else if (registerCount == 5) {
                arrayList.add(formatRegister(instruction35c.getRegisterC()));
                arrayList.add(formatRegister(instruction35c.getRegisterD()));
                arrayList.add(formatRegister(instruction35c.getRegisterE()));
                arrayList.add(formatRegister(instruction35c.getRegisterF()));
                arrayList.add(formatRegister(instruction35c.getRegisterG()));
            }
            annotatedBytes.annotate(6, String.format("%s {%s}, %s", instruction35c.getOpcode().name, StringUtils.join(arrayList, ", "), instruction35c.getReference()), new Object[0]);
        }

        private void annotateInstruction3rc(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull Instruction3rc instruction3rc) {
            int startRegister = instruction3rc.getStartRegister();
            annotatedBytes.annotate(6, String.format("%s {%s .. %s}, %s", instruction3rc.getOpcode().name, formatRegister(startRegister), formatRegister((instruction3rc.getRegisterCount() + startRegister) - 1), instruction3rc.getReference()), new Object[0]);
        }

        private void annotateDefaultInstruction(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull Instruction instruction) {
            String string;
            ArrayList arrayList = new ArrayList();
            if (instruction instanceof OneRegisterInstruction) {
                arrayList.add(formatRegister(((OneRegisterInstruction) instruction).getRegisterA()));
                if (instruction instanceof TwoRegisterInstruction) {
                    arrayList.add(formatRegister(((TwoRegisterInstruction) instruction).getRegisterB()));
                    if (instruction instanceof ThreeRegisterInstruction) {
                        arrayList.add(formatRegister(((ThreeRegisterInstruction) instruction).getRegisterC()));
                    }
                }
            } else if (instruction instanceof VerificationErrorInstruction) {
                String verificationErrorName = VerificationError.getVerificationErrorName(((VerificationErrorInstruction) instruction).getVerificationError());
                if (verificationErrorName != null) {
                    arrayList.add(verificationErrorName);
                } else {
                    arrayList.add("invalid verification error type");
                }
            }
            if (instruction instanceof ReferenceInstruction) {
                ReferenceInstruction referenceInstruction = (ReferenceInstruction) instruction;
                Reference reference = referenceInstruction.getReference();
                if (referenceInstruction.getReferenceType() == 0) {
                    string = DexFormatter.INSTANCE.getQuotedString((StringReference) reference);
                } else {
                    string = referenceInstruction.getReference().toString();
                }
                arrayList.add(string);
            } else if (instruction instanceof OffsetInstruction) {
                int codeOffset = ((OffsetInstruction) instruction).getCodeOffset();
                arrayList.add(String.format("%s0x%x", codeOffset >= 0 ? "+" : "-", Integer.valueOf(Math.abs(codeOffset))));
            } else if (instruction instanceof NarrowLiteralInstruction) {
                int narrowLiteral = ((NarrowLiteralInstruction) instruction).getNarrowLiteral();
                if (NumberUtils.isLikelyFloat(narrowLiteral)) {
                    arrayList.add(String.format("%d # %f", Integer.valueOf(narrowLiteral), Float.valueOf(Float.intBitsToFloat(narrowLiteral))));
                } else {
                    arrayList.add(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(narrowLiteral)));
                }
            } else if (instruction instanceof WideLiteralInstruction) {
                long wideLiteral = ((WideLiteralInstruction) instruction).getWideLiteral();
                if (NumberUtils.isLikelyDouble(wideLiteral)) {
                    arrayList.add(String.format("%d # %f", Long.valueOf(wideLiteral), Double.valueOf(Double.longBitsToDouble(wideLiteral))));
                } else {
                    arrayList.add(String.format(TimeModel.NUMBER_FORMAT, Long.valueOf(wideLiteral)));
                }
            } else if (instruction instanceof FieldOffsetInstruction) {
                arrayList.add(String.format("field@0x%x", Integer.valueOf(((FieldOffsetInstruction) instruction).getFieldOffset())));
            } else if (instruction instanceof VtableIndexInstruction) {
                arrayList.add(String.format("vtable@%d", Integer.valueOf(((VtableIndexInstruction) instruction).getVtableIndex())));
            } else if (instruction instanceof InlineIndexInstruction) {
                arrayList.add(String.format("inline@%d", Integer.valueOf(((InlineIndexInstruction) instruction).getInlineIndex())));
            }
            annotatedBytes.annotate(instruction.getCodeUnits() * 2, "%s %s", instruction.getOpcode().name, StringUtils.join(arrayList, ", "));
        }

        private void annotateArrayPayload(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull ArrayPayload arrayPayload) {
            List<Number> arrayElements = arrayPayload.getArrayElements();
            int elementWidth = arrayPayload.getElementWidth();
            annotatedBytes.annotate(2, arrayPayload.getOpcode().name, new Object[0]);
            annotatedBytes.indent();
            annotatedBytes.annotate(2, "element_width = %d", Integer.valueOf(elementWidth));
            annotatedBytes.annotate(4, "size = %d", Integer.valueOf(arrayElements.size()));
            if (arrayElements.size() > 0) {
                annotatedBytes.annotate(0, "elements:", new Object[0]);
            }
            annotatedBytes.indent();
            if (arrayElements.size() > 0) {
                for (int i = 0; i < arrayElements.size(); i++) {
                    if (elementWidth == 8) {
                        long jLongValue = arrayElements.get(i).longValue();
                        if (NumberUtils.isLikelyDouble(jLongValue)) {
                            annotatedBytes.annotate(elementWidth, "element[%d] = %d # %f", Integer.valueOf(i), Long.valueOf(jLongValue), Double.valueOf(Double.longBitsToDouble(jLongValue)));
                        } else {
                            annotatedBytes.annotate(elementWidth, "element[%d] = %d", Integer.valueOf(i), Long.valueOf(jLongValue));
                        }
                    } else {
                        int iIntValue = arrayElements.get(i).intValue();
                        if (NumberUtils.isLikelyFloat(iIntValue)) {
                            annotatedBytes.annotate(elementWidth, "element[%d] = %d # %f", Integer.valueOf(i), Integer.valueOf(iIntValue), Float.valueOf(Float.intBitsToFloat(iIntValue)));
                        } else {
                            annotatedBytes.annotate(elementWidth, "element[%d] = %d", Integer.valueOf(i), Integer.valueOf(iIntValue));
                        }
                    }
                }
            }
            if (annotatedBytes.getCursor() % 2 != 0) {
                annotatedBytes.annotate(1, "padding", new Object[0]);
            }
            annotatedBytes.deindent();
            annotatedBytes.deindent();
        }

        private void annotatePackedSwitchPayload(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull PackedSwitchPayload packedSwitchPayload) {
            List<? extends SwitchElement> switchElements = packedSwitchPayload.getSwitchElements();
            annotatedBytes.annotate(2, packedSwitchPayload.getOpcode().name, new Object[0]);
            annotatedBytes.indent();
            annotatedBytes.annotate(2, "size = %d", Integer.valueOf(switchElements.size()));
            if (switchElements.size() == 0) {
                annotatedBytes.annotate(4, "first_key", new Object[0]);
            } else {
                annotatedBytes.annotate(4, "first_key = %d", Integer.valueOf(switchElements.get(0).getKey()));
                annotatedBytes.annotate(0, "targets:", new Object[0]);
                annotatedBytes.indent();
                for (int i = 0; i < switchElements.size(); i++) {
                    annotatedBytes.annotate(4, "target[%d] = %d", Integer.valueOf(i), Integer.valueOf(switchElements.get(i).getOffset()));
                }
                annotatedBytes.deindent();
            }
            annotatedBytes.deindent();
        }

        private void annotateSparseSwitchPayload(@Nonnull AnnotatedBytes annotatedBytes, @Nonnull SparseSwitchPayload sparseSwitchPayload) {
            List<? extends SwitchElement> switchElements = sparseSwitchPayload.getSwitchElements();
            annotatedBytes.annotate(2, sparseSwitchPayload.getOpcode().name, new Object[0]);
            annotatedBytes.indent();
            annotatedBytes.annotate(2, "size = %d", Integer.valueOf(switchElements.size()));
            if (switchElements.size() > 0) {
                annotatedBytes.annotate(0, "keys:", new Object[0]);
                annotatedBytes.indent();
                for (int i = 0; i < switchElements.size(); i++) {
                    annotatedBytes.annotate(4, "key[%d] = %d", Integer.valueOf(i), Integer.valueOf(switchElements.get(i).getKey()));
                }
                annotatedBytes.deindent();
                annotatedBytes.annotate(0, "targets:", new Object[0]);
                annotatedBytes.indent();
                for (int i2 = 0; i2 < switchElements.size(); i2++) {
                    annotatedBytes.annotate(4, "target[%d] = %d", Integer.valueOf(i2), Integer.valueOf(switchElements.get(i2).getOffset()));
                }
                annotatedBytes.deindent();
            }
            annotatedBytes.deindent();
        }

        private void addDebugInfoIdentity(int i, String str) {
            SectionAnnotator sectionAnnotator = this.debugInfoAnnotator;
            if (sectionAnnotator != null) {
                sectionAnnotator.setItemIdentity(i, str);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Format;

        static {
            int[] iArr = new int[Format.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Format = iArr;
            try {
                iArr[Format.Format10x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rc.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.ArrayPayload.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.PackedSwitchPayload.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.SparseSwitchPayload.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }
}
