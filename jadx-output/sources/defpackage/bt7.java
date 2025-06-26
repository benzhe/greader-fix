package defpackage;

import java.io.Serializable;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class bt7 implements Serializable, Comparable<bt7> {
    public transient int e;
    public transient String f;
    public final byte[] g;
    public static final a i = new a(null);
    public static final bt7 h = new bt7(new byte[0]);

    public static final class a {
        public a(gm7 gm7Var) {
        }

        public static bt7 d(a aVar, byte[] bArr, int i, int i2, int i3) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            im7.e(bArr, "$this$toByteString");
            n56.u(bArr.length, i, i2);
            return new bt7(ek7.e(bArr, i, i2 + i));
        }

        public final bt7 a(String str) {
            int i;
            int i2;
            char cCharAt;
            im7.e(str, "$this$decodeBase64");
            byte[] bArr = us7.a;
            im7.e(str, "$this$decodeBase64ToArray");
            int length = str.length();
            while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
                length = i2;
            }
            int i3 = (int) ((length * 6) / 8);
            byte[] bArrCopyOf = new byte[i3];
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i4 < length) {
                    char cCharAt2 = str.charAt(i4);
                    if ('A' > cCharAt2 || 'Z' < cCharAt2) {
                        if ('a' > cCharAt2 || 'z' < cCharAt2) {
                            if ('0' > cCharAt2 || '9' < cCharAt2) {
                                if (cCharAt2 != '+' && cCharAt2 != '-') {
                                    if (cCharAt2 != '/' && cCharAt2 != '_') {
                                        if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                                            break;
                                        }
                                        i4++;
                                    } else {
                                        i = 63;
                                    }
                                } else {
                                    i = 62;
                                }
                            } else {
                                i = cCharAt2 + 4;
                            }
                        } else {
                            i = cCharAt2 - 'G';
                        }
                    } else {
                        i = cCharAt2 - 'A';
                    }
                    i6 = (i6 << 6) | i;
                    i5++;
                    if (i5 % 4 == 0) {
                        int i8 = i7 + 1;
                        bArrCopyOf[i7] = (byte) (i6 >> 16);
                        int i9 = i8 + 1;
                        bArrCopyOf[i8] = (byte) (i6 >> 8);
                        bArrCopyOf[i9] = (byte) i6;
                        i7 = i9 + 1;
                    }
                    i4++;
                } else {
                    int i10 = i5 % 4;
                    if (i10 != 1) {
                        if (i10 == 2) {
                            bArrCopyOf[i7] = (byte) ((i6 << 12) >> 16);
                            i7++;
                        } else if (i10 == 3) {
                            int i11 = i6 << 6;
                            int i12 = i7 + 1;
                            bArrCopyOf[i7] = (byte) (i11 >> 16);
                            i7 = i12 + 1;
                            bArrCopyOf[i12] = (byte) (i11 >> 8);
                        }
                        if (i7 != i3) {
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i7);
                            im7.d(bArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                        }
                    }
                }
            }
            bArrCopyOf = null;
            if (bArrCopyOf != null) {
                return new bt7(bArrCopyOf);
            }
            return null;
        }

        public final bt7 b(String str) {
            im7.e(str, "$this$decodeHex");
            if (!(str.length() % 2 == 0)) {
                throw new IllegalArgumentException(jo.n("Unexpected hex string: ", str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (yt7.a(str.charAt(i2 + 1)) + (yt7.a(str.charAt(i2)) << 4));
            }
            return new bt7(bArr);
        }

        public final bt7 c(String str) {
            im7.e(str, "$this$encodeUtf8");
            im7.e(str, "$this$asUtf8ToByteArray");
            byte[] bytes = str.getBytes(wn7.a);
            im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
            bt7 bt7Var = new bt7(bytes);
            bt7Var.f = str;
            return bt7Var;
        }
    }

    public bt7(byte[] bArr) {
        im7.e(bArr, "data");
        this.g = bArr;
    }

    public static final bt7 C(byte... bArr) {
        im7.e(bArr, "data");
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        im7.d(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new bt7(bArrCopyOf);
    }

    public static final bt7 l(String str) {
        im7.e(str, "$this$encodeUtf8");
        im7.e(str, "$this$asUtf8ToByteArray");
        byte[] bytes = str.getBytes(wn7.a);
        im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
        bt7 bt7Var = new bt7(bytes);
        bt7Var.f = str;
        return bt7Var;
    }

    public boolean D(int i2, bt7 bt7Var, int i3, int i4) {
        im7.e(bt7Var, "other");
        return bt7Var.I(i3, this.g, i2, i4);
    }

    public boolean I(int i2, byte[] bArr, int i3, int i4) {
        im7.e(bArr, "other");
        if (i2 >= 0) {
            byte[] bArr2 = this.g;
            if (i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && n56.m(bArr2, i2, bArr, i3, i4)) {
                return true;
            }
        }
        return false;
    }

    public bt7 K() {
        return k("SHA-1");
    }

    public final boolean L(bt7 bt7Var) {
        im7.e(bt7Var, "prefix");
        return D(0, bt7Var, 0, bt7Var.t());
    }

    public bt7 M() {
        byte b;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.g;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i2];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                im7.d(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i2] = (byte) (b2 + 32);
                for (int i3 = i2 + 1; i3 < bArrCopyOf.length; i3++) {
                    byte b4 = bArrCopyOf[i3];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i3] = (byte) (b4 + 32);
                    }
                }
                return new bt7(bArrCopyOf);
            }
            i2++;
        }
    }

    public byte[] N() {
        byte[] bArr = this.g;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        im7.d(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    public String O() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        byte[] bArrX = x();
        im7.e(bArrX, "$this$toUtf8String");
        String str2 = new String(bArrX, wn7.a);
        this.f = str2;
        return str2;
    }

    public void P(xs7 xs7Var, int i2, int i3) {
        im7.e(xs7Var, "buffer");
        im7.e(this, "$this$commonWrite");
        im7.e(xs7Var, "buffer");
        xs7Var.L(this.g, i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(defpackage.bt7 r8) {
        /*
            r7 = this;
            bt7 r8 = (defpackage.bt7) r8
            java.lang.String r0 = "other"
            defpackage.im7.e(r8, r0)
            int r0 = r7.t()
            int r1 = r8.t()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L15:
            if (r4 >= r2) goto L2b
            byte r5 = r7.y(r4)
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r6 = r8.y(r4)
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r5 != r6) goto L28
            int r4 = r4 + 1
            goto L15
        L28:
            if (r5 >= r6) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bt7.compareTo(java.lang.Object):int");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bt7) {
            bt7 bt7Var = (bt7) obj;
            int iT = bt7Var.t();
            byte[] bArr = this.g;
            if (iT == bArr.length && bt7Var.I(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.e;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.g);
        this.e = iHashCode;
        return iHashCode;
    }

    public String i() {
        byte[] bArr = this.g;
        byte[] bArr2 = us7.a;
        byte[] bArr3 = us7.a;
        im7.e(bArr, "$this$encodeBase64");
        im7.e(bArr3, "map");
        byte[] bArr4 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            byte b = bArr[i2];
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            int i6 = i5 + 1;
            byte b3 = bArr[i5];
            int i7 = i3 + 1;
            bArr4[i3] = bArr3[(b & 255) >> 2];
            int i8 = i7 + 1;
            bArr4[i7] = bArr3[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i9 = i8 + 1;
            bArr4[i8] = bArr3[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i3 = i9 + 1;
            bArr4[i9] = bArr3[b3 & 63];
            i2 = i6;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b4 = bArr[i2];
            int i10 = i3 + 1;
            bArr4[i3] = bArr3[(b4 & 255) >> 2];
            int i11 = i10 + 1;
            bArr4[i10] = bArr3[(b4 & 3) << 4];
            byte b5 = (byte) 61;
            bArr4[i11] = b5;
            bArr4[i11 + 1] = b5;
        } else if (length2 == 2) {
            int i12 = i2 + 1;
            byte b6 = bArr[i2];
            byte b7 = bArr[i12];
            int i13 = i3 + 1;
            bArr4[i3] = bArr3[(b6 & 255) >> 2];
            int i14 = i13 + 1;
            bArr4[i13] = bArr3[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
            bArr4[i14] = bArr3[(b7 & 15) << 2];
            bArr4[i14 + 1] = (byte) 61;
        }
        im7.e(bArr4, "$this$toUtf8String");
        return new String(bArr4, wn7.a);
    }

    public bt7 k(String str) {
        im7.e(str, "algorithm");
        byte[] bArrDigest = MessageDigest.getInstance(str).digest(this.g);
        im7.d(bArrDigest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new bt7(bArrDigest);
    }

    public int t() {
        return this.g.length;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bt7.toString():java.lang.String");
    }

    public String w() {
        byte[] bArr = this.g;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = yt7.a;
            cArr[i2] = cArr2[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public byte[] x() {
        return this.g;
    }

    public byte y(int i2) {
        return this.g[i2];
    }
}
