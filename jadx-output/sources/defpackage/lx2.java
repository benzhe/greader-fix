package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class lx2 implements Comparable<lx2> {
    public final byte[] e;

    public lx2(byte[] bArr, jx2 jx2Var) {
        this.e = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(lx2 lx2Var) {
        int length;
        int length2;
        lx2 lx2Var2 = lx2Var;
        byte[] bArr = this.e;
        int length3 = bArr.length;
        byte[] bArr2 = lx2Var2.e;
        if (length3 != bArr2.length) {
            length = bArr.length;
            length2 = bArr2.length;
        } else {
            int i = 0;
            while (true) {
                byte[] bArr3 = this.e;
                if (i >= bArr3.length) {
                    return 0;
                }
                char c = bArr3[i];
                byte[] bArr4 = lx2Var2.e;
                if (c != bArr4[i]) {
                    length = bArr3[i];
                    length2 = bArr4[i];
                    break;
                }
                i++;
            }
        }
        return length - length2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof lx2) {
            return Arrays.equals(this.e, ((lx2) obj).e);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.e);
    }

    public final String toString() {
        byte[] bArr = this.e;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append("0123456789abcdef".charAt(i / 16));
            sb.append("0123456789abcdef".charAt(i % 16));
        }
        return sb.toString();
    }
}
