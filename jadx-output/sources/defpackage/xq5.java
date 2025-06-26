package defpackage;

/* loaded from: classes.dex */
public class xq5 {
    public final a a;
    public final eu5 b;

    public enum a {
        ASCENDING(1),
        DESCENDING(-1);

        public final int e;

        a(int i) {
            this.e = i;
        }
    }

    public xq5(a aVar, eu5 eu5Var) {
        this.a = aVar;
        this.b = eu5Var;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof xq5)) {
            return false;
        }
        xq5 xq5Var = (xq5) obj;
        return this.a == xq5Var.a && this.b.equals(xq5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 899) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a == a.ASCENDING ? "" : "-");
        sb.append(this.b.l());
        return sb.toString();
    }
}
