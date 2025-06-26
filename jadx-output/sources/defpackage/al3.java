package defpackage;

/* loaded from: classes.dex */
public final class al3 {
    public byte[] a;
    public int b;
    public int c;

    public al3() {
    }

    public final int a() {
        byte[] bArr = this.a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final int b() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i2 + 1;
        this.b = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 16);
        int i6 = i4 + 1;
        this.b = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.b = i6 + 1;
        return (bArr[i6] & 255) | i7;
    }

    public final long c() {
        byte[] bArr = this.a;
        int i = this.b + 1;
        this.b = i;
        long j = (bArr[r1] & 255) << 56;
        int i2 = i + 1;
        this.b = i2;
        int i3 = i2 + 1;
        this.b = i3;
        long j2 = j | ((bArr[i] & 255) << 48) | ((bArr[i2] & 255) << 40);
        int i4 = i3 + 1;
        this.b = i4;
        long j3 = j2 | ((bArr[i3] & 255) << 32);
        int i5 = i4 + 1;
        this.b = i5;
        long j4 = j3 | ((bArr[i4] & 255) << 24);
        int i6 = i5 + 1;
        this.b = i6;
        long j5 = j4 | ((bArr[i5] & 255) << 16);
        int i7 = i6 + 1;
        this.b = i7;
        long j6 = j5 | ((bArr[i6] & 255) << 8);
        this.b = i7 + 1;
        return j6 | (bArr[i7] & 255);
    }

    public final int d() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & 255;
    }

    public final int e() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i2 + 1;
        return (bArr[i2] & 255) | i3;
    }

    public final void f(int i) {
        k(a() < i ? new byte[i] : this.a, i);
    }

    public final void g(int i) {
        c50.j(i >= 0 && i <= this.a.length);
        this.c = i;
    }

    public final void h(int i) {
        c50.j(i >= 0 && i <= this.c);
        this.b = i;
    }

    public final void i(int i) {
        h(this.b + i);
    }

    public final String j(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.b + i) - 1;
        String str = new String(this.a, this.b, (i2 >= this.c || this.a[i2] != 0) ? i : i - 1);
        this.b += i;
        return str;
    }

    public final void k(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public final void l(byte[] bArr, int i, int i2) {
        System.arraycopy(this.a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public final int m() {
        return this.c - this.b;
    }

    public final long n() {
        byte[] bArr = this.a;
        int i = this.b + 1;
        this.b = i;
        long j = (bArr[r1] & 255) << 24;
        int i2 = i + 1;
        this.b = i2;
        int i3 = i2 + 1;
        this.b = i3;
        long j2 = j | ((bArr[i] & 255) << 16) | ((bArr[i2] & 255) << 8);
        this.b = i3 + 1;
        return j2 | (bArr[i3] & 255);
    }

    public final int o() {
        int iB = b();
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalStateException(jo.M(29, "Top bit not zero: ", iB));
    }

    public final long p() {
        long jC = c();
        if (jC >= 0) {
            return jC;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(jC);
        throw new IllegalStateException(sb.toString());
    }

    public al3(int i) {
        this.a = new byte[i];
        this.c = i;
    }

    public al3(byte[] bArr) {
        this.a = bArr;
        this.c = bArr.length;
    }
}
