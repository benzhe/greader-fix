package defpackage;

/* loaded from: classes.dex */
public class xl {
    public final String a;
    public final int b;

    public xl(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xl.class != obj.getClass()) {
            return false;
        }
        xl xlVar = (xl) obj;
        if (this.b != xlVar.b) {
            return false;
        }
        return this.a.equals(xlVar.a);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
