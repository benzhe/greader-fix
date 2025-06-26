package defpackage;

/* loaded from: classes.dex */
public class rq5 {
    public final a a;
    public final bu5 b;

    public enum a {
        ADDED,
        REMOVED
    }

    public rq5(a aVar, bu5 bu5Var) {
        this.a = aVar;
        this.b = bu5Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof rq5)) {
            return false;
        }
        rq5 rq5Var = (rq5) obj;
        return this.a.equals(rq5Var.a) && this.b.equals(rq5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 2077) * 31);
    }
}
