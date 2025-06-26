package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzdwt;
import com.google.android.gms.internal.ads.zzfa;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class rn2 implements ws2 {
    public static rn2 q;
    public final Context e;
    public final bs2 f;
    public final es2 g;
    public final hs2 h;
    public final sb3 i;
    public final pq2 j;
    public final Executor k;
    public final kd3 l;
    public final tp2 m;
    public volatile long n = 0;
    public final Object o = new Object();
    public volatile boolean p;

    public rn2(Context context, pq2 pq2Var, bs2 bs2Var, es2 es2Var, hs2 hs2Var, sb3 sb3Var, Executor executor, oq2 oq2Var, kd3 kd3Var) {
        this.e = context;
        this.j = pq2Var;
        this.f = bs2Var;
        this.g = es2Var;
        this.h = hs2Var;
        this.i = sb3Var;
        this.k = executor;
        this.l = kd3Var;
        this.m = new tp2(oq2Var);
    }

    public static rn2 a(Context context, pq2 pq2Var, sq2 sq2Var, Executor executor) {
        final cr2 cr2Var = new cr2(context, executor, pq2Var, sq2Var, new gr2(), new fr2());
        if (sq2Var.b()) {
            e45<gl1> e45VarI = c50.i(cr2Var.b, new Callable(cr2Var) { // from class: br2
                public final cr2 e;

                {
                    this.e = cr2Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    cr2 cr2Var2 = this.e;
                    return cr2Var2.e.a(cr2Var2.a);
                }
            });
            e45VarI.e(cr2Var.b, new a45(cr2Var) { // from class: dr2
                public final cr2 a;

                {
                    this.a = cr2Var;
                }

                @Override // defpackage.a45
                public final void c(Exception exc) {
                    cr2 cr2Var2 = this.a;
                    Objects.requireNonNull(cr2Var2);
                    if (exc instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    cr2Var2.c.b(2025, -1L, exc);
                }
            });
            cr2Var.g = e45VarI;
        } else {
            cr2Var.g = c50.X(cr2Var.e.b());
        }
        e45<gl1> e45VarI2 = c50.i(cr2Var.b, new Callable(cr2Var) { // from class: er2
            public final cr2 e;

            {
                this.e = cr2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cr2 cr2Var2 = this.e;
                return cr2Var2.f.a(cr2Var2.a);
            }
        });
        e45VarI2.e(cr2Var.b, new a45(cr2Var) { // from class: dr2
            public final cr2 a;

            {
                this.a = cr2Var;
            }

            @Override // defpackage.a45
            public final void c(Exception exc) {
                cr2 cr2Var2 = this.a;
                Objects.requireNonNull(cr2Var2);
                if (exc instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                cr2Var2.c.b(2025, -1L, exc);
            }
        });
        cr2Var.h = e45VarI2;
        zzfa zzfaVar = new zzfa(context);
        sb3 sb3Var = new sb3(sq2Var, cr2Var, new dc3(context, zzfaVar), zzfaVar);
        kd3 kd3VarB = new rr2(context, pq2Var).b();
        oq2 oq2Var = new oq2();
        return new rn2(context, pq2Var, new bs2(context, kd3VarB), new es2(context, kd3VarB, new tm2(pq2Var), ((Boolean) os3.j.f.a(y40.s1)).booleanValue()), new hs2(context, sb3Var, pq2Var, oq2Var), sb3Var, executor, oq2Var, kd3VarB);
    }

    public static synchronized rn2 b(String str, Context context, boolean z) {
        if (q == null) {
            Boolean bool = Boolean.TRUE;
            Objects.requireNonNull(str, "Null clientVersion");
            Boolean boolValueOf = Boolean.valueOf(z);
            String strConcat = boolValueOf == null ? String.valueOf("").concat(" shouldGetAdvertisingId") : "";
            if (bool == null) {
                strConcat = String.valueOf(strConcat).concat(" isGooglePlayServicesAvailable");
            }
            if (!strConcat.isEmpty()) {
                throw new IllegalStateException(strConcat.length() != 0 ? "Missing required properties:".concat(strConcat) : new String("Missing required properties:"));
            }
            uq2 uq2Var = new uq2(str, boolValueOf.booleanValue(), true, null);
            ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
            rn2 rn2VarA = a(context, pq2.a(context, executorServiceNewCachedThreadPool), uq2Var, executorServiceNewCachedThreadPool);
            q = rn2VarA;
            rn2VarA.c();
            q.d();
        }
        return q;
    }

    public static void e(rn2 rn2Var) throws InterruptedException {
        String str;
        String strF;
        zr2 zr2VarF;
        pd3 pd3Var;
        Objects.requireNonNull(rn2Var);
        long jCurrentTimeMillis = System.currentTimeMillis();
        zr2 zr2VarF2 = rn2Var.f(1);
        if (zr2VarF2 != null) {
            String strE = zr2VarF2.a.E();
            strF = zr2VarF2.a.F();
            str = strE;
        } else {
            str = null;
            strF = null;
        }
        try {
            zzdwt zzdwtVarS1 = c50.s1(rn2Var.e, rn2Var.l, str, strF, "1", rn2Var.j);
            byte[] bArr = zzdwtVarS1.f;
            if (bArr == null || bArr.length == 0) {
                rn2Var.j.f(5009, System.currentTimeMillis() - jCurrentTimeMillis);
                return;
            }
            try {
                md3 md3VarX = md3.x(k53.O(bArr), e63.a());
                boolean zA = false;
                if (!((md3VarX.y().E().isEmpty() || md3VarX.y().F().isEmpty() || md3VarX.A().d().length == 0 || ((zr2VarF = rn2Var.f(1)) != null && (pd3Var = zr2VarF.a) != null && md3VarX.y().E().equals(pd3Var.E()) && md3VarX.y().F().equals(pd3Var.F()))) ? false : true)) {
                    rn2Var.j.f(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                    return;
                }
                tp2 tp2Var = rn2Var.m;
                int i = zzdwtVarS1.g;
                if (!((Boolean) os3.j.f.a(y40.q1)).booleanValue()) {
                    zA = rn2Var.f.a(md3VarX, tp2Var);
                } else if (i == 3) {
                    zA = rn2Var.g.b(md3VarX);
                } else if (i == 4) {
                    zA = rn2Var.g.c(md3VarX, tp2Var);
                }
                if (!zA) {
                    rn2Var.j.f(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                    return;
                }
                zr2 zr2VarF3 = rn2Var.f(1);
                if (zr2VarF3 != null) {
                    rn2Var.h.d(zr2VarF3);
                    rn2Var.n = System.currentTimeMillis() / 1000;
                }
            } catch (NullPointerException unused) {
                rn2Var.j.f(2030, System.currentTimeMillis() - jCurrentTimeMillis);
            }
        } catch (e73 e) {
            rn2Var.j.b(4002, System.currentTimeMillis() - jCurrentTimeMillis, e);
        }
    }

    public final synchronized void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zr2 zr2VarF = f(1);
        if (zr2VarF != null) {
            this.h.d(zr2VarF);
        } else {
            this.j.f(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0043 A[Catch: all -> 0x005c, TryCatch #1 {, blocks: (B:6:0x0007, B:8:0x000b, B:10:0x001b, B:12:0x001d, B:13:0x0021, B:22:0x002e, B:27:0x0043, B:30:0x004c, B:34:0x0059, B:35:0x005a, B:14:0x0022, B:16:0x0026, B:17:0x0028, B:19:0x002a), top: B:42:0x0007, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r9 = this;
            boolean r0 = r9.p
            if (r0 != 0) goto L5f
            java.lang.Object r0 = r9.o
            monitor-enter(r0)
            boolean r1 = r9.p     // Catch: java.lang.Throwable -> L5c
            if (r1 != 0) goto L5a
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L5c
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r3
            long r5 = r9.n     // Catch: java.lang.Throwable -> L5c
            long r1 = r1 - r5
            r5 = 3600(0xe10, double:1.7786E-320)
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 >= 0) goto L1d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5c
            return
        L1d:
            hs2 r1 = r9.h     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r2 = r1.f     // Catch: java.lang.Throwable -> L5c
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L5c
            as2 r1 = r1.e     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L2a
            zr2 r1 = r1.b     // Catch: java.lang.Throwable -> L57
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L57
            goto L2c
        L2a:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L57
            r1 = 0
        L2c:
            if (r1 == 0) goto L43
            pd3 r1 = r1.a     // Catch: java.lang.Throwable -> L5c
            long r1 = r1.G()     // Catch: java.lang.Throwable -> L5c
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L5c
            long r7 = r7 / r3
            long r1 = r1 - r7
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 >= 0) goto L40
            r1 = 1
            goto L41
        L40:
            r1 = 0
        L41:
            if (r1 == 0) goto L5a
        L43:
            kd3 r1 = r9.l     // Catch: java.lang.Throwable -> L5c
            boolean r1 = defpackage.rr2.a(r1)     // Catch: java.lang.Throwable -> L5c
            if (r1 != 0) goto L4c
            goto L5a
        L4c:
            java.util.concurrent.Executor r1 = r9.k     // Catch: java.lang.Throwable -> L5c
            so2 r2 = new so2     // Catch: java.lang.Throwable -> L5c
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L5c
            r1.execute(r2)     // Catch: java.lang.Throwable -> L5c
            goto L5a
        L57:
            r1 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L57
            throw r1     // Catch: java.lang.Throwable -> L5c
        L5a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5c
            return
        L5c:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5c
            throw r1
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rn2.d():void");
    }

    public final zr2 f(int i) {
        zr2 zr2Var = null;
        if (!rr2.a(this.l)) {
            return null;
        }
        if (!((Boolean) os3.j.f.a(y40.q1)).booleanValue()) {
            bs2 bs2Var = this.f;
            pd3 pd3VarE = bs2Var.e(i);
            if (pd3VarE == null) {
                return null;
            }
            String strE = pd3VarE.E();
            File fileC1 = c50.C1(strE, "pcam.jar", bs2Var.b());
            if (!fileC1.exists()) {
                fileC1 = c50.C1(strE, "pcam", bs2Var.b());
            }
            return new zr2(pd3VarE, fileC1, c50.C1(strE, "pcbc", bs2Var.b()), c50.C1(strE, "pcopt", bs2Var.b()));
        }
        es2 es2Var = this.g;
        Objects.requireNonNull(es2Var);
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (es2.f) {
            pd3 pd3VarG = es2Var.g(i);
            if (pd3VarG == null) {
                es2Var.a(4022, jCurrentTimeMillis);
            } else {
                File fileH = es2Var.h(pd3VarG.E());
                File file = new File(fileH, "pcam.jar");
                if (!file.exists()) {
                    file = new File(fileH, "pcam");
                }
                File file2 = new File(fileH, "pcbc");
                File file3 = new File(fileH, "pcopt");
                es2Var.a(5016, jCurrentTimeMillis);
                zr2Var = new zr2(pd3VarG, file, file2, file3);
            }
        }
        return zr2Var;
    }

    @Override // defpackage.ws2
    public final void zza(int i, int i2, int i3) {
    }

    @Override // defpackage.ws2
    public final void zza(MotionEvent motionEvent) {
        vq2 vq2VarC = this.h.c();
        if (vq2VarC != null) {
            try {
                ((as2) vq2VarC).b(null, motionEvent);
            } catch (fs2 e) {
                this.j.b(e.e, -1L, e);
            }
        }
    }

    @Override // defpackage.ws2
    public final void zzb(View view) {
        this.i.c.e(view);
    }

    @Override // defpackage.ws2
    public final String zzb(Context context) {
        String strF;
        d();
        vq2 vq2VarC = this.h.c();
        if (vq2VarC == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        as2 as2Var = (as2) vq2VarC;
        synchronized (as2Var) {
            Map<String, Object> mapB = ((sb3) as2Var.c).b();
            HashMap map = (HashMap) mapB;
            map.put("f", "q");
            map.put("ctx", context);
            map.put("aid", null);
            strF = as2.f(as2Var.e(mapB));
        }
        this.j.d(5001, System.currentTimeMillis() - jCurrentTimeMillis, strF);
        return strF;
    }

    @Override // defpackage.ws2
    public final String zza(Context context, String str, View view, Activity activity) {
        String strF;
        d();
        vq2 vq2VarC = this.h.c();
        if (vq2VarC == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        as2 as2Var = (as2) vq2VarC;
        synchronized (as2Var) {
            sb3 sb3Var = (sb3) as2Var.c;
            Map<String, Object> mapA = sb3Var.a();
            ((HashMap) mapA).put("lts", Long.valueOf(sb3Var.c.c()));
            HashMap map = (HashMap) mapA;
            map.put("f", "c");
            map.put("ctx", context);
            map.put("cs", str);
            map.put("aid", null);
            map.put("view", view);
            map.put("act", activity);
            strF = as2.f(as2Var.e(mapA));
        }
        this.j.d(5000, System.currentTimeMillis() - jCurrentTimeMillis, strF);
        return strF;
    }

    @Override // defpackage.ws2
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // defpackage.ws2
    public final String zza(Context context, View view, Activity activity) {
        String strF;
        d();
        vq2 vq2VarC = this.h.c();
        if (vq2VarC == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        as2 as2Var = (as2) vq2VarC;
        synchronized (as2Var) {
            Map<String, Object> mapA = ((sb3) as2Var.c).a();
            HashMap map = (HashMap) mapA;
            map.put("f", "v");
            map.put("ctx", context);
            map.put("aid", null);
            map.put("view", view);
            map.put("act", activity);
            strF = as2.f(as2Var.e(mapA));
        }
        this.j.d(5002, System.currentTimeMillis() - jCurrentTimeMillis, strF);
        return strF;
    }
}
