package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class ut5 {
    public final dr5 a;
    public final int b;
    public final long c;
    public final vs5 d;
    public final ju5 e;
    public final ju5 f;
    public final qi6 g;

    public ut5(dr5 dr5Var, int i, long j, vs5 vs5Var, ju5 ju5Var, ju5 ju5Var2, qi6 qi6Var) {
        Objects.requireNonNull(dr5Var);
        this.a = dr5Var;
        this.b = i;
        this.c = j;
        this.f = ju5Var2;
        this.d = vs5Var;
        Objects.requireNonNull(ju5Var);
        this.e = ju5Var;
        Objects.requireNonNull(qi6Var);
        this.g = qi6Var;
    }

    public ut5 a(qi6 qi6Var, ju5 ju5Var) {
        return new ut5(this.a, this.b, this.c, this.d, ju5Var, this.f, qi6Var);
    }

    public ut5 b(long j) {
        return new ut5(this.a, this.b, j, this.d, this.e, this.f, this.g);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ut5.class != obj.getClass()) {
            return false;
        }
        ut5 ut5Var = (ut5) obj;
        return this.a.equals(ut5Var.a) && this.b == ut5Var.b && this.c == ut5Var.c && this.d.equals(ut5Var.d) && this.e.equals(ut5Var.e) && this.f.equals(ut5Var.f) && this.g.equals(ut5Var.g);
    }

    public int hashCode() {
        return this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + (((((this.a.hashCode() * 31) + this.b) * 31) + ((int) this.c)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TargetData{target=");
        sbZ.append(this.a);
        sbZ.append(", targetId=");
        sbZ.append(this.b);
        sbZ.append(", sequenceNumber=");
        sbZ.append(this.c);
        sbZ.append(", purpose=");
        sbZ.append(this.d);
        sbZ.append(", snapshotVersion=");
        sbZ.append(this.e);
        sbZ.append(", lastLimboFreeSnapshotVersion=");
        sbZ.append(this.f);
        sbZ.append(", resumeToken=");
        sbZ.append(this.g);
        sbZ.append('}');
        return sbZ.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ut5(dr5 dr5Var, int i, long j, vs5 vs5Var) {
        ju5 ju5Var = ju5.f;
        this(dr5Var, i, j, vs5Var, ju5Var, ju5Var, zw5.q);
    }
}
