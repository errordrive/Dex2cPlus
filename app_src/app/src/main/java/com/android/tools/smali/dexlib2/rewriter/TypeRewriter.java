package com.android.tools.smali.dexlib2.rewriter;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class TypeRewriter implements Rewriter<String> {
    @Nonnull
    protected String rewriteUnwrappedType(@Nonnull String str) {
        return str;
    }

    @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
    @Nonnull
    public String rewrite(@Nonnull String str) {
        if (str.length() > 0 && str.charAt(0) == '[') {
            int i = 0;
            while (str.charAt(i) == '[') {
                i++;
            }
            String strSubstring = str.substring(i);
            String strRewriteUnwrappedType = rewriteUnwrappedType(strSubstring);
            if (strSubstring == strRewriteUnwrappedType) {
                return str;
            }
            StringBuilder sb = new StringBuilder(strRewriteUnwrappedType.length() + i);
            sb.append((CharSequence) str, 0, i);
            sb.append(strRewriteUnwrappedType);
            return sb.toString();
        }
        return rewriteUnwrappedType(str);
    }
}
