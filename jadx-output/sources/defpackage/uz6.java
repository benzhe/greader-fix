package defpackage;

/* loaded from: classes2.dex */
public class uz6 {
    public final int a;
    public final int b;

    public uz6(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(9);
        sb.append(this.a);
        sb.append("x");
        sb.append(this.b);
        return sb.toString();
    }

    public uz6(int i, int i2, int i3) {
        if (i3 % 180 == 0) {
            this.a = i;
            this.b = i2;
        } else {
            this.a = i2;
            this.b = i;
        }
    }
}
