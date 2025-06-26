package defpackage;

import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class bl3 {
    public byte[] a;
    public int b;
    public int c;
    public int d;

    public bl3(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.d = length;
    }

    public final int a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z = false;
        if (i == 0) {
            return 0;
        }
        int i6 = i / 8;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            int i9 = this.c;
            if (i9 != 0) {
                byte[] bArr = this.a;
                int i10 = this.b;
                i5 = ((bArr[i10 + 1] & 255) >>> (8 - i9)) | ((bArr[i10] & 255) << i9);
            } else {
                i5 = this.a[this.b];
            }
            i -= 8;
            i7 |= (255 & i5) << i;
            this.b++;
        }
        if (i > 0) {
            int i11 = this.c + i;
            byte b = (byte) (Base64.BASELENGTH >> (8 - i));
            if (i11 > 8) {
                byte[] bArr2 = this.a;
                int i12 = this.b;
                i4 = (b & (((255 & bArr2[i12 + 1]) >> (16 - i11)) | ((bArr2[i12] & 255) << (i11 - 8)))) | i7;
                this.b = i12 + 1;
            } else {
                byte[] bArr3 = this.a;
                int i13 = this.b;
                i4 = (b & ((255 & bArr3[i13]) >> (8 - i11))) | i7;
                if (i11 == 8) {
                    this.b = i13 + 1;
                }
            }
            i7 = i4;
            this.c = i11 % 8;
        }
        int i14 = this.b;
        if (i14 >= 0 && (i2 = this.c) >= 0 && i2 < 8 && (i14 < (i3 = this.d) || (i14 == i3 && i2 == 0))) {
            z = true;
        }
        c50.D(z);
        return i7;
    }
}
