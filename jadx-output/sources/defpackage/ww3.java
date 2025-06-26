package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class ww3 extends sw3 {
    public final byte[] h;

    public ww3(byte[] bArr) {
        this.h = bArr;
    }

    @Override // defpackage.sw3
    public final int d(int i, int i2, int i3) {
        byte[] bArr = this.h;
        int iP = p();
        Charset charset = ux3.a;
        for (int i4 = iP; i4 < iP + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    @Override // defpackage.sw3
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sw3) || size() != ((sw3) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof ww3)) {
            return obj.equals(this);
        }
        ww3 ww3Var = (ww3) obj;
        int i = this.e;
        int i2 = ww3Var.e;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int size = size();
        if (size > ww3Var.size()) {
            int size2 = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(size);
            sb.append(size2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (size > ww3Var.size()) {
            throw new IllegalArgumentException(jo.N(59, "Ran off end of other: 0, ", size, ", ", ww3Var.size()));
        }
        byte[] bArr = this.h;
        byte[] bArr2 = ww3Var.h;
        int iP = p() + size;
        int iP2 = p();
        int iP3 = ww3Var.p();
        while (iP2 < iP) {
            if (bArr[iP2] != bArr2[iP3]) {
                return false;
            }
            iP2++;
            iP3++;
        }
        return true;
    }

    @Override // defpackage.sw3
    public final String h(Charset charset) {
        return new String(this.h, p(), size(), charset);
    }

    @Override // defpackage.sw3
    public final void j(rw3 rw3Var) throws IOException {
        rw3Var.a(this.h, p(), size());
    }

    @Override // defpackage.sw3
    public final boolean l() {
        int iP = p();
        return j04.e(this.h, iP, size() + iP);
    }

    @Override // defpackage.sw3
    public byte o(int i) {
        return this.h[i];
    }

    public int p() {
        return 0;
    }

    @Override // defpackage.sw3
    public int size() {
        return this.h.length;
    }
}
