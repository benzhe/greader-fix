package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class t83 extends k53 {
    public static final int[] m = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    public final int h;
    public final k53 i;
    public final k53 j;
    public final int k;
    public final int l;

    public t83(k53 k53Var, k53 k53Var2) {
        this.i = k53Var;
        this.j = k53Var2;
        int size = k53Var.size();
        this.k = size;
        this.h = k53Var2.size() + size;
        this.l = Math.max(k53Var.y(), k53Var2.y()) + 1;
    }

    public static k53 P(k53 k53Var, k53 k53Var2) {
        int size = k53Var.size();
        int size2 = k53Var2.size();
        byte[] bArr = new byte[size + size2];
        k53Var.n(bArr, 0, 0, size);
        k53Var2.n(bArr, 0, size, size2);
        return new t53(bArr);
    }

    public static int R(int i) {
        int[] iArr = m;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // defpackage.k53
    public final int B(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            return this.i.B(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.j.B(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.j.B(this.i.B(i, i2, i6), 0, i3 - i6);
    }

    @Override // defpackage.k53
    public final byte C(int i) {
        k53.p(i, this.h);
        return G(i);
    }

    @Override // defpackage.k53
    public final byte G(int i) {
        int i2 = this.k;
        return i < i2 ? this.i.G(i) : this.j.G(i - i2);
    }

    @Override // defpackage.k53
    public final int H(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            return this.i.H(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.j.H(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.j.H(this.i.H(i, i2, i6), 0, i3 - i6);
    }

    @Override // defpackage.k53
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k53)) {
            return false;
        }
        k53 k53Var = (k53) obj;
        if (this.h != k53Var.size()) {
            return false;
        }
        if (this.h == 0) {
            return true;
        }
        int i = this.e;
        int i2 = k53Var.e;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        u83 u83Var = new u83(this, null);
        q53 q53Var = (q53) u83Var.next();
        u83 u83Var2 = new u83(k53Var, null);
        q53 q53Var2 = (q53) u83Var2.next();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int size = q53Var.size() - i3;
            int size2 = q53Var2.size() - i4;
            int iMin = Math.min(size, size2);
            if (!(i3 == 0 ? q53Var.P(q53Var2, i4, iMin) : q53Var2.P(q53Var, i3, iMin))) {
                return false;
            }
            i5 += iMin;
            int i6 = this.h;
            if (i5 >= i6) {
                if (i5 == i6) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                q53Var = (q53) u83Var.next();
                i3 = 0;
            } else {
                i3 += iMin;
                q53Var = q53Var;
            }
            if (iMin == size2) {
                q53Var2 = (q53) u83Var2.next();
                i4 = 0;
            } else {
                i4 += iMin;
            }
        }
    }

    @Override // defpackage.k53
    public final String j(Charset charset) {
        return new String(d(), charset);
    }

    @Override // defpackage.k53
    public final void l(h53 h53Var) throws IOException {
        this.i.l(h53Var);
        this.j.l(h53Var);
    }

    @Override // defpackage.k53
    public final k53 o(int i, int i2) {
        int iK = k53.K(i, i2, this.h);
        if (iK == 0) {
            return k53.f;
        }
        if (iK == this.h) {
            return this;
        }
        int i3 = this.k;
        if (i2 <= i3) {
            return this.i.o(i, i2);
        }
        if (i >= i3) {
            return this.j.o(i - i3, i2 - i3);
        }
        k53 k53Var = this.i;
        return new t83(k53Var.o(i, k53Var.size()), this.j.o(0, i2 - this.k));
    }

    @Override // defpackage.k53
    public final void r(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            this.i.r(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.j.r(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.i.r(bArr, i, i2, i6);
            this.j.r(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // defpackage.k53, java.lang.Iterable
    /* renamed from: s */
    public final o53 iterator() {
        return new s83(this);
    }

    @Override // defpackage.k53
    public final int size() {
        return this.h;
    }

    @Override // defpackage.k53
    public final boolean u() {
        int iB = this.i.B(0, 0, this.k);
        k53 k53Var = this.j;
        return k53Var.B(iB, 0, k53Var.size()) == 0;
    }

    @Override // defpackage.k53
    public final u53 v() {
        return new y53(new x83(this), RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
    }

    @Override // defpackage.k53
    public final int y() {
        return this.l;
    }

    @Override // defpackage.k53
    public final boolean z() {
        return this.h >= R(this.l);
    }
}
