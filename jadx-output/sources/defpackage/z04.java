package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z04 implements Cloneable {
    public int[] e;
    public a14[] f;
    public int g;

    static {
        new ArrayList();
    }

    public z04() {
        this(10);
    }

    public z04(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.e = new int[i5];
        this.f = new a14[i5];
        this.g = 0;
    }

    public final boolean b() {
        return this.g == 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.g;
        z04 z04Var = new z04(i);
        System.arraycopy(this.e, 0, z04Var.e, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            a14[] a14VarArr = this.f;
            if (a14VarArr[i2] != null) {
                z04Var.f[i2] = a14VarArr[i2].d();
            }
        }
        z04Var.g = i;
        return z04Var;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z04)) {
            return false;
        }
        z04 z04Var = (z04) obj;
        int i = this.g;
        if (i != z04Var.g) {
            return false;
        }
        int[] iArr = this.e;
        int[] iArr2 = z04Var.e;
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
            a14[] a14VarArr = this.f;
            a14[] a14VarArr2 = z04Var.f;
            int i3 = this.g;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!a14VarArr[i4].equals(a14VarArr2[i4])) {
                    z2 = false;
                    break;
                }
                i4++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i = 0; i < this.g; i++) {
            iHashCode = (((iHashCode * 31) + this.e[i]) * 31) + this.f[i].hashCode();
        }
        return iHashCode;
    }
}
