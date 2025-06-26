package defpackage;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class bb4 {
    public static final bb4 f = new bb4(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public bb4() {
        this(0, new int[8], new Object[8], true);
    }

    public bb4(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static bb4 a() {
        return new bb4(0, new int[8], new Object[8], true);
    }

    public final int b() {
        int iV;
        int iY;
        int iV2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iX = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 == 1) {
                    ((Long) this.c[i2]).longValue();
                    iV2 = l84.v(i4) + 8;
                } else if (i5 == 2) {
                    g84 g84Var = (g84) this.c[i2];
                    int iV3 = l84.v(i4);
                    int iJ = g84Var.j();
                    iX = l84.x(iJ) + iJ + iV3 + iX;
                } else if (i5 == 3) {
                    int iV4 = l84.v(i4);
                    iV = iV4 + iV4;
                    iY = ((bb4) this.c[i2]).b();
                } else {
                    if (i5 != 5) {
                        int i6 = l94.e;
                        throw new IllegalStateException(new k94());
                    }
                    ((Integer) this.c[i2]).intValue();
                    iV2 = l84.v(i4) + 4;
                }
                iX = iV2 + iX;
            } else {
                long jLongValue = ((Long) this.c[i2]).longValue();
                iV = l84.v(i4);
                iY = l84.y(jLongValue);
            }
            iX = iY + iV + iX;
        }
        this.d = iX;
        return iX;
    }

    public final void c(int i, Object obj) {
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

    public final void d(m84 m84Var) throws IOException {
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    m84Var.a.j(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    m84Var.a.k(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    m84Var.a.n(i3, (g84) obj);
                } else if (i4 == 3) {
                    m84Var.a.f(i3, 3);
                    ((bb4) obj).d(m84Var);
                    m84Var.a.f(i3, 4);
                } else {
                    if (i4 != 5) {
                        int i5 = l94.e;
                        throw new RuntimeException(new k94());
                    }
                    m84Var.a.i(i3, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof bb4)) {
            return false;
        }
        bb4 bb4Var = (bb4) obj;
        int i = this.a;
        if (i == bb4Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = bb4Var.b;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.c;
                    Object[] objArr2 = bb4Var.c;
                    int i3 = this.a;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
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
