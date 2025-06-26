package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public class e84 extends g84 {
    public final byte[] h;

    public e84(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.h = bArr;
    }

    @Override // defpackage.g84
    public byte d(int i) {
        return this.h[i];
    }

    @Override // defpackage.g84
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g84) || j() != ((g84) obj).j()) {
            return false;
        }
        if (j() == 0) {
            return true;
        }
        if (!(obj instanceof e84)) {
            return obj.equals(this);
        }
        e84 e84Var = (e84) obj;
        int i = this.e;
        int i2 = e84Var.e;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int iJ = j();
        if (iJ > e84Var.j()) {
            int iJ2 = j();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(iJ);
            sb.append(iJ2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (iJ > e84Var.j()) {
            int iJ3 = e84Var.j();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(0);
            sb2.append(", ");
            sb2.append(iJ);
            sb2.append(", ");
            sb2.append(iJ3);
            throw new IllegalArgumentException(sb2.toString());
        }
        byte[] bArr = this.h;
        byte[] bArr2 = e84Var.h;
        e84Var.v();
        int i3 = 0;
        int i4 = 0;
        while (i3 < iJ) {
            if (bArr[i3] != bArr2[i4]) {
                return false;
            }
            i3++;
            i4++;
        }
        return true;
    }

    @Override // defpackage.g84
    public byte h(int i) {
        return this.h[i];
    }

    @Override // defpackage.g84
    public int j() {
        return this.h.length;
    }

    @Override // defpackage.g84
    public final g84 l(int i, int i2) {
        int iU = g84.u(0, i2, j());
        return iU == 0 ? g84.f : new c84(this.h, iU);
    }

    @Override // defpackage.g84
    public final void n(y74 y74Var) throws IOException {
        ((j84) y74Var).A(this.h, 0, j());
    }

    @Override // defpackage.g84
    public final String o(Charset charset) {
        return new String(this.h, 0, j(), charset);
    }

    @Override // defpackage.g84
    public final boolean p() {
        return qb4.a(this.h, 0, j());
    }

    @Override // defpackage.g84
    public final int r(int i, int i2, int i3) {
        byte[] bArr = this.h;
        Charset charset = j94.a;
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public int v() {
        return 0;
    }
}
