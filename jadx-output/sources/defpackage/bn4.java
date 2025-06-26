package defpackage;

import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class bn4 {
    public static final bn4 e = new bn4(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;

    public bn4() {
        this(0, new int[8], new Object[8], true);
    }

    public static void a(int i, Object obj, vn4 vn4Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ((ek4) vn4Var).a.f(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            ((ek4) vn4Var).a.y(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            ((ek4) vn4Var).a.g(i2, (vj4) obj);
            return;
        }
        if (i3 == 3) {
            ek4 ek4Var = (ek4) vn4Var;
            ek4Var.a.e(i2, 3);
            ((bn4) obj).b(vn4Var);
            ek4Var.a.e(i2, 4);
            return;
        }
        if (i3 != 5) {
            int i4 = zk4.e;
            throw new RuntimeException(new yk4("Protocol message tag had invalid wire type."));
        }
        ((ek4) vn4Var).a.F(i2, ((Integer) obj).intValue());
    }

    public final void b(vn4 vn4Var) throws IOException {
        if (this.a == 0) {
            return;
        }
        Objects.requireNonNull(vn4Var);
        for (int i = 0; i < this.a; i++) {
            a(this.b[i], this.c[i], vn4Var);
        }
    }

    public final int c() {
        int iD;
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
                iD = ck4.D(i4, ((Long) this.c[i2]).longValue());
            } else if (i5 == 1) {
                ((Long) this.c[i2]).longValue();
                iD = ck4.M(i4);
            } else if (i5 == 2) {
                iD = ck4.v(i4, (vj4) this.c[i2]);
            } else if (i5 == 3) {
                iC = ((bn4) this.c[i2]).c() + (ck4.C(i4) << 1) + iC;
            } else {
                if (i5 != 5) {
                    int i6 = zk4.e;
                    throw new IllegalStateException(new yk4("Protocol message tag had invalid wire type."));
                }
                ((Integer) this.c[i2]).intValue();
                iD = ck4.R(i4);
            }
            iC = iD + iC;
        }
        this.d = iC;
        return iC;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof bn4)) {
            return false;
        }
        bn4 bn4Var = (bn4) obj;
        int i = this.a;
        if (i == bn4Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = bn4Var.b;
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
                Object[] objArr2 = bn4Var.c;
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

    public bn4(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
    }
}
