package defpackage;

/* loaded from: classes.dex */
public class nj6 {
    public volatile ak6 a;
    public volatile qi6 b;

    static {
        yi6.a();
    }

    public ak6 a(ak6 ak6Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = ak6Var;
                        this.b = qi6.f;
                    } catch (kj6 unused) {
                        this.a = ak6Var;
                        this.b = qi6.f;
                    }
                }
            }
        }
        return this.a;
    }

    public qi6 b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = qi6.f;
            } else {
                this.b = this.a.g();
            }
            return this.b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nj6)) {
            return false;
        }
        nj6 nj6Var = (nj6) obj;
        ak6 ak6Var = this.a;
        ak6 ak6Var2 = nj6Var.a;
        return (ak6Var == null && ak6Var2 == null) ? b().equals(nj6Var.b()) : (ak6Var == null || ak6Var2 == null) ? ak6Var != null ? ak6Var.equals(nj6Var.a(ak6Var.c())) : a(ak6Var2.c()).equals(ak6Var2) : ak6Var.equals(ak6Var2);
    }

    public int hashCode() {
        return 1;
    }
}
