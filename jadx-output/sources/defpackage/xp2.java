package defpackage;

/* loaded from: classes.dex */
public final class xp2 {
    public final String a;
    public final String b;

    public xp2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xp2)) {
            return false;
        }
        xp2 xp2Var = (xp2) obj;
        return this.a.equals(xp2Var.a) && this.b.equals(xp2Var.b);
    }

    public final int hashCode() {
        String strValueOf = String.valueOf(this.a);
        String strValueOf2 = String.valueOf(this.b);
        return (strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf)).hashCode();
    }
}
