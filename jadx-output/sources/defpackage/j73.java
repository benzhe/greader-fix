package defpackage;

/* loaded from: classes.dex */
public class j73 {
    public volatile e83 a;
    public volatile k53 b;

    static {
        e63.a();
    }

    public final k53 a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = k53.f;
            } else {
                this.b = this.a.f();
            }
            return this.b;
        }
    }

    public final int b() {
        if (this.b != null) {
            return this.b.size();
        }
        if (this.a != null) {
            return this.a.g();
        }
        return 0;
    }

    public final e83 c(e83 e83Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = e83Var;
                        this.b = k53.f;
                    } catch (e73 unused) {
                        this.a = e83Var;
                        this.b = k53.f;
                    }
                }
            }
        }
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j73)) {
            return false;
        }
        j73 j73Var = (j73) obj;
        e83 e83Var = this.a;
        e83 e83Var2 = j73Var.a;
        return (e83Var == null && e83Var2 == null) ? a().equals(j73Var.a()) : (e83Var == null || e83Var2 == null) ? e83Var != null ? e83Var.equals(j73Var.c(e83Var.e())) : c(e83Var2.e()).equals(e83Var2) : e83Var.equals(e83Var2);
    }

    public int hashCode() {
        return 1;
    }
}
