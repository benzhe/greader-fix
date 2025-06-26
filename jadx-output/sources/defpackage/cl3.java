package defpackage;

import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class cl3 {
    public byte[] a;
    public int b;
    public int c;
    public int d = 0;

    public cl3(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.c = i;
        this.b = i2;
        g();
    }

    public final int a(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        int i4 = i / 8;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = c(this.c + 1) ? this.c + 2 : this.c + 1;
            int i8 = this.d;
            if (i8 != 0) {
                byte[] bArr = this.a;
                i3 = ((bArr[i7] & 255) >>> (8 - i8)) | ((bArr[this.c] & 255) << i8);
            } else {
                i3 = this.a[this.c];
            }
            i -= 8;
            i5 |= (255 & i3) << i;
            this.c = i7;
        }
        if (i > 0) {
            int i9 = this.d + i;
            byte b = (byte) (Base64.BASELENGTH >> (8 - i));
            int i10 = c(this.c + 1) ? this.c + 2 : this.c + 1;
            if (i9 > 8) {
                byte[] bArr2 = this.a;
                i2 = (b & (((255 & bArr2[i10]) >> (16 - i9)) | ((bArr2[this.c] & 255) << (i9 - 8)))) | i5;
                this.c = i10;
            } else {
                i2 = (b & ((255 & this.a[this.c]) >> (8 - i9))) | i5;
                if (i9 == 8) {
                    this.c = i10;
                }
            }
            i5 = i2;
            this.d = i9 % 8;
        }
        g();
        return i5;
    }

    public final void b(int i) {
        int i2 = this.c;
        int i3 = (i / 8) + i2;
        this.c = i3;
        int i4 = (i % 8) + this.d;
        this.d = i4;
        if (i4 > 7) {
            this.c = i3 + 1;
            this.d = i4 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.c) {
                g();
                return;
            } else if (c(i2)) {
                this.c++;
                i2 += 2;
            }
        }
    }

    public final boolean c(int i) {
        if (2 > i || i >= this.b) {
            return false;
        }
        byte[] bArr = this.a;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i - 1] == 0;
    }

    public final boolean d() {
        return a(1) == 1;
    }

    public final int e() {
        int iF = f();
        return ((iF + 1) / 2) * (iF % 2 == 0 ? -1 : 1);
    }

    public final int f() {
        int i = 0;
        while (!d()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? a(i) : 0);
    }

    public final void g() {
        int i;
        int i2;
        int i3 = this.c;
        c50.D(i3 >= 0 && (i = this.d) >= 0 && i < 8 && (i3 < (i2 = this.b) || (i3 == i2 && i == 0)));
    }
}
