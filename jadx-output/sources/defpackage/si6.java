package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes.dex */
public final class si6 implements ok6 {
    public final ri6 a;
    public int b;
    public int c;
    public int d = 0;

    public si6(ri6 ri6Var) {
        Charset charset = jj6.a;
        this.a = ri6Var;
        ri6Var.d = this;
    }

    @Override // defpackage.ok6
    public <T> T A(qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        T(2);
        return (T) P(qk6Var, yi6Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ok6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void B(java.util.Map<K, V> r8, tj6.a<K, V> r9, defpackage.yi6 r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.T(r0)
            ri6 r1 = r7.a
            int r1 = r1.z()
            ri6 r2 = r7.a
            int r1 = r2.i(r1)
            K r2 = r9.b
            V r3 = r9.d
        L14:
            int r4 = r7.y()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            ri6 r5 = r7.a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.e()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.G()     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            kj6 r4 = new kj6     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
        L3a:
            fl6 r4 = r9.c     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            V r5 = r9.d     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.N(r4, r5, r10)     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            fl6 r4 = r9.a     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.N(r4, r5, r5)     // Catch: kj6.a -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.G()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            kj6 r8 = new kj6     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            ri6 r8 = r7.a
            r8.h(r1)
            return
        L65:
            r8 = move-exception
            ri6 r9 = r7.a
            r9.h(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.si6.B(java.util.Map, tj6$a, yi6):void");
    }

    @Override // defpackage.ok6
    public void C(List<String> list) throws IOException {
        R(list, true);
    }

    @Override // defpackage.ok6
    public qi6 D() throws IOException {
        T(2);
        return this.a.k();
    }

    @Override // defpackage.ok6
    public void E(List<Float> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ej6)) {
            int i = this.b & 7;
            if (i == 2) {
                int iZ = this.a.z();
                U(iZ);
                int iD = this.a.d() + iZ;
                do {
                    list.add(Float.valueOf(this.a.p()));
                } while (this.a.d() < iD);
                return;
            }
            if (i != 5) {
                throw kj6.d();
            }
            do {
                list.add(Float.valueOf(this.a.p()));
                if (this.a.e()) {
                    return;
                } else {
                    iY = this.a.y();
                }
            } while (iY == this.b);
            this.d = iY;
            return;
        }
        ej6 ej6Var = (ej6) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iZ2 = this.a.z();
            U(iZ2);
            int iD2 = this.a.d() + iZ2;
            do {
                ej6Var.h(this.a.p());
            } while (this.a.d() < iD2);
            return;
        }
        if (i2 != 5) {
            throw kj6.d();
        }
        do {
            ej6Var.h(this.a.p());
            if (this.a.e()) {
                return;
            } else {
                iY2 = this.a.y();
            }
        } while (iY2 == this.b);
        this.d = iY2;
    }

    @Override // defpackage.ok6
    public int F() throws IOException {
        T(0);
        return this.a.q();
    }

    @Override // defpackage.ok6
    public boolean G() throws IOException {
        int i;
        if (this.a.e() || (i = this.b) == this.c) {
            return false;
        }
        return this.a.B(i);
    }

    @Override // defpackage.ok6
    public int H() throws IOException {
        T(5);
        return this.a.s();
    }

    @Override // defpackage.ok6
    public void I(List<qi6> list) throws IOException {
        int iY;
        if ((this.b & 7) != 2) {
            throw kj6.d();
        }
        do {
            list.add(D());
            if (this.a.e()) {
                return;
            } else {
                iY = this.a.y();
            }
        } while (iY == this.b);
        this.d = iY;
    }

