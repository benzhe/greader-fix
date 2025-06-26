package defpackage;

/* loaded from: classes.dex */
public final class e8 {
    public static final e8 e = new e8(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public e8(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static e8 a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new e8(i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e8.class != obj.getClass()) {
            return false;
        }
        e8 e8Var = (e8) obj;
        return this.d == e8Var.d && this.a == e8Var.a && this.c == e8Var.c && this.b == e8Var.b;
    }

    public int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Insets{left=");
        sbZ.append(this.a);
        sbZ.append(", top=");
        sbZ.append(this.b);
        sbZ.append(", right=");
        sbZ.append(this.c);
        sbZ.append(", bottom=");
        sbZ.append(this.d);
        sbZ.append('}');
        return sbZ.toString();
    }
}
