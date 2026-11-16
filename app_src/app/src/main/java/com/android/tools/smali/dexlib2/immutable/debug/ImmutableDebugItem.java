package com.android.tools.smali.dexlib2.immutable.debug;

import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.debug.EndLocal;
import com.android.tools.smali.dexlib2.iface.debug.EpilogueBegin;
import com.android.tools.smali.dexlib2.iface.debug.LineNumber;
import com.android.tools.smali.dexlib2.iface.debug.PrologueEnd;
import com.android.tools.smali.dexlib2.iface.debug.RestartLocal;
import com.android.tools.smali.dexlib2.iface.debug.SetSourceFile;
import com.android.tools.smali.dexlib2.iface.debug.StartLocal;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableDebugItem implements DebugItem {
    private static final ImmutableConverter<ImmutableDebugItem, DebugItem> CONVERTER = new ImmutableConverter<ImmutableDebugItem, DebugItem>() { // from class: com.android.tools.smali.dexlib2.immutable.debug.ImmutableDebugItem.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull DebugItem debugItem) {
            return debugItem instanceof ImmutableDebugItem;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableDebugItem makeImmutable(@Nonnull DebugItem debugItem) {
            return ImmutableDebugItem.of(debugItem);
        }
    };
    protected final int codeAddress;

    public ImmutableDebugItem(int i) {
        this.codeAddress = i;
    }

    @Nonnull
    public static ImmutableDebugItem of(DebugItem debugItem) {
        if (debugItem instanceof ImmutableDebugItem) {
            return (ImmutableDebugItem) debugItem;
        }
        switch (debugItem.getDebugItemType()) {
            case 3:
                return ImmutableStartLocal.of((StartLocal) debugItem);
            case 4:
            default:
                throw new ExceptionWithContext("Invalid debug item type: %d", Integer.valueOf(debugItem.getDebugItemType()));
            case 5:
                return ImmutableEndLocal.of((EndLocal) debugItem);
            case 6:
                return ImmutableRestartLocal.of((RestartLocal) debugItem);
            case 7:
                return ImmutablePrologueEnd.of((PrologueEnd) debugItem);
            case 8:
                return ImmutableEpilogueBegin.of((EpilogueBegin) debugItem);
            case 9:
                return ImmutableSetSourceFile.of((SetSourceFile) debugItem);
            case 10:
                return ImmutableLineNumber.of((LineNumber) debugItem);
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
    public int getCodeAddress() {
        return this.codeAddress;
    }

    @Nonnull
    public static List<ImmutableDebugItem> immutableListOf(@Nullable Iterable<? extends DebugItem> iterable) {
        return CONVERTER.toList(iterable);
    }
}
