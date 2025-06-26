package defpackage;

import defpackage.ln5;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class ms5 implements xs5 {
    public ys5 a;
    public final ps5 b;
    public Set<bu5> c;

    public ms5(ps5 ps5Var) {
        this.b = ps5Var;
    }

    @Override // defpackage.xs5
    public void a(bu5 bu5Var) {
        if (j(bu5Var)) {
            this.c.remove(bu5Var);
        } else {
            this.c.add(bu5Var);
        }
    }

    @Override // defpackage.xs5
    public void b() {
        qs5 qs5Var = this.b.e;
        for (bu5 bu5Var : this.c) {
            if (!j(bu5Var)) {
                qs5Var.b(bu5Var);
            }
        }
        this.c = null;
    }

    @Override // defpackage.xs5
    public void c() {
        this.c = new HashSet();
    }

    @Override // defpackage.xs5
    public void d(bu5 bu5Var) {
        this.c.add(bu5Var);
    }

    @Override // defpackage.xs5
    public long e() {
        return -1L;
    }

    @Override // defpackage.xs5
    public void f(ut5 ut5Var) {
        rs5 rs5Var = this.b.d;
        Iterator<bu5> it = rs5Var.b.d(ut5Var.b).iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                rs5Var.a.remove(ut5Var.a);
                rs5Var.b.g(ut5Var.b);
                return;
            } else {
                this.c.add((bu5) aVar.next());
            }
        }
    }

    @Override // defpackage.xs5
    public void g(ys5 ys5Var) {
        this.a = ys5Var;
    }

    @Override // defpackage.xs5
    public void h(bu5 bu5Var) {
        this.c.remove(bu5Var);
    }

    @Override // defpackage.xs5
    public void i(bu5 bu5Var) {
        this.c.add(bu5Var);
    }

    public final boolean j(bu5 bu5Var) {
        boolean z;
        if (this.b.d.b.c(bu5Var)) {
            return true;
        }
        Iterator<T> it = this.b.b.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            os5 os5Var = (os5) it.next();
            Objects.requireNonNull(os5Var);
            Iterator<Map.Entry<qr5, Void>> itP = os5Var.b.e.p(new qr5(bu5Var, 0));
            if (!itP.hasNext() ? false : itP.next().getKey().a.equals(bu5Var)) {
                z = true;
                break;
            }
        }
        if (z) {
            return true;
        }
        ys5 ys5Var = this.a;
        return ys5Var != null && ys5Var.c(bu5Var);
    }
}
