package com.google.mlkit.common.internal;

import defpackage.ah6;
import defpackage.bh4;
import defpackage.bh6;
import defpackage.ch6;
import defpackage.eh6;
import defpackage.fh4;
import defpackage.hh6;
import defpackage.ig5;
import defpackage.ih6;
import defpackage.jg4;
import defpackage.jo;
import defpackage.kh6;
import defpackage.lg4;
import defpackage.mh6;
import defpackage.ng4;
import defpackage.sf5;
import defpackage.ug6;
import defpackage.vg6;
import defpackage.wg6;
import defpackage.xf5;
import defpackage.xg4;
import defpackage.xg6;
import defpackage.yg6;
import defpackage.zg4;
import defpackage.zg6;
import java.util.List;

/* loaded from: classes.dex */
public class CommonComponentRegistrar implements xf5 {
    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5<?> sf5Var = bh4.b;
        sf5<?> sf5Var2 = kh6.b;
        sf5<?> sf5Var3 = fh4.a;
        sf5<?> sf5Var4 = zg4.a;
        sf5<?> sf5Var5 = xg4.a;
        sf5.b bVarA = sf5.a(mh6.class);
        bVarA.a(new ig5(hh6.class, 1, 0));
        bVarA.d(vg6.a);
        sf5 sf5VarB = bVarA.b();
        sf5.b bVarA2 = sf5.a(ih6.class);
        bVarA2.d(ug6.a);
        sf5 sf5VarB2 = bVarA2.b();
        sf5.b bVarA3 = sf5.a(ah6.class);
        bVarA3.a(new ig5(ah6.a.class, 2, 0));
        bVarA3.d(xg6.a);
        sf5 sf5VarB3 = bVarA3.b();
        sf5.b bVarA4 = sf5.a(eh6.class);
        bVarA4.a(new ig5(ih6.class, 1, 1));
        bVarA4.d(wg6.a);
        sf5 sf5VarB4 = bVarA4.b();
        sf5.b bVarA5 = sf5.a(bh6.class);
        bVarA5.d(zg6.a);
        sf5 sf5VarB5 = bVarA5.b();
        sf5.b bVarA6 = sf5.a(ch6.class);
        bVarA6.a(new ig5(bh6.class, 1, 0));
        bVarA6.a(new ig5(bh4.class, 1, 0));
        bVarA6.d(yg6.a);
        sf5 sf5VarB6 = bVarA6.b();
        ng4<Object> ng4Var = jg4.f;
        Object[] objArr = {sf5Var, sf5Var2, sf5Var3, sf5Var4, sf5Var5, sf5VarB, sf5VarB2, sf5VarB3, sf5VarB4, sf5VarB5, sf5VarB6};
        for (int i = 0; i < 11; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException(jo.M(20, "at index ", i));
            }
        }
        return new lg4(objArr, 11);
    }
}
