package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableSwitchElement implements SwitchElement {
    private static final ImmutableConverter<ImmutableSwitchElement, SwitchElement> CONVERTER = new ImmutableConverter<ImmutableSwitchElement, SwitchElement>() { // from class: com.android.tools.smali.dexlib2.immutable.instruction.ImmutableSwitchElement.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull SwitchElement switchElement) {
            return switchElement instanceof ImmutableSwitchElement;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableSwitchElement makeImmutable(@Nonnull SwitchElement switchElement) {
            return ImmutableSwitchElement.of(switchElement);
        }
    };
    protected final int key;
    protected final int offset;

    public ImmutableSwitchElement(int i, int i2) {
        this.key = i;
        this.offset = i2;
    }

    @Nonnull
    public static ImmutableSwitchElement of(SwitchElement switchElement) {
        if (switchElement instanceof ImmutableSwitchElement) {
            return (ImmutableSwitchElement) switchElement;
        }
        return new ImmutableSwitchElement(switchElement.getKey(), switchElement.getOffset());
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
    public int getKey() {
        return this.key;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
    public int getOffset() {
        return this.offset;
    }

    @Nonnull
    public static List<ImmutableSwitchElement> immutableListOf(@Nullable List<? extends SwitchElement> list) {
        return CONVERTER.toList(list);
    }
}
