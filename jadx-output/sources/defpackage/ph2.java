package defpackage;

import defpackage.f61;
import defpackage.l91;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class ph2<R extends l91<AdT>, AdT extends f61> implements li2<R, AdT> {
    public final li2<R, AdT> a;
    public final li2<R, bi2<AdT>> b;
    public final kn2<AdT> c;
    public R d;
    public final Executor e;

    public ph2(li2<R, AdT> li2Var, li2<R, bi2<AdT>> li2Var2, kn2<AdT> kn2Var, Executor executor) {
        this.a = li2Var;
        this.b = li2Var2;
        this.c = kn2Var;
        this.e = executor;
    }

    @Override // defpackage.li2
    public final synchronized aw2<AdT> a(final pi2 pi2Var, final ni2<R> ni2Var) {
        final wh2 wh2Var;
        ll2 ll2VarB = ni2Var.a(pi2Var.b).a().b();
        wh2Var = new wh2(ni2Var, pi2Var, ll2VarB.d, ll2VarB.f, this.e, ll2VarB.j, null);
        return nv2.A(this.b.a(pi2Var, ni2Var)).z(new cv2(this, pi2Var, wh2Var, ni2Var) { // from class: sh2
            public final ph2 a;
            public final pi2 b;
            public final wh2 c;
            public final ni2 d;

            {
                this.a = this;
                this.b = pi2Var;
                this.c = wh2Var;
                this.d = ni2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                final ph2 ph2Var = this.a;
                pi2 pi2Var2 = this.b;
                wh2 wh2Var2 = this.c;
                final ni2 ni2Var2 = this.d;
                bi2 bi2Var = (bi2) obj;
                Objects.requireNonNull(ph2Var);
                if (bi2Var != null) {
                    wh2 wh2Var3 = new wh2(wh2Var2.a, wh2Var2.b, wh2Var2.c, wh2Var2.d, wh2Var2.e, wh2Var2.f, bi2Var.a);
                    aw2 aw2VarM = null;
                    if (bi2Var.c != null) {
                        ph2Var.d = null;
                        ph2Var.c.h.add(wh2Var3);
                        return ph2Var.c(bi2Var.c, pi2Var2, ni2Var2);
                    }
                    kn2<AdT> kn2Var = ph2Var.c;
                    synchronized (kn2Var) {
                        Future future = kn2Var.d;
                        if (!(future == null || future.isDone())) {
                            kn2Var.e = 3;
                            if (kn2Var.b.a() != null && wh2Var3.a() != null && kn2Var.b.a().equals(wh2Var3.a())) {
                                kn2Var.e = 2;
                                aw2VarM = vt2.m(kn2Var.c, new cv2(kn2Var) { // from class: jn2
                                    public final kn2 a;

                                    {
                                        this.a = kn2Var;
                                    }

                                    @Override // defpackage.cv2
                                    public final aw2 a(Object obj2) {
                                        aw2 aw2VarJ;
                                        kn2 kn2Var2 = this.a;
                                        cn2 cn2Var = (cn2) obj2;
                                        synchronized (kn2Var2) {
                                            aw2VarJ = vt2.j(new nn2(cn2Var, kn2Var2.b));
                                        }
                                        return aw2VarJ;
                                    }
                                }, wh2Var3.b());
                            }
                        }
                    }
                    if (aw2VarM != null) {
                        ph2Var.d = (R) ni2Var2.a(pi2Var2.b).a();
                        return vt2.m(aw2VarM, new cv2(ph2Var, ni2Var2) { // from class: uh2
                            public final ph2 a;
                            public final ni2 b;

                            {
                                this.a = ph2Var;
                                this.b = ni2Var2;
                            }

                            /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
                                java.lang.StackOverflowError
                                	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
                                	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
                                	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
                                */
                            @Override // defpackage.cv2
                            public final defpackage.aw2 a(java.lang.Object r7) throws defpackage.bu1 {
                                /*
                                    r6 = this;
                                    ph2 r0 = r6.a
                                    ni2 r1 = r6.b
                                    nn2 r7 = (defpackage.nn2) r7
                                    java.util.Objects.requireNonNull(r0)
                                    if (r7 == 0) goto L4b
                                    cn2<AdT extends f61> r2 = r7.a
                                    if (r2 == 0) goto L4b
                                    on2 r2 = r7.b
                                    if (r2 == 0) goto L4b
                                    wh2 r2 = (defpackage.wh2) r2
                                    rp3$b r3 = defpackage.rp3.y()
                                    rp3$a$a r4 = rp3.a.A()
                                    rp3$c r5 = rp3.c.IN_MEMORY
                                    r4.q(r5)
                                    rp3$d$a r5 = rp3.d.z()
                                    r4.p(r5)
                                    r3.p(r4)
                                    e83 r3 = r3.j()
                                    s63 r3 = (defpackage.s63) r3
                                    rp3 r3 = (defpackage.rp3) r3
                                    cn2<AdT extends f61> r4 = r7.a
                                    h71<AdT extends f61> r4 = r4.a
                                    md1 r4 = r4.f
                                    rd1 r5 = new rd1
                                    r5.<init>(r3)
                                    r4.D0(r5)
                                    cn2<AdT extends f61> r7 = r7.a
                                    pi2 r2 = r2.b
                                    aw2 r7 = r0.c(r7, r2, r1)
                                    return r7
                                L4b:
                                    bu1 r7 = new bu1
                                    dm2 r0 = defpackage.dm2.INTERNAL_ERROR
                                    java.lang.String r1 = "Empty prefetch"
                                    r7.<init>(r0, r1)
                                    throw r7
                                */
                                throw new UnsupportedOperationException("Method not decompiled: defpackage.uh2.a(java.lang.Object):aw2");
                            }
                        }, ph2Var.e);
                    }
                    ph2Var.c.h.add(wh2Var3);
                    pi2Var2 = new pi2(pi2Var2.b, bi2Var.b);
                }
                aw2 aw2VarA = ph2Var.a.a(pi2Var2, ni2Var2);
                ph2Var.d = (R) ph2Var.a.b();
                return aw2VarA;
            }
        }, this.e);
    }

    @Override // defpackage.li2
    public final Object b() {
        R r;
        synchronized (this) {
            r = this.d;
        }
        return r;
    }

    public final aw2<AdT> c(cn2<AdT> cn2Var, pi2 pi2Var, ni2<R> ni2Var) {
        final k91<R> k91VarA = ni2Var.a(pi2Var.b);
        if (cn2Var.c != null) {
            R rA = k91VarA.a();
            if (rA.c() != null) {
                cn2Var.c.e.r(rA.c());
            }
            return vt2.j(cn2Var.c);
        }
        k91VarA.c(cn2Var.b);
        aw2<AdT> aw2VarA = this.a.a(pi2Var, new ni2(k91VarA) { // from class: rh2
            public final k91 a;

            {
                this.a = k91VarA;
            }

            @Override // defpackage.ni2
            public final k91 a(oi2 oi2Var) {
                return this.a;
            }
        });
        this.d = this.a.b();
        return aw2VarA;
    }
}
