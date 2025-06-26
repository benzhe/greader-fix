package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n14 extends y04<n14> implements Cloneable {
    public byte[][] g = d14.d;

    public n14() {
        this.f = null;
        this.e = -1;
    }

    @Override // defpackage.y04, defpackage.c14
    public final void b(w04 w04Var) throws IOException {
        byte[] bArr = d14.e;
        if (!Arrays.equals(bArr, bArr)) {
            w04Var.d(1, bArr);
        }
        byte[][] bArr2 = this.g;
        if (bArr2 != null && bArr2.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr3 = this.g;
                if (i >= bArr3.length) {
                    break;
                }
                byte[] bArr4 = bArr3[i];
                if (bArr4 != null) {
                    w04Var.d(2, bArr4);
                }
                i++;
            }
        }
        super.b(w04Var);
    }

    @Override // defpackage.y04, defpackage.c14
    public final Object clone() throws CloneNotSupportedException {
        try {
            n14 n14Var = (n14) super.clone();
            byte[][] bArr = this.g;
            if (bArr != null && bArr.length > 0) {
                n14Var.g = (byte[][]) bArr.clone();
            }
            return n14Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.y04, defpackage.c14
    public final int e() {
        super.e();
        byte[] bArr = d14.e;
        int i = 0;
        int i2 = !Arrays.equals(bArr, bArr) ? w04.i(1, bArr) + 0 : 0;
        byte[][] bArr2 = this.g;
        if (bArr2 == null || bArr2.length <= 0) {
            return i2;
        }
        int iT = 0;
        int i3 = 0;
        while (true) {
            byte[][] bArr3 = this.g;
            if (i >= bArr3.length) {
                return i2 + iT + (i3 * 1);
            }
            byte[] bArr4 = bArr3[i];
            if (bArr4 != null) {
                i3++;
                iT += w04.t(bArr4.length) + bArr4.length;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n14)) {
            return false;
        }
        n14 n14Var = (n14) obj;
        byte[] bArr = d14.e;
        Objects.requireNonNull(n14Var);
        if (!Arrays.equals(bArr, bArr)) {
            return false;
        }
        byte[][] bArr2 = this.g;
        byte[][] bArr3 = n14Var.g;
        Object obj2 = b14.a;
        int length = bArr2 == null ? 0 : bArr2.length;
        int length2 = bArr3 == null ? 0 : bArr3.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length || bArr2[i] != null) {
                while (i2 < length2 && bArr3[i2] == null) {
                    i2++;
                }
                boolean z2 = i >= length;
                boolean z3 = i2 >= length2;
                if (!z2 || !z3) {
                    if (z2 != z3 || !Arrays.equals(bArr2[i], bArr3[i2])) {
                        break;
                    }
                    i++;
                    i2++;
                } else {
                    z = true;
                    break;
                }
            } else {
                i++;
            }
        }
        z = false;
        if (!z) {
            return false;
        }
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            return this.f.equals(n14Var.f);
        }
        z04 z04Var2 = n14Var.f;
        return z04Var2 == null || z04Var2.b();
    }

    @Override // defpackage.y04, defpackage.c14
    /* renamed from: f */
    public final /* synthetic */ c14 clone() throws CloneNotSupportedException {
        return (n14) clone();
    }

    @Override // defpackage.y04
    /* renamed from: g */
    public final /* synthetic */ y04 clone() throws CloneNotSupportedException {
        return (n14) clone();
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((Arrays.hashCode(d14.e) + ((n14.class.getName().hashCode() + 527) * 31)) * 31) + 0) * 31;
        byte[][] bArr = this.g;
        Object obj = b14.a;
        int length = bArr == null ? 0 : bArr.length;
        int iHashCode3 = 0;
        for (int i = 0; i < length; i++) {
            byte[] bArr2 = bArr[i];
            if (bArr2 != null) {
                iHashCode3 = (iHashCode3 * 31) + Arrays.hashCode(bArr2);
            }
        }
        int i2 = (((iHashCode2 + iHashCode3) * 31) + 1237) * 31;
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            iHashCode = this.f.hashCode();
        }
        return i2 + iHashCode;
    }
}
