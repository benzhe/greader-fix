package defpackage;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class m14 extends y04<m14> implements Cloneable {
    public String[] g;
    public String[] h;
    public int[] i;
    public long[] j;
    public long[] k;

    public m14() {
        String[] strArr = d14.c;
        this.g = strArr;
        this.h = strArr;
        this.i = d14.a;
        long[] jArr = d14.b;
        this.j = jArr;
        this.k = jArr;
        this.f = null;
        this.e = -1;
    }

    @Override // defpackage.y04, defpackage.c14
    public final void b(w04 w04Var) throws IOException {
        String[] strArr = this.g;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.g;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    w04Var.c(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.h;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.h;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    w04Var.c(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.i;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.i;
                if (i4 >= iArr2.length) {
                    break;
                }
                w04Var.k(3, iArr2[i4]);
                i4++;
            }
        }
        long[] jArr = this.j;
        if (jArr != null && jArr.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr2 = this.j;
                if (i5 >= jArr2.length) {
                    break;
                }
                w04Var.o(4, jArr2[i5]);
                i5++;
            }
        }
        long[] jArr3 = this.k;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.k;
                if (i >= jArr4.length) {
                    break;
                }
                w04Var.o(5, jArr4[i]);
                i++;
            }
        }
        super.b(w04Var);
    }

    @Override // defpackage.y04, defpackage.c14
    public final Object clone() throws CloneNotSupportedException {
        try {
            m14 m14Var = (m14) super.clone();
            String[] strArr = this.g;
            if (strArr != null && strArr.length > 0) {
                m14Var.g = (String[]) strArr.clone();
            }
            String[] strArr2 = this.h;
            if (strArr2 != null && strArr2.length > 0) {
                m14Var.h = (String[]) strArr2.clone();
            }
            int[] iArr = this.i;
            if (iArr != null && iArr.length > 0) {
                m14Var.i = (int[]) iArr.clone();
            }
            long[] jArr = this.j;
            if (jArr != null && jArr.length > 0) {
                m14Var.j = (long[]) jArr.clone();
            }
            long[] jArr2 = this.k;
            if (jArr2 != null && jArr2.length > 0) {
                m14Var.k = (long[]) jArr2.clone();
            }
            return m14Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.y04, defpackage.c14
    public final int e() {
        int length;
        long[] jArr;
        int[] iArr;
        super.e();
        String[] strArr = this.g;
        int i = 0;
        if (strArr == null || strArr.length <= 0) {
            length = 0;
        } else {
            int i2 = 0;
            int iT = 0;
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.g;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    i3++;
                    int iA = w04.a(str);
                    iT += w04.t(iA) + iA;
                }
                i2++;
            }
            length = (i3 * 1) + iT + 0;
        }
        String[] strArr3 = this.h;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            int iT2 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr4 = this.h;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i4];
                if (str2 != null) {
                    i5++;
                    int iA2 = w04.a(str2);
                    iT2 += w04.t(iA2) + iA2;
                }
                i4++;
            }
            length = length + iT2 + (i5 * 1);
        }
        int[] iArr2 = this.i;
        if (iArr2 != null && iArr2.length > 0) {
            int i6 = 0;
            int iS = 0;
            while (true) {
                iArr = this.i;
                if (i6 >= iArr.length) {
                    break;
                }
                iS += w04.s(iArr[i6]);
                i6++;
            }
            length = length + iS + (iArr.length * 1);
        }
        long[] jArr2 = this.j;
        if (jArr2 != null && jArr2.length > 0) {
            int i7 = 0;
            int iQ = 0;
            while (true) {
                jArr = this.j;
                if (i7 >= jArr.length) {
                    break;
                }
                iQ += w04.q(jArr[i7]);
                i7++;
            }
            length = length + iQ + (jArr.length * 1);
        }
        long[] jArr3 = this.k;
        if (jArr3 == null || jArr3.length <= 0) {
            return length;
        }
        int iQ2 = 0;
        while (true) {
            long[] jArr4 = this.k;
            if (i >= jArr4.length) {
                return length + iQ2 + (jArr4.length * 1);
            }
            iQ2 += w04.q(jArr4[i]);
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m14)) {
            return false;
        }
        m14 m14Var = (m14) obj;
        if (!b14.c(this.g, m14Var.g) || !b14.c(this.h, m14Var.h) || !b14.a(this.i, m14Var.i) || !b14.b(this.j, m14Var.j) || !b14.b(this.k, m14Var.k)) {
            return false;
        }
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            return this.f.equals(m14Var.f);
        }
        z04 z04Var2 = m14Var.f;
        return z04Var2 == null || z04Var2.b();
    }

    @Override // defpackage.y04, defpackage.c14
    /* renamed from: f */
    public final /* synthetic */ c14 clone() throws CloneNotSupportedException {
        return (m14) clone();
    }

    @Override // defpackage.y04
    /* renamed from: g */
    public final /* synthetic */ y04 clone() throws CloneNotSupportedException {
        return (m14) clone();
    }

    public final int hashCode() {
        int iHashCode = (((((m14.class.getName().hashCode() + 527) * 31) + b14.d(this.g)) * 31) + b14.d(this.h)) * 31;
        int[] iArr = this.i;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + ((iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr))) * 31;
        long[] jArr = this.j;
        int iHashCode4 = (iHashCode3 + ((jArr == null || jArr.length == 0) ? 0 : Arrays.hashCode(jArr))) * 31;
        long[] jArr2 = this.k;
        int iHashCode5 = (iHashCode4 + ((jArr2 == null || jArr2.length == 0) ? 0 : Arrays.hashCode(jArr2))) * 31;
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            iHashCode2 = this.f.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }
}
