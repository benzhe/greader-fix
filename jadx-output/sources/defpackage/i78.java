package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class i78 implements Comparable<i78>, Serializable {
    public final q48 e;
    public final a58 f;
    public final a58 g;

    public i78(q48 q48Var, a58 a58Var, a58 a58Var2) {
        this.e = q48Var;
        this.f = a58Var;
        this.g = a58Var2;
    }

    private Object writeReplace() {
        return new f78((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public int compareTo(i78 i78Var) {
        o48 o48VarK = k();
        o48 o48VarK2 = i78Var.k();
        int iD = kt7.d(o48VarK.e, o48VarK2.e);
        return iD != 0 ? iD : o48VarK.f - o48VarK2.f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i78)) {
            return false;
        }
        i78 i78Var = (i78) obj;
        return this.e.equals(i78Var.e) && this.f.equals(i78Var.f) && this.g.equals(i78Var.g);
    }

    public int hashCode() {
        return (this.e.hashCode() ^ this.f.f) ^ Integer.rotateLeft(this.g.f, 16);
    }

    public q48 i() {
        return this.e.d0(this.g.f - this.f.f);
    }

    public o48 k() {
        return o48.O(this.e.P(this.f), r0.f.h);
    }

    public boolean l() {
        return this.g.f > this.f.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Transition[");
        sbZ.append(l() ? "Gap" : "Overlap");
        sbZ.append(" at ");
        sbZ.append(this.e);
        sbZ.append(this.f);
        sbZ.append(" to ");
        sbZ.append(this.g);
        sbZ.append(']');
        return sbZ.toString();
    }

    public i78(long j, a58 a58Var, a58 a58Var2) {
        this.e = q48.Z(j, 0, a58Var);
        this.f = a58Var;
        this.g = a58Var2;
    }
}
