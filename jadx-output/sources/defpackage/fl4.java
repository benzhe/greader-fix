package defpackage;

/* loaded from: classes.dex */
public class fl4 {
    public volatile am4 a;
    public volatile vj4 b;

    static {
        gk4.a();
    }

    public final int a() {
        if (this.b != null) {
            return this.b.h();
        }
        if (this.a != null) {
            return this.a.i();
        }
        return 0;
    }

    public final am4 b(am4 am4Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = am4Var;
                        this.b = vj4.f;
                    } catch (zk4 unused) {
                        this.a = am4Var;
                        this.b = vj4.f;
                    }
                }
            }
        }
        return this.a;
    }

    public final vj4 c() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = vj4.f;
            } else {
                this.b = this.a.h();
            }
            return this.b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fl4)) {
            return false;
        }
        fl4 fl4Var = (fl4) obj;
        am4 am4Var = this.a;
        am4 am4Var2 = fl4Var.a;
        return (am4Var == null && am4Var2 == null) ? c().equals(fl4Var.c()) : (am4Var == null || am4Var2 == null) ? am4Var != null ? am4Var.equals(fl4Var.b(am4Var.m())) : b(am4Var2.m()).equals(am4Var2) : am4Var.equals(am4Var2);
    }

    public int hashCode() {
        return 1;
    }
}
