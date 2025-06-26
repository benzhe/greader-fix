package defpackage;

/* loaded from: classes.dex */
public final class wd6 extends td6 {
    public final ze6<String, td6> a = new ze6<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof wd6) && ((wd6) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
