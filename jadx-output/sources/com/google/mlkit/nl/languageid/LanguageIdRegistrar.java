package com.google.mlkit.nl.languageid;

import android.content.Context;
import com.google.mlkit.nl.languageid.LanguageIdentifierImpl;
import com.google.mlkit.nl.languageid.internal.LanguageIdentificationJni;
import defpackage.bj4;
import defpackage.di6;
import defpackage.dj4;
import defpackage.eh6;
import defpackage.ei6;
import defpackage.fj4;
import defpackage.ig5;
import defpackage.jj4;
import defpackage.jo;
import defpackage.po4;
import defpackage.sf5;
import defpackage.to4;
import defpackage.vo4;
import defpackage.xf5;
import java.util.List;

/* loaded from: classes.dex */
public class LanguageIdRegistrar implements xf5 {
    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5<?> sf5Var = fj4.i;
        sf5<?> sf5Var2 = jj4.a;
        sf5<?> sf5Var3 = dj4.b;
        sf5<?> sf5Var4 = bj4.c;
        sf5.b bVarA = sf5.a(LanguageIdentificationJni.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(fj4.class, 1, 0));
        bVarA.d(ei6.a);
        sf5 sf5VarB = bVarA.b();
        sf5.b bVarA2 = sf5.a(LanguageIdentifierImpl.a.class);
        bVarA2.a(new ig5(fj4.class, 1, 0));
        bVarA2.a(new ig5(LanguageIdentificationJni.class, 1, 0));
        bVarA2.a(new ig5(eh6.class, 1, 0));
        bVarA2.d(di6.a);
        sf5 sf5VarB2 = bVarA2.b();
        vo4<Object> vo4Var = po4.f;
        Object[] objArr = {sf5Var, sf5Var2, sf5Var3, sf5Var4, sf5VarB, sf5VarB2};
        for (int i = 0; i < 6; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException(jo.M(20, "at index ", i));
            }
        }
        return new to4(objArr, 6);
    }
}
