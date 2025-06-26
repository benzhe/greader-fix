package defpackage;

/* loaded from: classes2.dex */
public final class j37 {
    public final i37 a;
    public final x47 b;

    public j37(i37 i37Var, x47 x47Var) {
        c50.A(i37Var, "state is null");
        this.a = i37Var;
        c50.A(x47Var, "status is null");
        this.b = x47Var;
    }

    public static j37 a(i37 i37Var) {
        c50.t(i37Var != i37.TRANSIENT_FAILURE, "state is TRANSIENT_ERROR. Use forError() instead");
        return new j37(i37Var, x47.f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j37)) {
            return false;
        }
        j37 j37Var = (j37) obj;
        return this.a.equals(j37Var.a) && this.b.equals(j37Var.b);
    }

    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public String toString() {
        if (this.b.f()) {
            return this.a.toString();
        }
        return this.a + "(" + this.b + ")";
    }
}
