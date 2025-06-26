package defpackage;

import defpackage.ln5;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class rs5 implements tt5 {
    public int c;
    public final ps5 f;
    public final Map<dr5, ut5> a = new HashMap();
    public final ys5 b = new ys5();
    public ju5 d = ju5.f;
    public long e = 0;

    public rs5(ps5 ps5Var) {
        this.f = ps5Var;
    }

    @Override // defpackage.tt5
    public void a(ut5 ut5Var) {
        this.a.put(ut5Var.a, ut5Var);
        int i = ut5Var.b;
        if (i > this.c) {
            this.c = i;
        }
        long j = ut5Var.c;
        if (j > this.e) {
            this.e = j;
        }
    }

    @Override // defpackage.tt5
    public ut5 b(dr5 dr5Var) {
        return this.a.get(dr5Var);
    }

    @Override // defpackage.tt5
    public int c() {
        return this.c;
    }

    @Override // defpackage.tt5
    public ln5<bu5> d(int i) {
        return this.b.d(i);
    }

    @Override // defpackage.tt5
    public ju5 e() {
        return this.d;
    }

    @Override // defpackage.tt5
    public void f(ln5<bu5> ln5Var, int i) {
        this.b.b(ln5Var, i);
        xs5 xs5Var = this.f.f;
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                xs5Var.h((bu5) aVar.next());
            }
        }
    }

    @Override // defpackage.tt5
    public void g(ut5 ut5Var) {
        a(ut5Var);
    }

    @Override // defpackage.tt5
    public void h(ju5 ju5Var) {
        this.d = ju5Var;
    }

    @Override // defpackage.tt5
    public void i(ln5<bu5> ln5Var, int i) {
        this.b.f(ln5Var, i);
        xs5 xs5Var = this.f.f;
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                xs5Var.i((bu5) aVar.next());
            }
        }
    }
}
