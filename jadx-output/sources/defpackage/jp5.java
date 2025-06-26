package defpackage;

/* loaded from: classes.dex */
public class jp5 {
    public final boolean a;
    public final boolean b;

    public jp5(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jp5)) {
            return false;
        }
        jp5 jp5Var = (jp5) obj;
        return this.a == jp5Var.a && this.b == jp5Var.b;
    }

    public int hashCode() {
        return ((this.a ? 1 : 0) * 31) + (this.b ? 1 : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("SnapshotMetadata{hasPendingWrites=");
        sbZ.append(this.a);
        sbZ.append(", isFromCache=");
        sbZ.append(this.b);
        sbZ.append('}');
        return sbZ.toString();
    }
}
