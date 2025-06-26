package defpackage;

/* loaded from: classes.dex */
public final class ku5 extends fu5 {
    public ku5(bu5 bu5Var, ju5 ju5Var) {
        super(bu5Var, ju5Var);
    }

    @Override // defpackage.fu5
    public boolean a() {
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ku5.class != obj.getClass()) {
            return false;
        }
        ku5 ku5Var = (ku5) obj;
        return this.b.equals(ku5Var.b) && this.a.equals(ku5Var.a);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("UnknownDocument{key=");
        sbZ.append(this.a);
        sbZ.append(", version=");
        sbZ.append(this.b);
        sbZ.append('}');
        return sbZ.toString();
    }
}
