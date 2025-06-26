package defpackage;

/* loaded from: classes.dex */
public class b96 {
    public final String a;
    public final e96 b;

    public static class b {
        public String a;
        public e96 b;

        public b96 a() {
            return new b96(this.a, this.b, null);
        }
    }

    public b96(String str, e96 e96Var, a aVar) {
        this.a = str;
        this.b = e96Var;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b96)) {
            return false;
        }
        b96 b96Var = (b96) obj;
        if (hashCode() != b96Var.hashCode()) {
            return false;
        }
        String str = this.a;
        if ((str == null && b96Var.a != null) || (str != null && !str.equals(b96Var.a))) {
            return false;
        }
        e96 e96Var = this.b;
        return (e96Var == null && b96Var.b == null) || (e96Var != null && e96Var.equals(b96Var.b));
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = str != null ? str.hashCode() : 0;
        e96 e96Var = this.b;
        return iHashCode + (e96Var != null ? e96Var.hashCode() : 0);
    }
}
