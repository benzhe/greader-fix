package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zk6 {
    public static final zk6 f = new zk6(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public zk6() {
        this(0, new int[8], new Object[8], true);
    }

    public static zk6 b() {
        return new zk6(0, new int[8], new Object[8], true);
    }

    public static void d(int i, Object obj, hl6 hl6Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ((ui6) hl6Var).a.b0(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            ((ui6) hl6Var).a.O(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            ((ui6) hl6Var).a.K(i2, (qi6) obj);
        } else {
            if (i3 != 3) {
                if (i3 != 5) {
                    throw new RuntimeException(kj6.d());
                }
                ((ui6) hl6Var).a.M(i2, ((Integer) obj).intValue());
                return;
            }
            ui6 ui6Var = (ui6) hl6Var;
            ui6Var.a.Y(i2, 3);
            ((zk6) obj).e(hl6Var);
            ui6Var.a.Y(i2, 4);
        }
    }

    public int a() {
        int iB;
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
                iB = ti6.B(i4, ((Long) this.c[i2]).longValue());
            } else if (i5 == 1) {
                iB = ti6.i(i4, ((Long) this.c[i2]).longValue());
            } else if (i5 == 2) {
                iB = ti6.d(i4, (qi6) this.c[i2]);
            } else if (i5 == 3) {
                iA = ((zk6) this.c[i2]).a() + (ti6.y(i4) * 2) + iA;
            } else {
                if (i5 != 5) {
                    throw new IllegalStateException(kj6.d());
                }
                iB = ti6.h(i4, ((Integer) this.c[i2]).intValue());
            }
            iA = iB + iA;
        }
        this.d = iA;
        return iA;
    }

    public void c(int i, Object obj) {
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

    public void e(hl6 hl6Var) throws IOException {
        if (this.a == 0) {
            return;
        }
        Objects.requireNonNull(hl6Var);
        for (int i = 0; i < this.a; i++) {
            d(this.b[i], this.c[i], hl6Var);
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zk6)) {
            return false;
        }
        zk6 zk6Var = (zk6) obj;
        int i = this.a;
        if (i == zk6Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = zk6Var.b;
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
                Object[] objArr2 = zk6Var.c;
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

    public int hashCode() {
        int i = this.a;
        int i2 = (527 + i) * 31;
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

    public zk6(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }
}
