package com.android.tools.smali.dexlib2.writer.builder;

import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderTypeList extends AbstractList<BuilderTypeReference> {
    static final BuilderTypeList EMPTY = new BuilderTypeList(Collections.EMPTY_LIST);
    int offset = 0;

    @Nonnull
    final List<? extends BuilderTypeReference> types;

    public BuilderTypeList(@Nonnull List<? extends BuilderTypeReference> list) {
        this.types = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public BuilderTypeReference get(int i) {
        return this.types.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.types.size();
    }

    public int getOffset() {
        return this.offset;
    }

    public void setOffset(int i) {
        this.offset = i;
    }
}
