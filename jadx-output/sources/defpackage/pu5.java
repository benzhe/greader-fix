package defpackage;

/* loaded from: classes.dex */
public final class pu5 {
    public final eu5 a;
    public final av5 b;

    public pu5(eu5 eu5Var, av5 av5Var) {
        this.a = eu5Var;
        this.b = av5Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || pu5.class != obj.getClass()) {
            return false;
        }
        pu5 pu5Var = (pu5) obj;
        if (this.a.equals(pu5Var.a)) {
            return this.b.equals(pu5Var.b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
