package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class nf6 extends de6<Object> {
    public static final ee6 b = new a();
    public final od6 a;

    public class a implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            if (dg6Var.a == Object.class) {
                return new nf6(od6Var);
            }
            return null;
        }
    }

    public nf6(od6 od6Var) {
        this.a = od6Var;
    }

    @Override // defpackage.de6
    public Object a(eg6 eg6Var) throws IOException {
        int iOrdinal = eg6Var.Q().ordinal();
        if (iOrdinal == 0) {
            ArrayList arrayList = new ArrayList();
            eg6Var.a();
            while (eg6Var.m()) {
                arrayList.add(a(eg6Var));
            }
            eg6Var.f();
            return arrayList;
        }
        if (iOrdinal == 2) {
            ze6 ze6Var = new ze6();
            eg6Var.b();
            while (eg6Var.m()) {
                ze6Var.put(eg6Var.C(), a(eg6Var));
            }
            eg6Var.g();
            return ze6Var;
        }
        if (iOrdinal == 5) {
            return eg6Var.I();
        }
        if (iOrdinal == 6) {
            return Double.valueOf(eg6Var.w());
        }
        if (iOrdinal == 7) {
            return Boolean.valueOf(eg6Var.t());
        }
        if (iOrdinal != 8) {
            throw new IllegalStateException();
        }
        eg6Var.E();
        return null;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Object obj) throws IOException {
        if (obj == null) {
            gg6Var.m();
            return;
        }
        od6 od6Var = this.a;
        Class<?> cls = obj.getClass();
        Objects.requireNonNull(od6Var);
        de6 de6VarD = od6Var.d(new dg6(cls));
        if (!(de6VarD instanceof nf6)) {
            de6VarD.b(gg6Var, obj);
        } else {
            gg6Var.c();
            gg6Var.g();
        }
    }
}
