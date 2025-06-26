package defpackage;

/* loaded from: classes.dex */
public class bq5 {
    public final a a;
    public final yt5 b;

    public enum a {
        REMOVED,
        ADDED,
        MODIFIED,
        METADATA
    }

    public bq5(a aVar, yt5 yt5Var) {
        this.a = aVar;
        this.b = yt5Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof bq5)) {
            return false;
        }
        bq5 bq5Var = (bq5) obj;
        return this.a.equals(bq5Var.a) && this.b.equals(bq5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 1891) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DocumentViewChange(");
        sbZ.append(this.b);
        sbZ.append(",");
        sbZ.append(this.a);
        sbZ.append(")");
        return sbZ.toString();
    }
}
