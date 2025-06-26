package defpackage;

/* loaded from: classes2.dex */
public final class r08 {
    public boolean a;
    public boolean b;
    public boolean c;

    public r08() {
        this(false, false, false, 7);
    }

    public r08(boolean z, boolean z2, boolean z3, int i) {
        z = (i & 1) != 0 ? false : z;
        z2 = (i & 2) != 0 ? false : z2;
        z3 = (i & 4) != 0 ? false : z3;
        this.a = z;
        this.b = z2;
        this.c = z3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r08)) {
            return false;
        }
        r08 r08Var = (r08) obj;
        return this.a == r08Var.a && this.b == r08Var.b && this.c == r08Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.b;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.c;
        return i3 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Options(isCreatedAtStart=");
        sbZ.append(this.a);
        sbZ.append(", override=");
        sbZ.append(this.b);
        sbZ.append(", isExtraDefinition=");
        sbZ.append(this.c);
        sbZ.append(")");
        return sbZ.toString();
    }
}
