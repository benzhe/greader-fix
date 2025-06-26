package defpackage;

import com.google.firebase.Timestamp;

/* loaded from: classes.dex */
public final class ju5 implements Comparable<ju5> {
    public static final ju5 f = new ju5(new Timestamp(0, 0));
    public final Timestamp e;

    public ju5(Timestamp timestamp) {
        this.e = timestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ju5) && compareTo((ju5) obj) == 0;
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public int compareTo(ju5 ju5Var) {
        return this.e.compareTo(ju5Var.e);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("SnapshotVersion(seconds=");
        sbZ.append(this.e.e);
        sbZ.append(", nanos=");
        return jo.q(sbZ, this.e.f, ")");
    }
}
