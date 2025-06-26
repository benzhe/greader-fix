package defpackage;

/* loaded from: classes.dex */
public class n94 {
    public volatile da4 a;
    public volatile g84 b;

    static {
        p84.a();
    }

    public final int a() {
        if (this.b != null) {
            return ((e84) this.b).h.length;
        }
        if (this.a != null) {
            return this.a.e();
        }
        return 0;
    }

    public final g84 b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = g84.f;
            } else {
                this.b = this.a.d();
            }
            return this.b;
        }
    }

    public final void c(da4 da4Var) {
        if (this.a != null) {
            return;
        }
        synchronized (this) {
            if (this.a == null) {
                try {
                    this.a = da4Var;
                    this.b = g84.f;
                } catch (l94 unused) {
                    this.a = da4Var;
                    this.b = g84.f;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n94)) {
            return false;
        }
        n94 n94Var = (n94) obj;
        da4 da4Var = this.a;
        da4 da4Var2 = n94Var.a;
        if (da4Var == null && da4Var2 == null) {
            return b().equals(n94Var.b());
        }
        if (da4Var != null && da4Var2 != null) {
            return da4Var.equals(da4Var2);
        }
        if (da4Var != null) {
            n94Var.c(da4Var.f());
            return da4Var.equals(n94Var.a);
        }
        c(da4Var2.f());
        return this.a.equals(da4Var2);
    }

    public int hashCode() {
        return 1;
    }
}
