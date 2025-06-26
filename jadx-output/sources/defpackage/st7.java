package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class st7 extends bt7 {
    public final transient byte[][] j;
    public final transient int[] k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public st7(byte[][] bArr, int[] iArr) {
        super(bt7.h.g);
        im7.e(bArr, "segments");
        im7.e(iArr, "directory");
        this.j = bArr;
        this.k = iArr;
    }

    @Override // defpackage.bt7
    public boolean D(int i, bt7 bt7Var, int i2, int i3) {
        im7.e(bt7Var, "other");
        if (i < 0 || i > t() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iT = kt7.t(this, i);
        while (i < i4) {
            int i5 = iT == 0 ? 0 : this.k[iT - 1];
            int[] iArr = this.k;
            int i6 = iArr[iT] - i5;
            int i7 = iArr[this.j.length + iT];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!bt7Var.I(i2, this.j[iT], (i - i5) + i7, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iT++;
        }
        return true;
    }

    @Override // defpackage.bt7
    public boolean I(int i, byte[] bArr, int i2, int i3) {
        im7.e(bArr, "other");
        if (i < 0 || i > t() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iT = kt7.t(this, i);
        while (i < i4) {
            int i5 = iT == 0 ? 0 : this.k[iT - 1];
            int[] iArr = this.k;
            int i6 = iArr[iT] - i5;
            int i7 = iArr[this.j.length + iT];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!n56.m(this.j[iT], (i - i5) + i7, bArr, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iT++;
        }
        return true;
    }

    @Override // defpackage.bt7
    public bt7 M() {
        return Q().M();
    }

    @Override // defpackage.bt7
    public byte[] N() {
        byte[] bArr = new byte[t()];
        int length = this.j.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.k;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            ek7.b(this.j[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // defpackage.bt7
    public void P(xs7 xs7Var, int i, int i2) {
        im7.e(xs7Var, "buffer");
        int i3 = i2 + i;
        int iT = kt7.t(this, i);
        while (i < i3) {
            int i4 = iT == 0 ? 0 : this.k[iT - 1];
            int[] iArr = this.k;
            int i5 = iArr[iT] - i4;
            int i6 = iArr[this.j.length + iT];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = (i - i4) + i6;
            qt7 qt7Var = new qt7(this.j[iT], i7, i7 + iMin, true, false);
            qt7 qt7Var2 = xs7Var.e;
            if (qt7Var2 == null) {
                qt7Var.g = qt7Var;
                qt7Var.f = qt7Var;
                xs7Var.e = qt7Var;
            } else {
                im7.c(qt7Var2);
                qt7 qt7Var3 = qt7Var2.g;
                im7.c(qt7Var3);
                qt7Var3.b(qt7Var);
            }
            i += iMin;
            iT++;
        }
        xs7Var.f += t();
    }

    public final bt7 Q() {
        return new bt7(N());
    }

    @Override // defpackage.bt7
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bt7) {
            bt7 bt7Var = (bt7) obj;
            if (bt7Var.t() == t() && D(0, bt7Var, 0, t())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.bt7
    public int hashCode() {
        int i = this.e;
        if (i != 0) {
            return i;
        }
        int length = this.j.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.k;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr = this.j[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.e = i3;
        return i3;
    }

    @Override // defpackage.bt7
    public String i() {
        return Q().i();
    }

    @Override // defpackage.bt7
    public bt7 k(String str) throws NoSuchAlgorithmException {
        im7.e(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = this.j.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.k;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(this.j[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] bArrDigest = messageDigest.digest();
        im7.d(bArrDigest, "digest.digest()");
        return new bt7(bArrDigest);
    }

    @Override // defpackage.bt7
    public int t() {
        return this.k[this.j.length - 1];
    }

    @Override // defpackage.bt7
    public String toString() {
        return Q().toString();
    }

    @Override // defpackage.bt7
    public String w() {
        return Q().w();
    }

    @Override // defpackage.bt7
    public byte[] x() {
        return N();
    }

    @Override // defpackage.bt7
    public byte y(int i) {
        n56.u(this.k[this.j.length - 1], i, 1L);
        int iT = kt7.t(this, i);
        int i2 = iT == 0 ? 0 : this.k[iT - 1];
        int[] iArr = this.k;
        byte[][] bArr = this.j;
        return bArr[iT][(i - i2) + iArr[bArr.length + iT]];
    }
}
