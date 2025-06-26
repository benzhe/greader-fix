package defpackage;

/* loaded from: classes.dex */
public class hg5 {
    public final Class<?> a;
    public final boolean b;

    public hg5(Class cls, boolean z, fg5 fg5Var) {
        this.a = cls;
        this.b = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hg5)) {
            return false;
        }
        hg5 hg5Var = (hg5) obj;
        return hg5Var.a.equals(this.a) && hg5Var.b == this.b;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.b).hashCode();
    }
}
