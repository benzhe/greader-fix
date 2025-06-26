package defpackage;

import defpackage.ck4;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public class ak4 extends vj4 {
    public final byte[] h;

    public ak4(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.h = bArr;
    }

    @Override // defpackage.vj4
    public byte d(int i) {
        return this.h[i];
    }

    @Override // defpackage.vj4
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vj4) || h() != ((vj4) obj).h()) {
            return false;
        }
        if (h() == 0) {
            return true;
        }
        if (!(obj instanceof ak4)) {
            return obj.equals(this);
        }
        ak4 ak4Var = (ak4) obj;
        int i = this.e;
        int i2 = ak4Var.e;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int iH = h();
        if (iH > ak4Var.h()) {
            int iH2 = h();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(iH);
            sb.append(iH2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (iH > ak4Var.h()) {
            throw new IllegalArgumentException(jo.N(59, "Ran off end of other: 0, ", iH, ", ", ak4Var.h()));
        }
        byte[] bArr = this.h;
        byte[] bArr2 = ak4Var.h;
        int iU = u() + iH;
        int iU2 = u();
        int iU3 = ak4Var.u();
        while (iU2 < iU) {
            if (bArr[iU2] != bArr2[iU3]) {
                return false;
            }
            iU2++;
            iU3++;
        }
        return true;
    }

    @Override // defpackage.vj4
    public int h() {
        return this.h.length;
    }

    @Override // defpackage.vj4
    public final int j(int i, int i2, int i3) {
        byte[] bArr = this.h;
        int iU = u();
        Charset charset = rk4.a;
        for (int i4 = iU; i4 < iU + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    @Override // defpackage.vj4
    public final vj4 l(int i, int i2) {
        int iR = vj4.r(0, i2, h());
        return iR == 0 ? vj4.f : new wj4(this.h, u(), iR);
    }

    @Override // defpackage.vj4
    public final String n(Charset charset) {
        return new String(this.h, u(), h(), charset);
    }

    @Override // defpackage.vj4
    public final void o(sj4 sj4Var) throws IOException {
        ((ck4.a) sj4Var).X(this.h, u(), h());
    }

    @Override // defpackage.vj4
    public byte p(int i) {
        return this.h[i];
    }

    @Override // defpackage.vj4
    public final boolean s() {
        int iU = u();
        return kn4.a.a(0, this.h, iU, h() + iU) == 0;
    }

    public int u() {
        return 0;
    }
}
