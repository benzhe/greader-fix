package defpackage;

import defpackage.q6;
import java.util.Iterator;

/* loaded from: classes.dex */
public class t6 extends x6 {
    public t6(c6 c6Var) {
        super(c6Var);
    }

    @Override // defpackage.x6, defpackage.o6
    public void a(o6 o6Var) {
        z5 z5Var = (z5) this.b;
        int i = z5Var.E0;
        int i2 = 0;
        Iterator<q6> it = this.h.l.iterator();
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = it.next().g;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i == 0 || i == 2) {
            this.h.c(i3 + z5Var.G0);
        } else {
            this.h.c(i2 + z5Var.G0);
        }
    }

    @Override // defpackage.x6
    public void d() {
        c6 c6Var = this.b;
        if (c6Var instanceof z5) {
            q6 q6Var = this.h;
            q6Var.b = true;
            z5 z5Var = (z5) c6Var;
            int i = z5Var.E0;
            boolean z = z5Var.F0;
            int i2 = 0;
            if (i == 0) {
                q6Var.e = q6.a.LEFT;
                while (i2 < z5Var.D0) {
                    c6 c6Var2 = z5Var.C0[i2];
                    if (z || c6Var2.e0 != 8) {
                        q6 q6Var2 = c6Var2.d.h;
                        q6Var2.k.add(this.h);
                        this.h.l.add(q6Var2);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 1) {
                q6Var.e = q6.a.RIGHT;
                while (i2 < z5Var.D0) {
                    c6 c6Var3 = z5Var.C0[i2];
                    if (z || c6Var3.e0 != 8) {
                        q6 q6Var3 = c6Var3.d.i;
                        q6Var3.k.add(this.h);
                        this.h.l.add(q6Var3);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 2) {
                q6Var.e = q6.a.TOP;
                while (i2 < z5Var.D0) {
                    c6 c6Var4 = z5Var.C0[i2];
                    if (z || c6Var4.e0 != 8) {
                        q6 q6Var4 = c6Var4.e.h;
                        q6Var4.k.add(this.h);
                        this.h.l.add(q6Var4);
                    }
                    i2++;
                }
                m(this.b.e.h);
                m(this.b.e.i);
                return;
            }
            if (i != 3) {
                return;
            }
            q6Var.e = q6.a.BOTTOM;
            while (i2 < z5Var.D0) {
                c6 c6Var5 = z5Var.C0[i2];
                if (z || c6Var5.e0 != 8) {
                    q6 q6Var5 = c6Var5.e.i;
                    q6Var5.k.add(this.h);
                    this.h.l.add(q6Var5);
                }
                i2++;
            }
            m(this.b.e.h);
            m(this.b.e.i);
        }
    }

    @Override // defpackage.x6
    public void e() {
        c6 c6Var = this.b;
        if (c6Var instanceof z5) {
            int i = ((z5) c6Var).E0;
            if (i == 0 || i == 1) {
                c6Var.R = this.h.g;
            } else {
                c6Var.S = this.h.g;
            }
        }
    }

    @Override // defpackage.x6
    public void f() {
        this.c = null;
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
