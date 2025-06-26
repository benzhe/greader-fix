package defpackage;

/* loaded from: classes.dex */
public class fy3 {
    public volatile xy3 a;
    public volatile sw3 b;

    static {
        ex3.a();
    }

    public final int a() {
        if (this.b != null) {
            return this.b.size();
        }
        if (this.a != null) {
            return this.a.o();
        }
        return 0;
    }

    public final xy3 b(xy3 xy3Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = xy3Var;
                        this.b = sw3.f;
                    } catch (yx3 unused) {
                        this.a = xy3Var;
                        this.b = sw3.f;
                    }
                }
            }
        }
        return this.a;
    }

    public final sw3 c() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            this.b = this.a == null ? sw3.f : this.a.l();
            return this.b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fy3)) {
            return false;
        }
        fy3 fy3Var = (fy3) obj;
        xy3 xy3Var = this.a;
        xy3 xy3Var2 = fy3Var.a;
        return (xy3Var == null && xy3Var2 == null) ? c().equals(fy3Var.c()) : (xy3Var == null || xy3Var2 == null) ? xy3Var != null ? xy3Var.equals(fy3Var.b(xy3Var.b())) : b(xy3Var2.b()).equals(xy3Var2) : xy3Var.equals(xy3Var2);
    }

    public int hashCode() {
        return 1;
    }
}
