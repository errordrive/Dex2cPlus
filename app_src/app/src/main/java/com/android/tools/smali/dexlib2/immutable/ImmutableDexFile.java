package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.Collection;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableDexFile implements DexFile {

    @Nonnull
    protected final Set<? extends ImmutableClassDef> classes;

    @Nonnull
    private final Opcodes opcodes;

    public ImmutableDexFile(@Nonnull Opcodes opcodes, @Nullable Collection<? extends ClassDef> collection) {
        this.classes = ImmutableClassDef.immutableSetOf(collection);
        this.opcodes = opcodes;
    }

    public ImmutableDexFile(@Nonnull Opcodes opcodes, @Nullable Set<? extends ImmutableClassDef> set) {
        this.classes = ImmutableUtils.nullToEmptySet(set);
        this.opcodes = opcodes;
    }

    public static ImmutableDexFile of(DexFile dexFile) {
        if (dexFile instanceof ImmutableDexFile) {
            return (ImmutableDexFile) dexFile;
        }
        return new ImmutableDexFile(dexFile.getOpcodes(), dexFile.getClasses());
    }

    @Override // com.android.tools.smali.dexlib2.iface.DexFile
    @Nonnull
    public Set<? extends ImmutableClassDef> getClasses() {
        return this.classes;
    }

    @Override // com.android.tools.smali.dexlib2.iface.DexFile
    @Nonnull
    public Opcodes getOpcodes() {
        return this.opcodes;
    }
}
