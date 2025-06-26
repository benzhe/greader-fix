package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c04 {
    public static final c04 f = new c04(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public c04() {
        this(0, new int[8], new Object[8], true);
    }

    public c04(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static void c(int i, Object obj, v04 v04Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ((bx3) v04Var).a.f(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            ((bx3) v04Var).a.B(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            ((bx3) v04Var).a.g(i2, (sw3) obj);
            return;
        }
        if (i3 == 3) {
            bx3 bx3Var = (bx3) v04Var;
            bx3Var.a.q(i2, 3);
            ((c04) obj).d(v04Var);
            bx3Var.a.q(i2, 4);
            return;
        }
        if (i3 != 5) {
            int i4 = yx3.e;
            throw new RuntimeException(new zx3("Protocol message tag had invalid wire type."));
        }
        ((bx3) v04Var).a.I(i2, ((Integer) obj).intValue());
    }

    public static c04 e() {
        return new c04(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iF;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iA = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 == 0) {
                iF = zw3.F(i4, ((Long) this.c[i2]).longValue());
            } else if (i5 == 1) {
                ((Long) this.c[i2]).longValue();
                iF = zw3.J(i4);
            } else if (i5 == 2) {
                iF = zw3.x(i4, (sw3) this.c[i2]);
            } else if (i5 == 3) {
                iA = ((c04) this.c[i2]).a() + (zw3.X(i4) << 1) + iA;
            } else {
                if (i5 != 5) {
                    int i6 = yx3.e;
                    throw new IllegalStateException(new zx3("Protocol message tag had invalid wire type."));
                }
                ((Integer) this.c[i2]).intValue();
                iF = zw3.Q(i4);
            }
            iA = iF + iA;
        }
        this.d = iA;
        return iA;
    }

    public final void b(int i, Object obj) {
        if (!this.e) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.a;
        int[] iArr = this.b;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.b = Arrays.copyOf(iArr, i3);
            this.c = Arrays.copyOf(this.c, i3);
        }
        int[] iArr2 = this.b;
        int i4 = this.a;
        iArr2[i4] = i;
        this.c[i4] = obj;
        this.a = i4 + 1;
    }

    public final void d(v04 v04Var) throws IOException {
        if (this.a == 0) {
            return;
        }
        Objects.requireNonNull(v04Var);
        for (int i = 0; i < this.a; i++) {
            c(this.b[i], this.c[i], v04Var);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c04)) {
            return false;
        }
        c04 c04Var = (c04) obj;
        int i = this.a;
        if (i == c04Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = c04Var.b;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                }
                if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                Object[] objArr = this.c;
                Object[] objArr2 = c04Var.c;
                int i3 = this.a;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    }
                    i4++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = (i + 527) * 31;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }
}
