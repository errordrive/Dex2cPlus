package com.android.tools.smali.dexlib2;

import com.android.tools.smali.util.UnmodifiableRangeMap;
import java.util.EnumMap;
import java.util.HashMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class Opcodes {
    public final int api;
    public final int artVersion;

    @Nonnull
    private final EnumMap<Opcode, Short> opcodeValues;

    @Nonnull
    private final HashMap<String, Opcode> opcodesByName;

    @Nonnull
    private final Opcode[] opcodesByValue = new Opcode[256];

    @Nonnull
    public static Opcodes forApi(int i) {
        return new Opcodes(i, -1);
    }

    @Nonnull
    public static Opcodes forArtVersion(int i) {
        return new Opcodes(-1, i);
    }

    @Nonnull
    public static Opcodes forDexVersion(int i) {
        int iMapDexVersionToApi = VersionMap.mapDexVersionToApi(i);
        if (iMapDexVersionToApi == -1) {
            throw new RuntimeException("Unsupported dex version " + i);
        }
        return new Opcodes(iMapDexVersionToApi, -1);
    }

    @Nonnull
    public static Opcodes getDefault() {
        return forApi(20);
    }

    private Opcodes(int i, int i2) {
        int i3;
        UnmodifiableRangeMap<Integer, Short> unmodifiableRangeMap;
        if (i >= 21) {
            this.api = i;
            this.artVersion = VersionMap.mapApiToArtVersion(i);
        } else if (i2 >= 0 && i2 < 39) {
            this.api = VersionMap.mapArtVersionToApi(i2);
            this.artVersion = i2;
        } else {
            this.api = i;
            this.artVersion = i2;
        }
        this.opcodeValues = new EnumMap<>(Opcode.class);
        this.opcodesByName = new HashMap<>();
        if (isArt()) {
            i3 = this.artVersion;
        } else {
            i3 = this.api;
        }
        for (Opcode opcode : Opcode.values()) {
            if (isArt()) {
                unmodifiableRangeMap = opcode.artVersionToValueMap;
            } else {
                unmodifiableRangeMap = opcode.apiToValueMap;
            }
            Short sh = unmodifiableRangeMap.get(Integer.valueOf(i3));
            if (sh != null) {
                if (!opcode.format.isPayloadFormat) {
                    this.opcodesByValue[sh.shortValue()] = opcode;
                }
                this.opcodeValues.put(opcode, sh);
                this.opcodesByName.put(opcode.name.toLowerCase(), opcode);
            }
        }
    }

    @Nullable
    public Opcode getOpcodeByName(@Nonnull String str) {
        return this.opcodesByName.get(str.toLowerCase());
    }

    @Nullable
    public Opcode getOpcodeByValue(int i) {
        if (i == 256) {
            return Opcode.PACKED_SWITCH_PAYLOAD;
        }
        if (i == 512) {
            return Opcode.SPARSE_SWITCH_PAYLOAD;
        }
        if (i == 768) {
            return Opcode.ARRAY_PAYLOAD;
        }
        if (i < 0) {
            return null;
        }
        Opcode[] opcodeArr = this.opcodesByValue;
        if (i < opcodeArr.length) {
            return opcodeArr[i];
        }
        return null;
    }

    @Nullable
    public Short getOpcodeValue(@Nonnull Opcode opcode) {
        return this.opcodeValues.get(opcode);
    }

    public boolean isArt() {
        return this.artVersion != -1;
    }
}
