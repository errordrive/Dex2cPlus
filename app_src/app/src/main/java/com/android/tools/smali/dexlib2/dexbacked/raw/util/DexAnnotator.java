package com.android.tools.smali.dexlib2.dexbacked.raw.util;

import com.android.tools.smali.dexlib2.dexbacked.CDexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationDirectoryItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationSetItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationSetRefList;
import com.android.tools.smali.dexlib2.dexbacked.raw.CallSiteIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.CdexDebugOffsetTable;
import com.android.tools.smali.dexlib2.dexbacked.raw.ClassDataItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.ClassDefItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.CodeItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.DebugInfoItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.EncodedArrayItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.FieldIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.HiddenApiClassDataItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.ItemType;
import com.android.tools.smali.dexlib2.dexbacked.raw.MapItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.MethodHandleItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.MethodIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.ProtoIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator;
import com.android.tools.smali.dexlib2.dexbacked.raw.StringDataItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.StringIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.TypeIdItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.TypeListItem;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexAnnotator extends AnnotatedBytes {
    private static final Map<Integer, Integer> sectionAnnotationOrder = new HashMap();
    private final Map<Integer, SectionAnnotator> annotators;

    @Nonnull
    public final DexBackedDexFile dexFile;

    static {
        int[] iArr = {4096, 0, 1, 2, 3, 4, 5, 7, 8, 6, 8192, ItemType.CODE_ITEM, ItemType.DEBUG_INFO_ITEM, 4097, 4098, 4099, 8194, ItemType.ANNOTATION_ITEM, 8197, ItemType.ANNOTATION_DIRECTORY_ITEM, ItemType.HIDDENAPI_CLASS_DATA_ITEM};
        for (int i = 0; i < 21; i++) {
            sectionAnnotationOrder.put(Integer.valueOf(iArr[i]), Integer.valueOf(i));
        }
    }

    public DexAnnotator(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        super(i);
        this.annotators = new HashMap();
        this.dexFile = dexBackedDexFile;
        for (MapItem mapItem : dexBackedDexFile.getMapItems()) {
            int type = mapItem.getType();
            if (type != 61440) {
                switch (type) {
                    case 0:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), HeaderItem.makeAnnotator(this, mapItem));
                        break;
                    case 1:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), StringIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 2:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), TypeIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 3:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), ProtoIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 4:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), FieldIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 5:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), MethodIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 6:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), ClassDefItem.makeAnnotator(this, mapItem));
                        break;
                    case 7:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), CallSiteIdItem.makeAnnotator(this, mapItem));
                        break;
                    case 8:
                        this.annotators.put(Integer.valueOf(mapItem.getType()), MethodHandleItem.makeAnnotator(this, mapItem));
                        break;
                    default:
                        switch (type) {
                            case 4096:
                                this.annotators.put(Integer.valueOf(mapItem.getType()), MapItem.makeAnnotator(this, mapItem));
                                break;
                            case 4097:
                                this.annotators.put(Integer.valueOf(mapItem.getType()), TypeListItem.makeAnnotator(this, mapItem));
                                break;
                            case 4098:
                                this.annotators.put(Integer.valueOf(mapItem.getType()), AnnotationSetRefList.makeAnnotator(this, mapItem));
                                break;
                            case 4099:
                                this.annotators.put(Integer.valueOf(mapItem.getType()), AnnotationSetItem.makeAnnotator(this, mapItem));
                                break;
                            default:
                                switch (type) {
                                    case 8192:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), ClassDataItem.makeAnnotator(this, mapItem));
                                        break;
                                    case ItemType.CODE_ITEM /* 8193 */:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), CodeItem.makeAnnotator(this, mapItem));
                                        break;
                                    case 8194:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), StringDataItem.makeAnnotator(this, mapItem));
                                        break;
                                    case ItemType.DEBUG_INFO_ITEM /* 8195 */:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), DebugInfoItem.makeAnnotator(this, mapItem));
                                        break;
                                    case ItemType.ANNOTATION_ITEM /* 8196 */:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), AnnotationItem.makeAnnotator(this, mapItem));
                                        break;
                                    case 8197:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), EncodedArrayItem.makeAnnotator(this, mapItem));
                                        break;
                                    case ItemType.ANNOTATION_DIRECTORY_ITEM /* 8198 */:
                                        this.annotators.put(Integer.valueOf(mapItem.getType()), AnnotationDirectoryItem.makeAnnotator(this, mapItem));
                                        break;
                                    default:
                                        throw new RuntimeException(String.format("Unrecognized item type: 0x%x", Integer.valueOf(mapItem.getType())));
                                }
                                break;
                        }
                        break;
                }
            } else {
                this.annotators.put(Integer.valueOf(mapItem.getType()), HiddenApiClassDataItem.makeAnnotator(this, mapItem));
            }
        }
    }

    public void writeAnnotations(Writer writer) throws IOException {
        List<MapItem> mapItems = this.dexFile.getMapItems();
        Comparator<MapItem> comparator = new Comparator<MapItem>() { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator.1
            @Override // java.util.Comparator
            public int compare(MapItem mapItem, MapItem mapItem2) {
                return Integer.compare(((Integer) DexAnnotator.sectionAnnotationOrder.get(Integer.valueOf(mapItem.getType()))).intValue(), ((Integer) DexAnnotator.sectionAnnotationOrder.get(Integer.valueOf(mapItem2.getType()))).intValue());
            }
        };
        MapItem[] mapItemArr = (MapItem[]) mapItems.toArray(new MapItem[mapItems.size()]);
        Arrays.sort(mapItemArr, comparator);
        try {
            DexBackedDexFile dexBackedDexFile = this.dexFile;
            if (dexBackedDexFile instanceof CDexBackedDexFile) {
                moveTo(dexBackedDexFile.getBaseDataOffset() + ((CDexBackedDexFile) this.dexFile).getDebugInfoOffsetsPos());
                CdexDebugOffsetTable.annotate(this, this.dexFile.getBuffer());
            }
            for (MapItem mapItem : mapItemArr) {
                try {
                    this.annotators.get(Integer.valueOf(mapItem.getType())).annotateSection(this);
                } catch (Exception e) {
                    System.err.println(String.format("There was an error while dumping the %s section", ItemType.getItemTypeName(mapItem.getType())));
                    e.printStackTrace(System.err);
                }
            }
            writeAnnotations(writer, this.dexFile.getBuffer().getBuf(), this.dexFile.getBuffer().getBaseOffset());
        } catch (Throwable th) {
            writeAnnotations(writer, this.dexFile.getBuffer().getBuf(), this.dexFile.getBuffer().getBaseOffset());
            throw th;
        }
    }

    @Nullable
    public SectionAnnotator getAnnotator(int i) {
        return this.annotators.get(Integer.valueOf(i));
    }
}
