package defpackage;

/* loaded from: classes.dex */
public class oo5 implements Comparable<oo5> {
    public final qi6 e;

    public oo5(qi6 qi6Var) {
        this.e = qi6Var;
    }

    @Override // java.lang.Comparable
    public int compareTo(oo5 oo5Var) {
        return vx5.a(this.e, oo5Var.e);
    }

    public boolean equals(Object obj) {
        return (obj instanceof oo5) && this.e.equals(((oo5) obj).e);
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Blob { bytes=");
        sbZ.append(vx5.e(this.e));
        sbZ.append(" }");
        return sbZ.toString();
    }
}
