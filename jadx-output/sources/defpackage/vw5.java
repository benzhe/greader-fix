package defpackage;

/* loaded from: classes.dex */
public final class vw5 {
    public final qi6 a;
    public final boolean b;
    public final ln5<bu5> c;
    public final ln5<bu5> d;
    public final ln5<bu5> e;

    public vw5(qi6 qi6Var, boolean z, ln5<bu5> ln5Var, ln5<bu5> ln5Var2, ln5<bu5> ln5Var3) {
        this.a = qi6Var;
        this.b = z;
        this.c = ln5Var;
        this.d = ln5Var2;
        this.e = ln5Var3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vw5.class != obj.getClass()) {
            return false;
        }
        vw5 vw5Var = (vw5) obj;
        if (this.b == vw5Var.b && this.a.equals(vw5Var.a) && this.c.equals(vw5Var.c) && this.d.equals(vw5Var.d)) {
            return this.e.equals(vw5Var.e);
        }
        return false;
    }

    public int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31)) * 31)) * 31);
    }
}
