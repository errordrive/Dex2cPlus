package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.base.BaseExceptionHandler;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BuilderExceptionHandler extends BaseExceptionHandler {

    @Nonnull
    protected final Label handler;

    private BuilderExceptionHandler(@Nonnull Label label) {
        this.handler = label;
    }

    @Nonnull
    public Label getHandler() {
        return this.handler;
    }

    static BuilderExceptionHandler newExceptionHandler(@Nullable final TypeReference typeReference, @Nonnull Label label) {
        if (typeReference == null) {
            return newExceptionHandler(label);
        }
        return new BuilderExceptionHandler(label) { // from class: com.android.tools.smali.dexlib2.builder.BuilderExceptionHandler.1
            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            @Nullable
            public String getExceptionType() {
                return typeReference.getType();
            }

            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            public int getHandlerCodeAddress() {
                return this.handler.getCodeAddress();
            }

            @Override // com.android.tools.smali.dexlib2.base.BaseExceptionHandler, com.android.tools.smali.dexlib2.iface.ExceptionHandler
            @Nullable
            public TypeReference getExceptionTypeReference() {
                return typeReference;
            }
        };
    }

    static BuilderExceptionHandler newExceptionHandler(@Nonnull Label label) {
        return new BuilderExceptionHandler(label) { // from class: com.android.tools.smali.dexlib2.builder.BuilderExceptionHandler.2
            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            @Nullable
            public String getExceptionType() {
                return null;
            }

            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            public int getHandlerCodeAddress() {
                return this.handler.getCodeAddress();
            }
        };
    }

    static BuilderExceptionHandler newExceptionHandler(@Nullable final String str, @Nonnull Label label) {
        if (str == null) {
            return newExceptionHandler(label);
        }
        return new BuilderExceptionHandler(label) { // from class: com.android.tools.smali.dexlib2.builder.BuilderExceptionHandler.3
            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            @Nullable
            public String getExceptionType() {
                return str;
            }

            @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
            public int getHandlerCodeAddress() {
                return this.handler.getCodeAddress();
            }
        };
    }
}
