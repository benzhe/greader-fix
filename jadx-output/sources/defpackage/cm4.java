package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class cm4<T> implements om4<T> {
    public final am4 a;
    public final cn4<?, ?> b;
    public final boolean c;
    public final fk4<?> d;

    public cm4(cn4<?, ?> cn4Var, fk4<?> fk4Var, am4 am4Var) {
        this.b = cn4Var;
        this.c = fk4Var.d(am4Var);
        this.d = fk4Var;
        this.a = am4Var;
    }

    @Override // defpackage.om4
    public final void a(T t) {
        this.b.e(t);
        this.d.f(t);
    }

    @Override // defpackage.om4
    public final boolean b(T t) {
        return this.d.b(t).m();
    }

    @Override // defpackage.om4
    public final int c(T t) {
        int iHashCode = this.b.a(t).hashCode();
        return this.c ? (iHashCode * 53) + this.d.b(t).hashCode() : iHashCode;
    }

    @Override // defpackage.om4
    public final void d(T t, T t2) {
        cn4<?, ?> cn4Var = this.b;
        Class<?> cls = qm4.a;
        cn4Var.c(t, cn4Var.d(cn4Var.a(t), cn4Var.a(t2)));
        if (this.c) {
            qm4.i(this.d, t, t2);
        }
    }

    @Override // defpackage.om4
    public final boolean e(T t, T t2) {
        if (!this.b.a(t).equals(this.b.a(t2))) {
            return false;
        }
        if (this.c) {
            return this.d.b(t).equals(this.d.b(t2));
        }
        return true;
    }

    @Override // defpackage.om4
    public final int f(T t) {
        cn4<?, ?> cn4Var = this.b;
        int iG = cn4Var.g(cn4Var.a(t)) + 0;
        if (!this.c) {
            return iG;
        }
        kk4<T> kk4VarB = this.d.b(t);
        int iK = 0;
        for (int i = 0; i < kk4VarB.a.e(); i++) {
            iK += kk4.k(kk4VarB.a.d(i));
        }
        Iterator<T> it = kk4VarB.a.g().iterator();
        while (it.hasNext()) {
            iK += kk4.k((Map.Entry) it.next());
        }
        return iG + iK;
    }

    @Override // defpackage.om4
    public final void g(T t, vn4 vn4Var) throws IOException {
        Iterator itL = this.d.b(t).l();
        while (itL.hasNext()) {
            Map.Entry entry = (Map.Entry) itL.next();
            mk4 mk4Var = (mk4) entry.getKey();
            if (mk4Var.c() != tn4.MESSAGE || mk4Var.d() || mk4Var.h()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof dl4) {
                ((ek4) vn4Var).c(mk4Var.a(), ((dl4) entry).e.getValue().c());
            } else {
                ((ek4) vn4Var).c(mk4Var.a(), entry.getValue());
            }
        }
        cn4<?, ?> cn4Var = this.b;
        cn4Var.f(cn4Var.a(t), vn4Var);
    }
}
