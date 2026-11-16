package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableMultiDexContainer implements MultiDexContainer<ImmutableDexFile> {
    private final Map<String, ImmutableDexEntry> entries;

    public ImmutableMultiDexContainer(Map<String, ImmutableDexFile> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, ImmutableDexFile> entry : map.entrySet()) {
            ImmutableDexEntry immutableDexEntry = new ImmutableDexEntry(entry.getKey(), entry.getValue());
            map2.put(immutableDexEntry.getEntryName(), immutableDexEntry);
        }
        this.entries = Collections.unmodifiableMap(map2);
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nonnull
    public List<String> getDexEntryNames() {
        return Collections.unmodifiableList(new ArrayList(this.entries.keySet()));
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nullable
    public ImmutableDexEntry getEntry(@Nonnull String str) {
        return this.entries.get(str);
    }

    public class ImmutableDexEntry implements MultiDexContainer.DexEntry<ImmutableDexFile> {
        private final ImmutableDexFile dexFile;
        private final String entryName;

        protected ImmutableDexEntry(String str, ImmutableDexFile immutableDexFile) {
            this.entryName = str;
            this.dexFile = immutableDexFile;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        @Nonnull
        public String getEntryName() {
            return this.entryName;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        @Nonnull
        public ImmutableDexFile getDexFile() {
            return this.dexFile;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        @Nonnull
        public MultiDexContainer<? extends ImmutableDexFile> getContainer() {
            return ImmutableMultiDexContainer.this;
        }
    }
}
