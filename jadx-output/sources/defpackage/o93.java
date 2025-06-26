package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o93 {
    public static final o93 f = new o93(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public o93() {
        this(0, new int[8], new Object[8], true);
    }

    public static void a(int i, Object obj, ga3 ga3Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ((d63) ga3Var).a.M(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            ((d63) ga3Var).a.Q(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            ((d63) ga3Var).a.d(i2, (k53) obj);
        } else {
            if (i3 != 3) {
                if (i3 != 5) {
                    throw new RuntimeException(e73.f());
                }
                ((d63) ga3Var).a.i(i2, ((Integer) obj).intValue());
                return;
            }
            d63 d63Var = (d63) ga3Var;
            d63Var.a.b(i2, 3);
            ((o93) obj).b(ga3Var);
            d63Var.a.b(i2, 4);
        }
    }

    public static o93 d() {
        return new o93(0, new int[8], new Object[8], true);
    }

    public final void b(ga3 ga3Var) throws IOException {
        if (this.a == 0) {
            return;
        }
        Objects.requireNonNull(ga3Var);
        for (int i = 0; i < this.a; i++) {
            a(this.b[i], this.c[i], ga3Var);
        }
    }

    public final int c() {
        int iS;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iC = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 == 0) {
                iS = b63.S(i4, ((Long) this.c[i2]).longValue());
            } else if (i5 == 1) {
                ((Long) this.c[i2]).longValue();
                iS = b63.U(i4);
            } else if (i5 == 2) {
                iS = b63.u(i4, (k53) this.c[i2]);
            } else if (i5 == 3) {
                iC = ((o93) this.c[i2]).c() + (b63.G(i4) << 1) + iC;
            } else {
                if (i5 != 5) {
                    throw new IllegalStateException(e73.f());
                }
                ((Integer) this.c[i2]).intValue();
                iS = b63.n(i4);
            }
            iC = iS + iC;
        }
        this.d = iC;
        return iC;
    }

    public final void e(int i, Object obj) {
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

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof o93)) {
            return false;
        }
        o93 o93Var = (o93) obj;
        int i = this.a;
        if (i == o93Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = o93Var.b;
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
                Object[] objArr2 = o93Var.c;
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

    public o93(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }
}
