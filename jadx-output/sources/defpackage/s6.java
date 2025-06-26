package defpackage;

/* loaded from: classes.dex */
public class s6 extends x6 {
    public s6(c6 c6Var) {
        super(c6Var);
        c6Var.d.f();
        c6Var.e.f();
        this.f = ((f6) c6Var).G0;
    }

    @Override // defpackage.x6, defpackage.o6
    public void a(o6 o6Var) {
        q6 q6Var = this.h;
        if (q6Var.c && !q6Var.j) {
            this.h.c((int) ((q6Var.l.get(0).g * ((f6) this.b).C0) + 0.5f));
        }
    }

    @Override // defpackage.x6
    public void d() {
        c6 c6Var = this.b;
        f6 f6Var = (f6) c6Var;
        int i = f6Var.D0;
        int i2 = f6Var.E0;
        if (f6Var.G0 == 1) {
            if (i != -1) {
                this.h.l.add(c6Var.M.d.h);
                this.b.M.d.h.k.add(this.h);
                this.h.f = i;
            } else if (i2 != -1) {
                this.h.l.add(c6Var.M.d.i);
                this.b.M.d.i.k.add(this.h);
                this.h.f = -i2;
            } else {
                q6 q6Var = this.h;
                q6Var.b = true;
                q6Var.l.add(c6Var.M.d.i);
                this.b.M.d.i.k.add(this.h);
            }
            m(this.b.d.h);
            m(this.b.d.i);
            return;
        }
        if (i != -1) {
            this.h.l.add(c6Var.M.e.h);
            this.b.M.e.h.k.add(this.h);
            this.h.f = i;
        } else if (i2 != -1) {
            this.h.l.add(c6Var.M.e.i);
            this.b.M.e.i.k.add(this.h);
            this.h.f = -i2;
        } else {
            q6 q6Var2 = this.h;
            q6Var2.b = true;
            q6Var2.l.add(c6Var.M.e.i);
            this.b.M.e.i.k.add(this.h);
        }
        m(this.b.e.h);
        m(this.b.e.i);
    }

    @Override // defpackage.x6
    public void e() {
        c6 c6Var = this.b;
        if (((f6) c6Var).G0 == 1) {
            c6Var.R = this.h.g;
        } else {
            c6Var.S = this.h.g;
        }
    }

    @Override // defpackage.x6
    public void f() {
        this.h.b();
    }

    @Override // defpackage.x6
    public boolean k() {
        return false;
    }

    public final void m(q6 q6Var) {
        this.h.k.add(q6Var);
        q6Var.l.add(this.h);
    }
}
