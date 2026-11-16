package com.android.tools.smali.dexlib2.iface.instruction;

import com.android.tools.smali.dexlib2.Opcode;

/* JADX INFO: loaded from: classes.dex */
public interface Instruction {
    int getCodeUnits();

    Opcode getOpcode();
}
