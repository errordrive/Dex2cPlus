package com.android.tools.smali.dexlib2.iface.reference;

/* JADX INFO: loaded from: classes.dex */
public interface Reference {
    void validateReference() throws InvalidReferenceException;

    public static class InvalidReferenceException extends Exception {
        private final String invalidReferenceRepresentation;

        public InvalidReferenceException(String str) {
            super("Invalid reference");
            this.invalidReferenceRepresentation = str;
        }

        public InvalidReferenceException(String str, String str2) {
            super(str2);
            this.invalidReferenceRepresentation = str;
        }

        public InvalidReferenceException(String str, String str2, Throwable th) {
            super(str2, th);
            this.invalidReferenceRepresentation = str;
        }

        public InvalidReferenceException(String str, Throwable th) {
            super(th);
            this.invalidReferenceRepresentation = str;
        }

        public String getInvalidReferenceRepresentation() {
            return this.invalidReferenceRepresentation;
        }
    }
}
