package defpackage;

/* loaded from: classes.dex */
public class e96 {
    public final p96 a;
    public final String b;

    public e96(p96 p96Var, String str, a aVar) {
        this.a = p96Var;
        this.b = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e96)) {
            return false;
        }
        e96 e96Var = (e96) obj;
        return hashCode() == e96Var.hashCode() && this.a.equals(e96Var.a) && this.b.equals(e96Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + this.a.hashCode();
    }
}
