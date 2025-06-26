package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public class mr5 {
    public final yq5 a;
    public final du5 b;
    public final du5 c;
    public final List<bq5> d;
    public final boolean e;
    public final ln5<bu5> f;
    public final boolean g;
    public boolean h;

    public enum a {
        NONE,
        LOCAL,
        SYNCED
    }

    public mr5(yq5 yq5Var, du5 du5Var, du5 du5Var2, List<bq5> list, boolean z, ln5<bu5> ln5Var, boolean z2, boolean z3) {
        this.a = yq5Var;
        this.b = du5Var;
        this.c = du5Var2;
        this.d = list;
        this.e = z;
        this.f = ln5Var;
        this.g = z2;
        this.h = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mr5)) {
            return false;
        }
        mr5 mr5Var = (mr5) obj;
        if (this.e == mr5Var.e && this.g == mr5Var.g && this.h == mr5Var.h && this.a.equals(mr5Var.a) && this.f.equals(mr5Var.f) && this.b.equals(mr5Var.b) && this.c.equals(mr5Var.c)) {
            return this.d.equals(mr5Var.d);
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31) + (this.e ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ViewSnapshot(");
        sbZ.append(this.a);
        sbZ.append(", ");
        sbZ.append(this.b);
        sbZ.append(", ");
        sbZ.append(this.c);
        sbZ.append(", ");
        sbZ.append(this.d);
        sbZ.append(", isFromCache=");
        sbZ.append(this.e);
        sbZ.append(", mutatedKeys=");
        sbZ.append(this.f.size());
        sbZ.append(", didSyncStateChange=");
        sbZ.append(this.g);
        sbZ.append(", excludesMetadataChanges=");
        sbZ.append(this.h);
        sbZ.append(")");
        return sbZ.toString();
    }
}
