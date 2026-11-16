package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.instruction.InlineIndexInstruction;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethod;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethodParameter;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference;
import com.android.tools.smali.dexlib2.immutable.util.ParamUtil;
import com.android.tools.smali.util.InputStreamUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CustomInlineMethodResolver extends InlineMethodResolver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Pattern longMethodPattern = Pattern.compile("(L[^;]+;)->([^(]+)\\(([^)]*)\\)(.+)");

    @Nonnull
    private final ClassPath classPath;

    @Nonnull
    private final Method[] inlineMethods;

    public CustomInlineMethodResolver(@Nonnull ClassPath classPath, @Nonnull String str) {
        this.classPath = classPath;
        StringReader stringReader = new StringReader(str);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(stringReader);
        try {
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                if (line.length() > 0) {
                    arrayList.add(line);
                }
            }
            this.inlineMethods = new Method[arrayList.size()];
            int i = 0;
            while (true) {
                Method[] methodArr = this.inlineMethods;
                if (i >= methodArr.length) {
                    return;
                }
                methodArr[i] = parseAndResolveInlineMethod((String) arrayList.get(i));
                i++;
            }
        } catch (IOException e) {
            throw new RuntimeException("Error while parsing inline table", e);
        }
    }

    public CustomInlineMethodResolver(@Nonnull ClassPath classPath, @Nonnull File file) throws IOException {
        this(classPath, new String(InputStreamUtil.toByteArray(new FileInputStream(file)), StandardCharsets.UTF_8));
    }

    @Override // com.android.tools.smali.dexlib2.analysis.InlineMethodResolver
    @Nonnull
    public Method resolveExecuteInline(@Nonnull AnalyzedInstruction analyzedInstruction) {
        int inlineIndex = ((InlineIndexInstruction) analyzedInstruction.instruction).getInlineIndex();
        if (inlineIndex >= 0) {
            Method[] methodArr = this.inlineMethods;
            if (inlineIndex < methodArr.length) {
                return methodArr[inlineIndex];
            }
        }
        throw new RuntimeException("Invalid method index: " + inlineIndex);
    }

    @Nonnull
    private Method parseAndResolveInlineMethod(@Nonnull String str) {
        int accessFlags;
        Matcher matcher = longMethodPattern.matcher(str);
        if (!matcher.matches()) {
            throw new RuntimeException("Invalid method descriptor: " + str);
        }
        boolean z = true;
        String strGroup = matcher.group(1);
        String strGroup2 = matcher.group(2);
        Iterable<ImmutableMethodParameter> paramString = ParamUtil.parseParamString(matcher.group(3));
        String strGroup3 = matcher.group(4);
        ImmutableMethodReference immutableMethodReference = new ImmutableMethodReference(strGroup, strGroup2, paramString, strGroup3);
        TypeProto typeProto = this.classPath.getClass(strGroup);
        if (!(typeProto instanceof ClassProto)) {
            z = false;
            accessFlags = 0;
            break;
        }
        Iterator<? extends Method> it = ((ClassProto) typeProto).getClassDef().getMethods().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                accessFlags = 0;
                break;
            }
            Method next = it.next();
            if (next.equals(immutableMethodReference)) {
                accessFlags = next.getAccessFlags();
                break;
            }
        }
        if (!z) {
            throw new RuntimeException("Cannot resolve inline method: " + str);
        }
        return new ImmutableMethod(strGroup, strGroup2, paramString, strGroup3, accessFlags, (Set<? extends Annotation>) null, (Set<HiddenApiRestriction>) null, (MethodImplementation) null);
    }
}
