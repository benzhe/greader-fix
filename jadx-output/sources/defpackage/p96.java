package defpackage;

/* loaded from: classes.dex */
public class p96 {
    public final String a;
    public final String b;

    public p96(String str, String str2, a aVar) {
        this.a = str;
        this.b = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p96)) {
            return false;
        }
        p96 p96Var = (p96) obj;
        if (hashCode() != p96Var.hashCode()) {
            return false;
        }
        String str = this.a;
        return (str != null || p96Var.a == null) && (str == null || str.equals(p96Var.a)) && this.b.equals(p96Var.b);
    }

    public int hashCode() {
        String str = this.a;
        if (str == null) {
            return this.b.hashCode();
        }
        return this.b.hashCode() + str.hashCode();
    }
}
