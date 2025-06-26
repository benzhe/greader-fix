package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public class t53 extends q53 {
    public final byte[] h;

    public t53(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.h = bArr;
    }

    @Override // defpackage.k53
    public final int B(int i, int i2, int i3) {
        int iR = R() + i2;
        return u93.a.a(i, this.h, iR, i3 + iR);
    }

    @Override // defpackage.k53
    public byte C(int i) {
        return this.h[i];
    }

    @Override // defpackage.k53
    public byte G(int i) {
        return this.h[i];
    }

    @Override // defpackage.k53
    public final int H(int i, int i2, int i3) {
        byte[] bArr = this.h;
        int iR = R() + i2;
        Charset charset = u63.a;
        for (int i4 = iR; i4 < iR + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    @Override // defpackage.q53
    public final boolean P(k53 k53Var, int i, int i2) {
        if (i2 > k53Var.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > k53Var.size()) {
            int size2 = k53Var.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(k53Var instanceof t53)) {
            return k53Var.o(i, i3).equals(o(0, i2));
        }
        t53 t53Var = (t53) k53Var;
        byte[] bArr = this.h;
        byte[] bArr2 = t53Var.h;
        int iR = R() + i2;
        int iR2 = R();
        int iR3 = t53Var.R() + i;
        while (iR2 < iR) {
            if (bArr[iR2] != bArr2[iR3]) {
                return false;
            }
            iR2++;
            iR3++;
        }
        return true;
    }

    public int R() {
        return 0;
    }

    @Override // defpackage.k53
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k53) || size() != ((k53) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof t53)) {
            return obj.equals(this);
        }
        t53 t53Var = (t53) obj;
        int i = this.e;
        int i2 = t53Var.e;
        if (i == 0 || i2 == 0 || i == i2) {
            return P(t53Var, 0, size());
        }
        return false;
    }

    @Override // defpackage.k53
    public final String j(Charset charset) {
        return new String(this.h, R(), size(), charset);
    }

    @Override // defpackage.k53
    public final void l(h53 h53Var) throws IOException {
        h53Var.a(this.h, R(), size());
    }

    @Override // defpackage.k53
    public final k53 o(int i, int i2) {
        int iK = k53.K(i, i2, size());
        return iK == 0 ? k53.f : new m53(this.h, R() + i, iK);
    }

    @Override // defpackage.k53
    public void r(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.h, i, bArr, i2, i3);
    }

    @Override // defpackage.k53
    public int size() {
        return this.h.length;
    }

    @Override // defpackage.k53
    public final boolean u() {
        int iR = R();
        return u93.d(this.h, iR, size() + iR);
    }

    @Override // defpackage.k53
    public final u53 v() {
        return u53.d(this.h, R(), size(), true);
    }
}