    @Override // defpackage.ok6
    public void J(List<Double> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof vi6)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.a.l()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iZ = this.a.z();
            V(iZ);
            int iD = this.a.d() + iZ;
            do {
                list.add(Double.valueOf(this.a.l()));
            } while (this.a.d() < iD);
            return;
        }
        vi6 vi6Var = (vi6) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                vi6Var.h(this.a.l());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iZ2 = this.a.z();
        V(iZ2);
        int iD2 = this.a.d() + iZ2;
        do {
            vi6Var.h(this.a.l());
        } while (this.a.d() < iD2);
    }

    @Override // defpackage.ok6
    public long K() throws IOException {
        T(0);
        return this.a.r();
    }

    @Override // defpackage.ok6
    public String L() throws IOException {
        T(2);
        return this.a.x();
    }

    @Override // defpackage.ok6
    public void M(List<Long> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof rj6)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.a.o()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iZ = this.a.z();
            V(iZ);
            int iD = this.a.d() + iZ;
            do {
                list.add(Long.valueOf(this.a.o()));
            } while (this.a.d() < iD);
            return;
        }
        rj6 rj6Var = (rj6) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                rj6Var.h(this.a.o());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iZ2 = this.a.z();
        V(iZ2);
        int iD2 = this.a.d() + iZ2;
        do {
            rj6Var.h(this.a.o());
        } while (this.a.d() < iD2);
    }

    public final Object N(fl6 fl6Var, Class<?> cls, yi6 yi6Var) throws IOException {
        switch (fl6Var.ordinal()) {
            case 0:
                return Double.valueOf(readDouble());
            case 1:
                return Float.valueOf(readFloat());
            case 2:
                return Long.valueOf(K());
            case 3:
                return Long.valueOf(b());
            case 4:
                return Integer.valueOf(F());
            case 5:
                return Long.valueOf(c());
            case 6:
                return Integer.valueOf(h());
            case 7:
                return Boolean.valueOf(i());
            case 8:
                return L();
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return Q(cls, yi6Var);
            case 11:
                return D();
            case 12:
                return Integer.valueOf(n());
            case 13:
                return Integer.valueOf(s());
            case 14:
                return Integer.valueOf(H());
            case 15:
                return Long.valueOf(k());
            case 16:
                return Integer.valueOf(u());
            case 17:
                return Long.valueOf(v());
        }
    }

    public final <T> T O(qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            T tC = qk6Var.c();
            qk6Var.h(tC, this, yi6Var);
            qk6Var.f(tC);
            if (this.b == this.c) {
                return tC;
            }
            throw kj6.g();
        } finally {
            this.c = i;
        }
    }

    public final <T> T P(qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        int iZ = this.a.z();
        ri6 ri6Var = this.a;
        if (ri6Var.a >= ri6Var.b) {
            throw new kj6("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int i = ri6Var.i(iZ);
        T tC = qk6Var.c();
        this.a.a++;
        qk6Var.h(tC, this, yi6Var);
        qk6Var.f(tC);
        this.a.a(0);
        r5.a--;
        this.a.h(i);
        return tC;
    }

    public <T> T Q(Class<T> cls, yi6 yi6Var) throws IOException {
        T(2);
        return (T) P(lk6.c.a(cls), yi6Var);
    }

    public void R(List<String> list, boolean z) throws IOException {
        int iY;
        int iY2;
        if ((this.b & 7) != 2) {
            throw kj6.d();
        }
        if (!(list instanceof pj6) || z) {
            do {
                list.add(z ? L() : x());
                if (this.a.e()) {
                    return;
                } else {
                    iY = this.a.y();
                }
            } while (iY == this.b);
            this.d = iY;
            return;
        }
        pj6 pj6Var = (pj6) list;
        do {
            pj6Var.F(D());
            if (this.a.e()) {
                return;
            } else {
                iY2 = this.a.y();
            }
        } while (iY2 == this.b);
        this.d = iY2;
    }

    public final void S(int i) throws IOException {
        if (this.a.d() != i) {
            throw kj6.h();
        }
    }

    public final void T(int i) throws IOException {
        if ((this.b & 7) != i) {
            throw kj6.d();
        }
    }

    public final void U(int i) throws IOException {
        if ((i & 3) != 0) {
            throw kj6.g();
        }
    }

    public final void V(int i) throws IOException {
        if ((i & 7) != 0) {
            throw kj6.g();
        }
    }

    @Override // defpackage.ok6
    public void a(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.u()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Integer.valueOf(this.a.u()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                ij6Var.h(this.a.u());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            ij6Var.h(this.a.u());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public long b() throws IOException {
        T(0);
        return this.a.A();
    }

    @Override // defpackage.ok6
    public long c() throws IOException {
        T(1);
        return this.a.o();
    }

    @Override // defpackage.ok6
    public void d(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 2) {
                int iZ = this.a.z();
                U(iZ);
                int iD = this.a.d() + iZ;
                do {
                    list.add(Integer.valueOf(this.a.s()));
                } while (this.a.d() < iD);
                return;
            }
            if (i != 5) {
                throw kj6.d();
            }
            do {
                list.add(Integer.valueOf(this.a.s()));
                if (this.a.e()) {
                    return;
                } else {
                    iY = this.a.y();
                }
            } while (iY == this.b);
            this.d = iY;
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iZ2 = this.a.z();
            U(iZ2);
            int iD2 = this.a.d() + iZ2;
            do {
                ij6Var.h(this.a.s());
            } while (this.a.d() < iD2);
            return;
        }
        if (i2 != 5) {
            throw kj6.d();
        }
        do {
            ij6Var.h(this.a.s());
            if (this.a.e()) {
                return;
            } else {
                iY2 = this.a.y();
            }
        } while (iY2 == this.b);
        this.d = iY2;
    }

    @Override // defpackage.ok6
    public void e(List<Long> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof rj6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.v()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Long.valueOf(this.a.v()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        rj6 rj6Var = (rj6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                rj6Var.h(this.a.v());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            rj6Var.h(this.a.v());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ok6
    public <T> void f(List<T> list, qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        int iY;
        int i = this.b;
        if ((i & 7) != 3) {
            throw kj6.d();
        }
        do {
            list.add(O(qk6Var, yi6Var));
            if (this.a.e() || this.d != 0) {
                return;
            } else {
                iY = this.a.y();
            }
        } while (iY == i);
        this.d = iY;
    }

    @Override // defpackage.ok6
    public void g(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.z()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Integer.valueOf(this.a.z()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                ij6Var.h(this.a.z());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            ij6Var.h(this.a.z());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public int getTag() {
        return this.b;
    }

    @Override // defpackage.ok6
    public int h() throws IOException {
        T(5);
        return this.a.n();
    }

    @Override // defpackage.ok6
    public boolean i() throws IOException {
        T(0);
        return this.a.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ok6
    public <T> void j(List<T> list, qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        int iY;
        int i = this.b;
        if ((i & 7) != 2) {
            throw kj6.d();
        }
        do {
            list.add(P(qk6Var, yi6Var));
            if (this.a.e() || this.d != 0) {
                return;
            } else {
                iY = this.a.y();
            }
        } while (iY == i);
        this.d = iY;
    }

    @Override // defpackage.ok6
    public long k() throws IOException {
        T(1);
        return this.a.t();
    }

    @Override // defpackage.ok6
    public void l(List<Long> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof rj6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.A()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Long.valueOf(this.a.A()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        rj6 rj6Var = (rj6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                rj6Var.h(this.a.A());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            rj6Var.h(this.a.A());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public <T> T m(qk6<T> qk6Var, yi6 yi6Var) throws IOException {
        T(3);
        return (T) O(qk6Var, yi6Var);
    }

    @Override // defpackage.ok6
    public int n() throws IOException {
        T(0);
        return this.a.z();
    }

    @Override // defpackage.ok6
    public void o(List<Long> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof rj6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.r()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Long.valueOf(this.a.r()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        rj6 rj6Var = (rj6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                rj6Var.h(this.a.r());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            rj6Var.h(this.a.r());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public void p(List<Long> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof rj6)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.a.t()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iZ = this.a.z();
            V(iZ);
            int iD = this.a.d() + iZ;
            do {
                list.add(Long.valueOf(this.a.t()));
            } while (this.a.d() < iD);
            return;
        }
        rj6 rj6Var = (rj6) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                rj6Var.h(this.a.t());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iZ2 = this.a.z();
        V(iZ2);
        int iD2 = this.a.d() + iZ2;
        do {
            rj6Var.h(this.a.t());
        } while (this.a.d() < iD2);
    }

    @Override // defpackage.ok6
    public void q(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.q()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Integer.valueOf(this.a.q()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                ij6Var.h(this.a.q());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            ij6Var.h(this.a.q());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public void r(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.m()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Integer.valueOf(this.a.m()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                ij6Var.h(this.a.m());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            ij6Var.h(this.a.m());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public double readDouble() throws IOException {
        T(1);
        return this.a.l();
    }

    @Override // defpackage.ok6
    public float readFloat() throws IOException {
        T(5);
        return this.a.p();
    }

    @Override // defpackage.ok6
    public int s() throws IOException {
        T(0);
        return this.a.m();
    }

    @Override // defpackage.ok6
    public void t(List<Integer> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof ij6)) {
            int i = this.b & 7;
            if (i == 2) {
                int iZ = this.a.z();
                U(iZ);
                int iD = this.a.d() + iZ;
                do {
                    list.add(Integer.valueOf(this.a.n()));
                } while (this.a.d() < iD);
                return;
            }
            if (i != 5) {
                throw kj6.d();
            }
            do {
                list.add(Integer.valueOf(this.a.n()));
                if (this.a.e()) {
                    return;
                } else {
                    iY = this.a.y();
                }
            } while (iY == this.b);
            this.d = iY;
            return;
        }
        ij6 ij6Var = (ij6) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iZ2 = this.a.z();
            U(iZ2);
            int iD2 = this.a.d() + iZ2;
            do {
                ij6Var.h(this.a.n());
            } while (this.a.d() < iD2);
            return;
        }
        if (i2 != 5) {
            throw kj6.d();
        }
        do {
            ij6Var.h(this.a.n());
            if (this.a.e()) {
                return;
            } else {
                iY2 = this.a.y();
            }
        } while (iY2 == this.b);
        this.d = iY2;
    }

    @Override // defpackage.ok6
    public int u() throws IOException {
        T(0);
        return this.a.u();
    }

    @Override // defpackage.ok6
    public long v() throws IOException {
        T(0);
        return this.a.v();
    }

    @Override // defpackage.ok6
    public void w(List<Boolean> list) throws IOException {
        int iY;
        int iY2;
        if (!(list instanceof oi6)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.a.j()));
                    if (this.a.e()) {
                        return;
                    } else {
                        iY = this.a.y();
                    }
                } while (iY == this.b);
                this.d = iY;
                return;
            }
            if (i != 2) {
                throw kj6.d();
            }
            int iD = this.a.d() + this.a.z();
            do {
                list.add(Boolean.valueOf(this.a.j()));
            } while (this.a.d() < iD);
            S(iD);
            return;
        }
        oi6 oi6Var = (oi6) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                oi6Var.h(this.a.j());
                if (this.a.e()) {
                    return;
                } else {
                    iY2 = this.a.y();
                }
            } while (iY2 == this.b);
            this.d = iY2;
            return;
        }
        if (i2 != 2) {
            throw kj6.d();
        }
        int iD2 = this.a.d() + this.a.z();
        do {
            oi6Var.h(this.a.j());
        } while (this.a.d() < iD2);
        S(iD2);
    }

    @Override // defpackage.ok6
    public String x() throws IOException {
        T(2);
        return this.a.w();
    }

    @Override // defpackage.ok6
    public int y() throws IOException {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.y();
        }
        int i2 = this.b;
        if (i2 == 0 || i2 == this.c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // defpackage.ok6
    public void z(List<String> list) throws IOException {
        R(list, false);
    }
}
