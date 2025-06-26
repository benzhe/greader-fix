package defpackage;

import android.util.Log;
import defpackage.a66;
import defpackage.dy5;
import defpackage.mg6;
import defpackage.ng6;
import defpackage.r56;
import defpackage.uy5;
import defpackage.v26;
import defpackage.z56;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class j36 implements uy5 {
    public static boolean j;
    public final y36 a;
    public final z86 b;
    public final m66 c;
    public final k66 d;
    public final o96 e;
    public final r56 f;
    public final r26 g;
    public final j96 h;
    public final String i;

    public j36(y36 y36Var, z86 z86Var, m66 m66Var, k66 k66Var, o26 o26Var, o96 o96Var, r56 r56Var, r26 r26Var, j96 j96Var, String str) {
        this.a = y36Var;
        this.b = z86Var;
        this.c = m66Var;
        this.d = k66Var;
        this.e = o96Var;
        this.f = r56Var;
        this.g = r26Var;
        this.h = j96Var;
        this.i = str;
        j = false;
    }

    public static <T> e45<T> d(rb7<T> rb7Var, zb7 zb7Var) {
        final f45 f45Var = new f45();
        new ng7(rb7Var.e(new tc7(f45Var) { // from class: y26
            public final f45 e;

            {
                this.e = f45Var;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                this.e.a.s(obj);
            }
        }).o(new gg7(new Callable(f45Var) { // from class: z26
            public final f45 e;

            {
                this.e = f45Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                this.e.a.s(null);
                return null;
            }
        })), new uc7(f45Var) { // from class: a36
            public final f45 e;

            {
                this.e = f45Var;
            }

            @Override // defpackage.uc7
            public Object apply(Object obj) {
                f45 f45Var2 = this.e;
                Throwable th = (Throwable) obj;
                if (th instanceof Exception) {
                    f45Var2.a.r((Exception) th);
                } else {
                    f45Var2.a.r(new RuntimeException(th));
                }
                return bg7.e;
            }
        }, true).n(zb7Var).a(new zf7(dd7.d, dd7.e, dd7.c));
        return f45Var.a;
    }

    public e45<Void> a() {
        if (!f() || j) {
            b("message impression to metrics logger");
            return new e55();
        }
        n56.t1("Attempting to record: message impression to metrics logger");
        return d(c().b(new zd7(new qc7(this) { // from class: b36
            public final j36 a;

            {
                this.a = this;
            }

            @Override // defpackage.qc7
            public void run() {
                boolean zB;
                j36 j36Var = this.a;
                final r56 r56Var = j36Var.f;
                final j96 j96Var = j36Var.h;
                Objects.requireNonNull(r56Var);
                if (!j96Var.b.c) {
                    r56Var.c.n().f(new b45(r56Var, j96Var) { // from class: o56
                        public final r56 a;
                        public final j96 b;

                        {
                            this.a = r56Var;
                            this.b = j96Var;
                        }

                        @Override // defpackage.b45
                        public void onSuccess(Object obj) {
                            r56 r56Var2 = this.a;
                            r56.a aVar = r56Var2.a;
                            my5 my5Var = my5.IMPRESSION_EVENT_TYPE;
                            dy5.b bVarA = r56Var2.a(this.b, (String) obj);
                            bVarA.o();
                            dy5.D((dy5) bVarA.f, my5Var);
                            ((x86) aVar).a(bVarA.l().b());
                        }
                    });
                    int iOrdinal = j96Var.a.ordinal();
                    boolean z = false;
                    if (iOrdinal == 1) {
                        zB = r56Var.b(((k96) j96Var).f);
                    } else if (iOrdinal == 2) {
                        zB = r56Var.b(((i96) j96Var).d);
                    } else if (iOrdinal != 3) {
                        if (iOrdinal != 4) {
                            Log.e("FIAM.Headless", "Unable to determine if impression should be counted as conversion.");
                        } else {
                            g96 g96Var = (g96) j96Var;
                            boolean z2 = !r56Var.b(g96Var.f);
                            boolean z3 = !r56Var.b(g96Var.g);
                            if (z2 && z3) {
                                z = true;
                            }
                        }
                        r56Var.c(j96Var, "fiam_impression", z);
                    } else {
                        zB = r56Var.b(((d96) j96Var).f);
                    }
                    z = !zB;
                    r56Var.c(j96Var, "fiam_impression", z);
                }
                for (final v26.e eVar : r56Var.f.d.values()) {
                    ThreadPoolExecutor threadPoolExecutor = v26.f;
                    Objects.requireNonNull(eVar);
                    threadPoolExecutor.execute(new Runnable(eVar, j96Var) { // from class: s26
                        public final v26.e e;
                        public final j96 f;

                        {
                            this.e = eVar;
                            this.f = j96Var;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            v26.e eVar2 = this.e;
                            BlockingQueue<Runnable> blockingQueue = v26.e;
                            Objects.requireNonNull(eVar2);
                            throw null;
                        }
                    });
                }
            }
        })).b(new zd7(new qc7() { // from class: c36
            @Override // defpackage.qc7
            public void run() {
                j36.j = true;
            }
        })).k(), this.c.a);
    }

    public final void b(String str) {
        if (this.h.b.c) {
            n56.t1(String.format("Not recording: %s. Reason: Message is test message", str));
        } else if (this.g.a()) {
            n56.t1(String.format("Not recording: %s", str));
        } else {
            n56.t1(String.format("Not recording: %s. Reason: Data collection is disabled", str));
        }
    }

    public final hb7 c() {
        String str = this.h.b.a;
        n56.t1("Attempting to record message impression in impression store for id: " + str);
        final y36 y36Var = this.a;
        mg6.b bVarF = mg6.F();
        long jA = this.b.a();
        bVarF.o();
        mg6.D((mg6) bVarF.f, jA);
        bVarF.o();
        mg6.C((mg6) bVarF.f, str);
        final mg6 mg6VarL = bVarF.l();
        hb7 hb7VarD = y36Var.a().b(y36.c).h(new uc7(y36Var, mg6VarL) { // from class: p36
            public final y36 e;
            public final mg6 f;

            {
                this.e = y36Var;
                this.f = mg6VarL;
            }

            @Override // defpackage.uc7
            public Object apply(Object obj) {
                final y36 y36Var2 = this.e;
                mg6 mg6Var = this.f;
                ng6 ng6Var = y36.c;
                ng6.b bVarG = ng6.G((ng6) obj);
                bVarG.o();
                ng6.C((ng6) bVarG.f, mg6Var);
                final ng6 ng6VarL = bVarG.l();
                return y36Var2.a.b(ng6VarL).d(new qc7(y36Var2, ng6VarL) { // from class: x36
                    public final y36 a;
                    public final ng6 b;

                    {
                        this.a = y36Var2;
                        this.b = ng6VarL;
                    }

                    @Override // defpackage.qc7
                    public void run() {
                        y36 y36Var3 = this.a;
                        ng6 ng6Var2 = this.b;
                        ng6 ng6Var3 = y36.c;
                        y36Var3.b(ng6Var2);
                    }
                });
            }
        }).e(new tc7() { // from class: f36
            @Override // defpackage.tc7
            public void accept(Object obj) {
                Log.e("FIAM.Headless", "Impression store write failure");
            }
        }).d(new qc7() { // from class: g36
            @Override // defpackage.qc7
            public void run() {
                n56.t1("Impression store write success");
            }
        });
        if (!k56.b(this.i)) {
            return hb7VarD;
        }
        final k66 k66Var = this.d;
        final o96 o96Var = this.e;
        hb7 hb7VarD2 = k66Var.a().b(k66.d).h(new uc7(k66Var, o96Var) { // from class: b66
            public final k66 e;
            public final o96 f;

            {
                this.e = k66Var;
                this.f = o96Var;
            }

            @Override // defpackage.uc7
            public Object apply(Object obj) {
                final k66 k66Var2 = this.e;
                final o96 o96Var2 = this.f;
                final a66 a66Var = (a66) obj;
                a66 a66Var2 = k66.d;
                z56 z56VarE = a66Var.E(o96Var2.b(), k66Var2.c());
                Objects.requireNonNull(z56VarE, "item is null");
                return n56.x1(new yg7(new bh7(new dh7(new xg7(new ah7(z56VarE), new vc7(k66Var2, o96Var2) { // from class: g66
                    public final k66 e;
                    public final o96 f;

                    {
                        this.e = k66Var2;
                        this.f = o96Var2;
                    }

                    @Override // defpackage.vc7
                    public boolean test(Object obj2) {
                        k66 k66Var3 = this.e;
                        o96 o96Var3 = this.f;
                        a66 a66Var3 = k66.d;
                        return !k66Var3.b((z56) obj2, o96Var3);
                    }
                }), new ah7(k66Var2.c())), new uc7(a66Var, o96Var2) { // from class: h66
                    public final a66 e;
                    public final o96 f;

                    {
                        this.e = a66Var;
                        this.f = o96Var2;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        a66 a66Var3 = this.e;
                        o96 o96Var3 = this.f;
                        z56 z56Var = (z56) obj2;
                        a66 a66Var4 = k66.d;
                        z56.a aVarJ = z56.J(z56Var);
                        aVarJ.o();
                        z56.D((z56) aVarJ.f);
                        long jH = z56Var.H() + 1;
                        aVarJ.o();
                        z56.C((z56) aVarJ.f, jH);
                        z56 z56VarL = aVarJ.l();
                        a66.a aVarF = a66.F(a66Var3);
                        String strB = o96Var3.b();
                        strB.getClass();
                        aVarF.o();
                        ((uj6) a66.C((a66) aVarF.f)).put(strB, z56VarL);
                        return aVarF.l();
                    }
                }), new uc7(k66Var2) { // from class: i66
                    public final k66 e;

                    {
                        this.e = k66Var2;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        final k66 k66Var3 = this.e;
                        final a66 a66Var3 = (a66) obj2;
                        return k66Var3.a.b(a66Var3).d(new qc7(k66Var3, a66Var3) { // from class: j66
                            public final k66 a;
                            public final a66 b;

                            {
                                this.a = k66Var3;
                                this.b = a66Var3;
                            }

                            @Override // defpackage.qc7
                            public void run() {
                                k66 k66Var4 = this.a;
                                a66 a66Var4 = this.b;
                                a66 a66Var5 = k66.d;
                                Objects.requireNonNull(k66Var4);
                                Objects.requireNonNull(a66Var4, "item is null");
                                k66Var4.c = new kg7(a66Var4);
                            }
                        });
                    }
                }, false));
            }
        }).e(new tc7() { // from class: h36
            @Override // defpackage.tc7
            public void accept(Object obj) {
                Log.e("FIAM.Headless", "Rate limiter client write failure");
            }
        }).d(new qc7() { // from class: i36
            @Override // defpackage.qc7
            public void run() {
                n56.t1("Rate limiter client write success");
            }
        });
        Objects.requireNonNull(hb7VarD2);
        return new de7(hb7VarD2, dd7.f).b(hb7VarD);
    }

    public e45<Void> e(final uy5.a aVar) {
        if (!f()) {
            b("message dismissal to metrics logger");
            return new e55();
        }
        n56.t1("Attempting to record: message dismissal to metrics logger");
        zd7 zd7Var = new zd7(new qc7(this, aVar) { // from class: d36
            public final j36 a;
            public final uy5.a b;

            {
                this.a = this;
                this.b = aVar;
            }

            @Override // defpackage.qc7
            public void run() {
                j36 j36Var = this.a;
                final uy5.a aVar2 = this.b;
                final r56 r56Var = j36Var.f;
                final j96 j96Var = j36Var.h;
                Objects.requireNonNull(r56Var);
                if (!j96Var.b.c) {
                    r56Var.c.n().f(new b45(r56Var, j96Var, aVar2) { // from class: q56
                        public final r56 a;
                        public final j96 b;
                        public final uy5.a c;

                        {
                            this.a = r56Var;
                            this.b = j96Var;
                            this.c = aVar2;
                        }

                        @Override // defpackage.b45
                        public void onSuccess(Object obj) {
                            r56 r56Var2 = this.a;
                            j96 j96Var2 = this.b;
                            uy5.a aVar3 = this.c;
                            r56.a aVar4 = r56Var2.a;
                            ly5 ly5Var = r56.h.get(aVar3);
                            dy5.b bVarA = r56Var2.a(j96Var2, (String) obj);
                            bVarA.o();
                            dy5.E((dy5) bVarA.f, ly5Var);
                            ((x86) aVar4).a(bVarA.l().b());
                        }
                    });
                    r56Var.c(j96Var, "fiam_dismiss", false);
                }
                for (final v26.b bVar : r56Var.f.b.values()) {
                    ThreadPoolExecutor threadPoolExecutor = v26.f;
                    Objects.requireNonNull(bVar);
                    threadPoolExecutor.execute(new Runnable(bVar, j96Var) { // from class: u26
                        public final v26.b e;
                        public final j96 f;

                        {
                            this.e = bVar;
                            this.f = j96Var;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            v26.b bVar2 = this.e;
                            BlockingQueue<Runnable> blockingQueue = v26.e;
                            Objects.requireNonNull(bVar2);
                            throw null;
                        }
                    });
                }
            }
        });
        if (!j) {
            a();
        }
        return d(zd7Var.k(), this.c.a);
    }

    public final boolean f() {
        return this.g.a();
    }
}
