package com.dex2c.plus.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.recyclerview.widget.RecyclerView;
import com.dex2c.plus.R;
import com.dex2c.plus.databinding.ItemDexClassBinding;
import com.dex2c.plus.model.DexClassItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ClassAdapter extends RecyclerView.Adapter<VH> {
    private final Runnable onSelectionChanged;
    private final List<TreeNode> rootNodes = new ArrayList();
    private final List<TreeNode> visibleNodes = new ArrayList();

    public enum NodeType {
        DEX_FILE,
        PACKAGE_FOLDER,
        CLASS_LEAF
    }

    public static class TreeNode {
        public final DexClassItem classItem;
        public int depth;
        public boolean expanded;
        public String id;
        public String title;
        public final NodeType type;
        public final List<TreeNode> children = new ArrayList();
        public final Map<String, TreeNode> childMap = new LinkedHashMap();
        public final List<DexClassItem> descendantClasses = new ArrayList();
        public int cachedSelectedCount = 0;

        public TreeNode(String str, String str2, NodeType nodeType, int i, DexClassItem dexClassItem) {
            this.id = str;
            this.title = str2;
            this.type = nodeType;
            this.depth = i;
            this.classItem = dexClassItem;
        }
    }

    public static class PreparedTree {
        public final boolean allChecked;
        public final List<DexClassItem> matchedItems;
        public final List<TreeNode> rootNodes;
        public final List<TreeNode> visibleNodes;

        public PreparedTree(List<TreeNode> list, List<TreeNode> list2, List<DexClassItem> list3, boolean z) {
            this.rootNodes = list;
            this.visibleNodes = list2;
            this.matchedItems = list3;
            this.allChecked = z;
        }
    }

    public ClassAdapter(Runnable runnable) {
        this.onSelectionChanged = runnable;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (i < 0 || i >= this.visibleNodes.size()) {
            return -1L;
        }
        return this.visibleNodes.get(i).id.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    public static PreparedTree prepareTreeOffThread(List<DexClassItem> list, String str, boolean z) {
        boolean z2;
        String lowerCase = str != null ? str.trim().toLowerCase(Locale.US) : "";
        boolean zIsEmpty = lowerCase.isEmpty();
        ArrayList arrayList = new ArrayList(zIsEmpty ? list != null ? list.size() : 0 : 256);
        if (list == null || list.isEmpty()) {
            z2 = false;
        } else {
            int size = list.size();
            z2 = true;
            for (int i = 0; i < size; i++) {
                DexClassItem dexClassItem = list.get(i);
                if (zIsEmpty || dexClassItem.lowerDisplayName.contains(lowerCase) || dexClassItem.lowerDexEntryName.contains(lowerCase)) {
                    arrayList.add(dexClassItem);
                    if (!dexClassItem.selected) {
                        z2 = false;
                    }
                }
            }
            if (arrayList.isEmpty()) {
                z2 = false;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (!arrayList.isEmpty()) {
            if (z) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    DexClassItem dexClassItem2 = (DexClassItem) arrayList.get(i2);
                    TreeNode treeNode = (TreeNode) linkedHashMap.get(dexClassItem2.dexEntryName);
                    if (treeNode == null) {
                        TreeNode treeNode2 = new TreeNode("dex:" + dexClassItem2.dexEntryName, dexClassItem2.dexEntryName, NodeType.DEX_FILE, 0, null);
                        linkedHashMap.put(dexClassItem2.dexEntryName, treeNode2);
                        arrayList2.add(treeNode2);
                        treeNode = treeNode2;
                    }
                    treeNode.descendantClasses.add(dexClassItem2);
                    if (dexClassItem2.selected) {
                        treeNode.cachedSelectedCount++;
                    }
                }
            } else {
                boolean z3 = !zIsEmpty && arrayList.size() <= 400;
                TreeNode treeNode3 = new TreeNode("virtual", "", NodeType.PACKAGE_FOLDER, -1, null);
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    insertIntoPackageTreeStatic(treeNode3, (DexClassItem) arrayList.get(i3), "cls", 0, z3);
                }
                compactSingleChildPackagesStatic(treeNode3, 0);
                sortTreeRecursiveStatic(treeNode3);
                arrayList2.addAll(treeNode3.children);
            }
            int size4 = arrayList2.size();
            for (int i4 = 0; i4 < size4; i4++) {
                computeSelectedCountRecursiveStatic((TreeNode) arrayList2.get(i4));
            }
            int size5 = arrayList2.size();
            for (int i5 = 0; i5 < size5; i5++) {
                addNodeRecursiveStatic((TreeNode) arrayList2.get(i5), arrayList3);
            }
        }
        return new PreparedTree(arrayList2, arrayList3, arrayList, z2);
    }

    public void applyPreparedTree(PreparedTree preparedTree) {
        this.rootNodes.clear();
        this.visibleNodes.clear();
        if (preparedTree != null) {
            this.rootNodes.addAll(preparedTree.rootNodes);
            this.visibleNodes.addAll(preparedTree.visibleNodes);
        }
        notifyDataSetChanged();
    }

    public void buildTree(List<DexClassItem> list, boolean z, boolean z2) {
        applyPreparedTree(prepareTreeOffThread(list, "", z));
    }

    private static void insertIntoPackageTreeStatic(TreeNode treeNode, DexClassItem dexClassItem, String str, int i, boolean z) {
        String str2 = dexClassItem.displayName;
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 4);
        sb.append(str);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iIndexOf = str2.indexOf(46, i2);
            if (iIndexOf != -1) {
                String strSubstring = str2.substring(i2, iIndexOf);
                sb.append('/');
                sb.append(strSubstring);
                TreeNode treeNode2 = treeNode.childMap.get(strSubstring);
                if (treeNode2 == null) {
                    TreeNode treeNode3 = new TreeNode(sb.toString(), strSubstring, NodeType.PACKAGE_FOLDER, i + i3, null);
                    treeNode3.expanded = z;
                    treeNode.childMap.put(strSubstring, treeNode3);
                    treeNode.children.add(treeNode3);
                    treeNode = treeNode3;
                } else {
                    treeNode = treeNode2;
                }
                treeNode.descendantClasses.add(dexClassItem);
                i2 = iIndexOf + 1;
                i3++;
            } else {
                String strSubstring2 = str2.substring(i2);
                sb.append('/');
                sb.append(strSubstring2);
                TreeNode treeNode4 = new TreeNode(sb.toString(), strSubstring2, NodeType.CLASS_LEAF, i + i3, dexClassItem);
                treeNode4.descendantClasses.add(dexClassItem);
                treeNode.children.add(treeNode4);
                return;
            }
        }
    }

    private static void compactSingleChildPackagesStatic(TreeNode treeNode, int i) {
        treeNode.childMap.clear();
        int size = treeNode.children.size();
        for (int i2 = 0; i2 < size; i2++) {
            TreeNode treeNode2 = treeNode.children.get(i2);
            treeNode2.depth = i;
            treeNode2.childMap.clear();
            while (treeNode2.type == NodeType.PACKAGE_FOLDER) {
                boolean z = true;
                if (treeNode2.children.size() != 1 || treeNode2.children.get(0).type != NodeType.PACKAGE_FOLDER) {
                    break;
                }
                TreeNode treeNode3 = treeNode2.children.get(0);
                treeNode3.childMap.clear();
                treeNode2.title += "." + treeNode3.title;
                treeNode2.id = treeNode3.id;
                if (!treeNode2.expanded && !treeNode3.expanded) {
                    z = false;
                }
                treeNode2.expanded = z;
                treeNode2.children.clear();
                treeNode2.children.addAll(treeNode3.children);
            }
            if (treeNode2.type == NodeType.PACKAGE_FOLDER) {
                compactSingleChildPackagesStatic(treeNode2, i + 1);
            }
        }
    }

    private static void sortTreeRecursiveStatic(TreeNode treeNode) {
        if (treeNode.children.isEmpty()) {
            return;
        }
        Collections.sort(treeNode.children, new Comparator() { // from class: com.dex2c.plus.ui.ClassAdapter$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ClassAdapter.lambda$sortTreeRecursiveStatic$0((ClassAdapter.TreeNode) obj, (ClassAdapter.TreeNode) obj2);
            }
        });
        int size = treeNode.children.size();
        for (int i = 0; i < size; i++) {
            sortTreeRecursiveStatic(treeNode.children.get(i));
        }
    }

    static /* synthetic */ int lambda$sortTreeRecursiveStatic$0(TreeNode treeNode, TreeNode treeNode2) {
        boolean z = treeNode.type == NodeType.PACKAGE_FOLDER;
        boolean z2 = treeNode2.type == NodeType.PACKAGE_FOLDER;
        if (z && !z2) {
            return -1;
        }
        if (z || !z2) {
            return treeNode.title.compareToIgnoreCase(treeNode2.title);
        }
        return 1;
    }

    public void refreshAllSelectionCounts() {
        int size = this.rootNodes.size();
        for (int i = 0; i < size; i++) {
            computeSelectedCountRecursiveStatic(this.rootNodes.get(i));
        }
    }

    private static int computeSelectedCountRecursiveStatic(TreeNode treeNode) {
        int i = 0;
        if (treeNode.type == NodeType.CLASS_LEAF) {
            if (treeNode.classItem != null && treeNode.classItem.selected) {
                i = 1;
            }
            treeNode.cachedSelectedCount = i;
            return i;
        }
        if (treeNode.type == NodeType.DEX_FILE) {
            List<DexClassItem> list = treeNode.descendantClasses;
            int size = list.size();
            int i2 = 0;
            while (i < size) {
                if (list.get(i).selected) {
                    i2++;
                }
                i++;
            }
            treeNode.cachedSelectedCount = i2;
            return i2;
        }
        List<TreeNode> list2 = treeNode.children;
        int size2 = list2.size();
        int iComputeSelectedCountRecursiveStatic = 0;
        while (i < size2) {
            iComputeSelectedCountRecursiveStatic += computeSelectedCountRecursiveStatic(list2.get(i));
            i++;
        }
        treeNode.cachedSelectedCount = iComputeSelectedCountRecursiveStatic;
        return iComputeSelectedCountRecursiveStatic;
    }

    private void rebuildVisibleList() {
        this.visibleNodes.clear();
        int size = this.rootNodes.size();
        for (int i = 0; i < size; i++) {
            addNodeRecursiveStatic(this.rootNodes.get(i), this.visibleNodes);
        }
    }

    private static void addNodeRecursiveStatic(TreeNode treeNode, List<TreeNode> list) {
        list.add(treeNode);
        if (treeNode.type == NodeType.PACKAGE_FOLDER && treeNode.expanded) {
            List<TreeNode> list2 = treeNode.children;
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                addNodeRecursiveStatic(list2.get(i), list);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new VH(ItemDexClassBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final VH vh, int i) {
        final TreeNode treeNode = this.visibleNodes.get(i);
        float f = vh.itemView.getContext().getResources().getDisplayMetrics().density;
        vh.binding.treeRowRoot.setPadding((int) (((treeNode.depth * 18) + 12) * f), 0, (int) (f * 12.0f), 0);
        vh.binding.tvClassName.setText(treeNode.title);
        int size = treeNode.descendantClasses.size();
        int i2 = treeNode.cachedSelectedCount;
        boolean z = size > 0 && i2 == size;
        vh.binding.ivNodeIcon.clearColorFilter();
        if (treeNode.type == NodeType.DEX_FILE) {
            vh.binding.ivExpandArrow.setVisibility(8);
            vh.binding.ivNodeIcon.setImageResource(R.drawable.ic_dex_file);
            vh.binding.tvClassSub.setVisibility(0);
            vh.binding.tvClassSub.setText(i2 + " / " + size + " classes");
        } else if (treeNode.type == NodeType.PACKAGE_FOLDER) {
            vh.binding.ivExpandArrow.setVisibility(0);
            vh.binding.ivExpandArrow.setImageResource(treeNode.expanded ? R.drawable.ic_chevron_down : R.drawable.ic_chevron_right);
            vh.binding.ivNodeIcon.setImageResource(R.drawable.ic_tree_folder);
            vh.binding.tvClassSub.setVisibility(8);
        } else {
            vh.binding.ivExpandArrow.setVisibility(4);
            vh.binding.ivNodeIcon.setImageResource(R.drawable.ic_class_node);
            vh.binding.tvClassSub.setVisibility(8);
        }
        vh.binding.cbClass.setOnCheckedChangeListener(null);
        vh.binding.cbClass.setChecked(z);
        vh.binding.cbClass.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.ClassAdapter$$ExternalSyntheticLambda1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                this.f$0.lambda$onBindViewHolder$1(treeNode, compoundButton, z2);
            }
        });
        vh.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.ClassAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$2(treeNode, vh, view);
            }
        });
        vh.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.dex2c.plus.ui.ClassAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ClassAdapter.lambda$onBindViewHolder$3(vh, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$1(TreeNode treeNode, CompoundButton compoundButton, boolean z) {
        setNodeSelected(treeNode, z);
        refreshAllSelectionCounts();
        notifyDataSetChanged();
        Runnable runnable = this.onSelectionChanged;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$2(TreeNode treeNode, VH vh, View view) {
        if (treeNode.type == NodeType.PACKAGE_FOLDER) {
            treeNode.expanded = !treeNode.expanded;
            rebuildVisibleList();
            notifyDataSetChanged();
            return;
        }
        vh.binding.cbClass.toggle();
    }

    static /* synthetic */ boolean lambda$onBindViewHolder$3(VH vh, View view) {
        view.performHapticFeedback(0);
        vh.binding.cbClass.toggle();
        return true;
    }

    private void setNodeSelected(TreeNode treeNode, boolean z) {
        List<DexClassItem> list = treeNode.descendantClasses;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).selected = z;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.visibleNodes.size();
    }

    static class VH extends RecyclerView.ViewHolder {
        final ItemDexClassBinding binding;

        VH(ItemDexClassBinding itemDexClassBinding) {
            super(itemDexClassBinding.getRoot());
            this.binding = itemDexClassBinding;
        }
    }
}
