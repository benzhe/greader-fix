package defpackage;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class p14 extends y04<p14> implements Cloneable {
    public long g = 0;
    public long h = 0;
    public q14[] i;
    public byte[] j;
    public e14 k;
    public byte[] l;
    public String m;
    public String n;
    public m14 o;
    public String p;
    public long q;
    public n14 r;
    public byte[] s;
    public String t;
    public int[] u;
    public f14 v;
    public boolean w;

    public p14() {
        if (q14.g == null) {
            synchronized (b14.a) {
                if (q14.g == null) {
                    q14.g = new q14[0];
                }
            }
        }
        this.i = q14.g;
        byte[] bArr = d14.e;
        this.j = bArr;
        this.k = null;
        this.l = bArr;
        this.m = "";
        this.n = "";
        this.o = null;
        this.p = "";
        this.q = 180000L;
        this.r = null;
        this.s = bArr;
        this.t = "";
        this.u = d14.a;
        this.v = null;
        this.w = false;
        this.f = null;
        this.e = -1;
    }

    @Override // defpackage.y04, defpackage.c14
    public final void b(w04 w04Var) throws IOException {
        long j = this.g;
        if (j != 0) {
            w04Var.o(1, j);
        }
        q14[] q14VarArr = this.i;
        if (q14VarArr != null && q14VarArr.length > 0) {
            int i = 0;
            while (true) {
                q14[] q14VarArr2 = this.i;
                if (i >= q14VarArr2.length) {
                    break;
                }
                q14 q14Var = q14VarArr2[i];
                if (q14Var != null) {
                    w04Var.b(3, q14Var);
                }
                i++;
            }
        }
        byte[] bArr = this.j;
        byte[] bArr2 = d14.e;
        if (!Arrays.equals(bArr, bArr2)) {
            w04Var.d(4, this.j);
        }
        if (!Arrays.equals(this.l, bArr2)) {
            w04Var.d(6, this.l);
        }
        m14 m14Var = this.o;
        if (m14Var != null) {
            w04Var.b(7, m14Var);
        }
        String str = this.m;
        if (str != null && !str.equals("")) {
            w04Var.c(8, this.m);
        }
        e14 e14Var = this.k;
        if (e14Var != null) {
            w04Var.n(9, e14Var);
        }
        String str2 = this.n;
        if (str2 != null && !str2.equals("")) {
            w04Var.c(13, this.n);
        }
        String str3 = this.p;
        if (str3 != null && !str3.equals("")) {
            w04Var.c(14, this.p);
        }
        long j2 = this.q;
        if (j2 != 180000) {
            w04Var.j(15, 0);
            w04Var.p((j2 >> 63) ^ (j2 << 1));
        }
        n14 n14Var = this.r;
        if (n14Var != null) {
            w04Var.b(16, n14Var);
        }
        long j3 = this.h;
        if (j3 != 0) {
            w04Var.o(17, j3);
        }
        if (!Arrays.equals(this.s, bArr2)) {
            w04Var.d(18, this.s);
        }
        int[] iArr = this.u;
        if (iArr != null && iArr.length > 0) {
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.u;
                if (i2 >= iArr2.length) {
                    break;
                }
                w04Var.k(20, iArr2[i2]);
                i2++;
            }
        }
        f14 f14Var = this.v;
        if (f14Var != null) {
            w04Var.n(23, f14Var);
        }
        String str4 = this.t;
        if (str4 != null && !str4.equals("")) {
            w04Var.c(24, this.t);
        }
        boolean z = this.w;
        if (z) {
            w04Var.j(25, 0);
            byte b = z ? (byte) 1 : (byte) 0;
            if (!w04Var.a.hasRemaining()) {
                throw new x04(w04Var.a.position(), w04Var.a.limit());
            }
            w04Var.a.put(b);
        }
        super.b(w04Var);
    }

    @Override // defpackage.y04, defpackage.c14
    public final Object clone() throws CloneNotSupportedException {
        try {
            p14 p14Var = (p14) super.clone();
            q14[] q14VarArr = this.i;
            if (q14VarArr != null && q14VarArr.length > 0) {
                p14Var.i = new q14[q14VarArr.length];
                int i = 0;
                while (true) {
                    q14[] q14VarArr2 = this.i;
                    if (i >= q14VarArr2.length) {
                        break;
                    }
                    if (q14VarArr2[i] != null) {
                        p14Var.i[i] = (q14) q14VarArr2[i].clone();
                    }
                    i++;
                }
            }
            e14 e14Var = this.k;
            if (e14Var != null) {
                p14Var.k = e14Var;
            }
            m14 m14Var = this.o;
            if (m14Var != null) {
                p14Var.o = (m14) m14Var.clone();
            }
            n14 n14Var = this.r;
            if (n14Var != null) {
                p14Var.r = (n14) n14Var.clone();
            }
            int[] iArr = this.u;
            if (iArr != null && iArr.length > 0) {
                p14Var.u = (int[]) iArr.clone();
            }
            f14 f14Var = this.v;
            if (f14Var != null) {
                p14Var.v = f14Var;
            }
            return p14Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.y04, defpackage.c14
    public final int e() {
        int[] iArr;
        super.e();
        long j = this.g;
        int i = 0;
        int iL = j != 0 ? w04.l(1, j) + 0 : 0;
        q14[] q14VarArr = this.i;
        if (q14VarArr != null && q14VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                q14[] q14VarArr2 = this.i;
                if (i2 >= q14VarArr2.length) {
                    break;
                }
                q14 q14Var = q14VarArr2[i2];
                if (q14Var != null) {
                    iL += w04.g(3, q14Var);
                }
                i2++;
            }
        }
        byte[] bArr = this.j;
        byte[] bArr2 = d14.e;
        if (!Arrays.equals(bArr, bArr2)) {
            iL += w04.i(4, this.j);
        }
        if (!Arrays.equals(this.l, bArr2)) {
            iL += w04.i(6, this.l);
        }
        m14 m14Var = this.o;
        if (m14Var != null) {
            iL += w04.g(7, m14Var);
        }
        String str = this.m;
        if (str != null && !str.equals("")) {
            iL += w04.h(8, this.m);
        }
        e14 e14Var = this.k;
        if (e14Var != null) {
            iL += zw3.y(9, e14Var);
        }
        String str2 = this.n;
        if (str2 != null && !str2.equals("")) {
            iL += w04.h(13, this.n);
        }
        String str3 = this.p;
        if (str3 != null && !str3.equals("")) {
            iL += w04.h(14, this.p);
        }
        long j2 = this.q;
        if (j2 != 180000) {
            iL += w04.q((j2 >> 63) ^ (j2 << 1)) + w04.r(15);
        }
        n14 n14Var = this.r;
        if (n14Var != null) {
            iL += w04.g(16, n14Var);
        }
        long j3 = this.h;
        if (j3 != 0) {
            iL += w04.l(17, j3);
        }
        if (!Arrays.equals(this.s, bArr2)) {
            iL += w04.i(18, this.s);
        }
        int[] iArr2 = this.u;
        if (iArr2 != null && iArr2.length > 0) {
            int iS = 0;
            while (true) {
                iArr = this.u;
                if (i >= iArr.length) {
                    break;
                }
                iS += w04.s(iArr[i]);
                i++;
            }
            iL = iL + iS + (iArr.length * 2);
        }
        f14 f14Var = this.v;
        if (f14Var != null) {
            iL += zw3.y(23, f14Var);
        }
        String str4 = this.t;
        if (str4 != null && !str4.equals("")) {
            iL += w04.h(24, this.t);
        }
        return this.w ? iL + w04.r(25) + 1 : iL;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p14)) {
            return false;
        }
        p14 p14Var = (p14) obj;
        if (this.g != p14Var.g || this.h != p14Var.h || !b14.c(this.i, p14Var.i) || !Arrays.equals(this.j, p14Var.j)) {
            return false;
        }
        e14 e14Var = this.k;
        if (e14Var == null) {
            if (p14Var.k != null) {
                return false;
            }
        } else if (!e14Var.equals(p14Var.k)) {
            return false;
        }
        if (!Arrays.equals(this.l, p14Var.l)) {
            return false;
        }
        String str = this.m;
        if (str == null) {
            if (p14Var.m != null) {
                return false;
            }
        } else if (!str.equals(p14Var.m)) {
            return false;
        }
        String str2 = this.n;
        if (str2 == null) {
            if (p14Var.n != null) {
                return false;
            }
        } else if (!str2.equals(p14Var.n)) {
            return false;
        }
        m14 m14Var = this.o;
        if (m14Var == null) {
            if (p14Var.o != null) {
                return false;
            }
        } else if (!m14Var.equals(p14Var.o)) {
            return false;
        }
        String str3 = this.p;
        if (str3 == null) {
            if (p14Var.p != null) {
                return false;
            }
        } else if (!str3.equals(p14Var.p)) {
            return false;
        }
        if (this.q != p14Var.q) {
            return false;
        }
        n14 n14Var = this.r;
        if (n14Var == null) {
            if (p14Var.r != null) {
                return false;
            }
        } else if (!n14Var.equals(p14Var.r)) {
            return false;
        }
        if (!Arrays.equals(this.s, p14Var.s)) {
            return false;
        }
        String str4 = this.t;
        if (str4 == null) {
            if (p14Var.t != null) {
                return false;
            }
        } else if (!str4.equals(p14Var.t)) {
            return false;
        }
        if (!b14.a(this.u, p14Var.u)) {
            return false;
        }
        f14 f14Var = this.v;
        if (f14Var == null) {
            if (p14Var.v != null) {
                return false;
            }
        } else if (!f14Var.equals(p14Var.v)) {
            return false;
        }
        if (this.w != p14Var.w) {
            return false;
        }
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            return this.f.equals(p14Var.f);
        }
        z04 z04Var2 = p14Var.f;
        return z04Var2 == null || z04Var2.b();
    }

    @Override // defpackage.y04, defpackage.c14
    /* renamed from: f */
    public final /* synthetic */ c14 clone() throws CloneNotSupportedException {
        return (p14) clone();
    }

    @Override // defpackage.y04
    /* renamed from: g */
    public final /* synthetic */ y04 clone() throws CloneNotSupportedException {
        return (p14) clone();
    }

    public final int hashCode() {
        int iHashCode = (p14.class.getName().hashCode() + 527) * 31;
        long j = this.g;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.h;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31 * 31;
        int iHashCode2 = 0;
        int iHashCode3 = Arrays.hashCode(this.j) + ((((((((((i2 + 0) * 31) + 0) * 31) + 0) * 31 * 31) + 1237) * 31) + b14.d(this.i)) * 31);
        e14 e14Var = this.k;
        int iHashCode4 = (Arrays.hashCode(this.l) + (((iHashCode3 * 31) + (e14Var == null ? 0 : e14Var.hashCode())) * 31)) * 31;
        String str = this.m;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.n;
        int iHashCode6 = iHashCode5 + (str2 == null ? 0 : str2.hashCode());
        m14 m14Var = this.o;
        int iHashCode7 = ((iHashCode6 * 31) + (m14Var == null ? 0 : m14Var.hashCode())) * 31;
        String str3 = this.p;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        long j3 = this.q;
        n14 n14Var = this.r;
        int iHashCode9 = (Arrays.hashCode(this.s) + ((((iHashCode8 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (n14Var == null ? 0 : n14Var.hashCode())) * 31)) * 31;
        String str4 = this.t;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31 * 31;
        int[] iArr = this.u;
        int iHashCode11 = (iHashCode10 + ((iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr))) * 31;
        f14 f14Var = this.v;
        int iHashCode12 = ((((iHashCode11 * 31) + (f14Var == null ? 0 : f14Var.hashCode())) * 31) + (this.w ? 1231 : 1237)) * 31;
        z04 z04Var = this.f;
        if (z04Var != null && !z04Var.b()) {
            iHashCode2 = this.f.hashCode();
        }
        return iHashCode12 + iHashCode2;
    }
}
