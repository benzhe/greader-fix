package defpackage;

import java.io.EOFException;

/* loaded from: classes2.dex */
public final class xt7 {
    public static final byte[] a;

    static {
        im7.e("0123456789abcdef", "$this$asUtf8ToByteArray");
        byte[] bytes = "0123456789abcdef".getBytes(wn7.a);
        im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
        a = bytes;
    }

    public static final boolean a(qt7 qt7Var, int i, byte[] bArr, int i2, int i3) {
        im7.e(qt7Var, "segment");
        im7.e(bArr, "bytes");
        int i4 = qt7Var.c;
        byte[] bArr2 = qt7Var.a;
        while (i2 < i3) {
            if (i == i4) {
                qt7Var = qt7Var.f;
                im7.c(qt7Var);
                byte[] bArr3 = qt7Var.a;
                bArr2 = bArr3;
                i = qt7Var.b;
                i4 = qt7Var.c;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String b(xs7 xs7Var, long j) throws EOFException {
        im7.e(xs7Var, "$this$readUtf8Line");
        if (j > 0) {
            long j2 = j - 1;
            if (xs7Var.f(j2) == ((byte) 13)) {
                String strW = xs7Var.w(j2);
                xs7Var.skip(2L);
                return strW;
            }
        }
        String strW2 = xs7Var.w(j);
        xs7Var.skip(1L);
        return strW2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r19 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int c(defpackage.xs7 r17, defpackage.lt7 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 175
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xt7.c(xs7, lt7, boolean):int");
    }
}
