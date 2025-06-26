package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class kj1 extends f61 {
    public final o62 A;
    public final Map<String, Boolean> B;
    public final List<am3> C;
    public final Executor h;
    public final wj1 i;
    public final ek1 j;
    public final tk1 k;
    public final ak1 l;
    public final dk1 m;
    public final xa3<ao1> n;
    public final xa3<yn1> o;
    public final xa3<ho1> p;
    public final xa3<un1> q;
    public final xa3<co1> r;
    public xl1 s;
    public boolean t;
    public boolean u;
    public final zp0 v;
    public final d23 w;
    public final zzbar x;
    public final Context y;
    public final rj1 z;

    public kj1(i61 i61Var, Executor executor, wj1 wj1Var, ek1 ek1Var, tk1 tk1Var, ak1 ak1Var, dk1 dk1Var, xa3<ao1> xa3Var, xa3<yn1> xa3Var2, xa3<ho1> xa3Var3, xa3<un1> xa3Var4, xa3<co1> xa3Var5, zp0 zp0Var, d23 d23Var, zzbar zzbarVar, Context context, rj1 rj1Var, o62 o62Var, hm3 hm3Var) {
        super(i61Var);
        this.u = false;
        this.h = executor;
        this.i = wj1Var;
        this.j = ek1Var;
        this.k = tk1Var;
        this.l = ak1Var;
        this.m = dk1Var;
        this.n = xa3Var;
        this.o = xa3Var2;
        this.p = xa3Var3;
        this.q = xa3Var4;
        this.r = xa3Var5;
        this.v = zp0Var;
        this.w = d23Var;
        this.x = zzbarVar;
        this.y = context;
        this.z = rj1Var;
        this.A = o62Var;
        this.B = new HashMap();
        this.C = new ArrayList();
    }

    public static boolean o(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    @Override // defpackage.f61
    public final synchronized void a() {
        this.h.execute(new Runnable(this) { // from class: lj1
            public final kj1 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                kj1 kj1Var = this.e;
                kj1Var.j.destroy();
                wj1 wj1Var = kj1Var.i;
                synchronized (wj1Var) {
                    xw0 xw0Var = wj1Var.i;
                    if (xw0Var != null) {
                        xw0Var.destroy();
                        wj1Var.i = null;
                    }
                    xw0 xw0Var2 = wj1Var.j;
                    if (xw0Var2 != null) {
                        xw0Var2.destroy();
                        wj1Var.j = null;
                    }
                    wj1Var.k = null;
                    wj1Var.r.clear();
                    wj1Var.s.clear();
                    wj1Var.b = null;
                    wj1Var.c = null;
                    wj1Var.d = null;
                    wj1Var.e = null;
                    wj1Var.h = null;
                    wj1Var.l = null;
                    wj1Var.m = null;
                    wj1Var.o = null;
                    wj1Var.p = null;
                    wj1Var.q = null;
                }
            }
        });
        super.a();
    }

    @Override // defpackage.f61
    public final void b() {
        this.h.execute(new Runnable(this) { // from class: jj1
            public final kj1 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                kj1 kj1Var = this.e;
                Objects.requireNonNull(kj1Var);
                try {
                    int iK = kj1Var.i.k();
                    if (iK == 1) {
                        if (kj1Var.m.a != null) {
                            kj1Var.n("Google", true);
                            kj1Var.m.a.T1(kj1Var.n.get());
                            return;
                        }
                        return;
                    }
                    if (iK == 2) {
                        if (kj1Var.m.b != null) {
                            kj1Var.n("Google", true);
                            kj1Var.m.b.P3(kj1Var.o.get());
                            return;
                        }
                        return;
                    }
                    if (iK == 3) {
                        dk1 dk1Var = kj1Var.m;
                        if (dk1Var.f.getOrDefault(kj1Var.i.c(), null) != null) {
                            if (kj1Var.i.o() != null) {
                                kj1Var.n("Google", true);
                            }
                            dk1 dk1Var2 = kj1Var.m;
                            dk1Var2.f.getOrDefault(kj1Var.i.c(), null).b5(kj1Var.r.get());
                            return;
                        }
                        return;
                    }
                    if (iK == 6) {
                        if (kj1Var.m.c != null) {
                            kj1Var.n("Google", true);
                            kj1Var.m.c.V3(kj1Var.p.get());
                            return;
                        }
                        return;
                    }
                    if (iK != 7) {
                        is0.zzex("Wrong native template id!");
                        return;
                    }
                    ed0 ed0Var = kj1Var.m.e;
                    if (ed0Var != null) {
                        ed0Var.P1(kj1Var.q.get());
                    }
                } catch (RemoteException e) {
                    is0.zzc("RemoteException when notifyAdLoad is called", e);
                }
            }
        });
        if (this.i.k() != 7) {
            Executor executor = this.h;
            final ek1 ek1Var = this.j;
            ek1Var.getClass();
            executor.execute(new Runnable(ek1Var) { // from class: mj1
                public final ek1 e;

                {
                    this.e = ek1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.n();
                }
            });
        }
        super.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[Catch: all -> 0x006f, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x000e, B:10:0x0015, B:13:0x001e, B:16:0x002d, B:17:0x0032, B:19:0x0040, B:21:0x0052, B:24:0x005b), top: B:34:0x0001, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c(android.view.View r7, android.view.View r8, java.util.Map<java.lang.String, java.lang.ref.WeakReference<android.view.View>> r9, java.util.Map<java.lang.String, java.lang.ref.WeakReference<android.view.View>> r10, boolean r11) {
        /*
            r6 = this;
            monitor-enter(r6)
            tk1 r0 = r6.k     // Catch: java.lang.Throwable -> L6f
            xl1 r1 = r6.s     // Catch: java.lang.Throwable -> L6f
            java.util.Objects.requireNonNull(r0)     // Catch: java.lang.Throwable -> L6f
            if (r1 == 0) goto L32
            bl1 r2 = r0.e     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L32
            android.widget.FrameLayout r2 = r1.e2()     // Catch: java.lang.Throwable -> L6f
            if (r2 != 0) goto L15
            goto L32
        L15:
            ak1 r2 = r0.c     // Catch: java.lang.Throwable -> L6f
            boolean r2 = r2.c()     // Catch: java.lang.Throwable -> L6f
            if (r2 != 0) goto L1e
            goto L32
        L1e:
            android.widget.FrameLayout r1 = r1.e2()     // Catch: defpackage.ix0 -> L2c java.lang.Throwable -> L6f
            bl1 r0 = r0.e     // Catch: defpackage.ix0 -> L2c java.lang.Throwable -> L6f
            android.view.View r0 = r0.a()     // Catch: defpackage.ix0 -> L2c java.lang.Throwable -> L6f
            r1.addView(r0)     // Catch: defpackage.ix0 -> L2c java.lang.Throwable -> L6f
            goto L32
        L2c:
            r0 = move-exception
            java.lang.String r1 = "web view can not be obtained"
            com.google.android.gms.ads.internal.util.zzd.zza(r1, r0)     // Catch: java.lang.Throwable -> L6f
        L32:
            ek1 r0 = r6.j     // Catch: java.lang.Throwable -> L6f
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r0.g(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L6f
            boolean r7 = r6.u     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L6d
            o40<java.lang.Boolean> r7 = defpackage.y40.V1     // Catch: java.lang.Throwable -> L6f
            os3 r8 = defpackage.os3.j     // Catch: java.lang.Throwable -> L6f
            u40 r8 = r8.f     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r7 = r8.a(r7)     // Catch: java.lang.Throwable -> L6f
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L6f
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L6d
            wj1 r7 = r6.i     // Catch: java.lang.Throwable -> L6f
            xw0 r7 = r7.o()     // Catch: java.lang.Throwable -> L6f
            if (r7 != 0) goto L5b
            goto L6d
        L5b:
            wj1 r7 = r6.i     // Catch: java.lang.Throwable -> L6f
            xw0 r7 = r7.o()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r8 = "onSdkAdUserInteractionClick"
            f4 r9 = new f4     // Catch: java.lang.Throwable -> L6f
            r9.<init>()     // Catch: java.lang.Throwable -> L6f
            r7.x(r8, r9)     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r6)
            return
        L6d:
            monitor-exit(r6)
            return
        L6f:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kj1.c(android.view.View, android.view.View, java.util.Map, java.util.Map, boolean):void");
    }

    public final synchronized void d(final xl1 xl1Var) {
        if (((Boolean) os3.j.f.a(y40.f1)).booleanValue()) {
            zzj.zzegq.post(new Runnable(this, xl1Var) { // from class: oj1
                public final kj1 e;
                public final xl1 f;

                {
                    this.e = this;
                    this.f = xl1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.h(this.f);
                }
            });
        } else {
            h(xl1Var);
        }
    }

    public final void e(View view) {
        x20 x20VarQ = this.i.q();
        boolean z = this.i.p() != null;
        if (!this.l.a() || x20VarQ == null || !z || view == null) {
            return;
        }
        zzr.zzlk().c(x20VarQ, view);
    }

    public final void f(View view) {
        x20 x20VarQ = this.i.q();
        if (!this.l.a() || x20VarQ == null || view == null) {
            return;
        }
        rk0 rk0VarZzlk = zzr.zzlk();
        Objects.requireNonNull(rk0VarZzlk);
        synchronized (rk0.b) {
            if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && rk0.c) {
                try {
                    rk0VarZzlk.a.Q0(x20VarQ, new y20(view));
                } catch (RemoteException | NullPointerException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final synchronized void g(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        boolean z2;
        if (this.t) {
            return;
        }
        if (((Boolean) os3.j.f.a(y40.g1)).booleanValue() && this.b.f0) {
            Iterator<String> it = this.B.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = true;
                    break;
                }
                if (!this.B.get(it.next()).booleanValue()) {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                return;
            }
        }
        if (z) {
            this.k.c(this.s);
            this.j.h(view, map, map2);
            this.t = true;
            return;
        }
        if (!z) {
            if (((Boolean) os3.j.f.a(y40.b2)).booleanValue() && map != null) {
                Iterator<Map.Entry<String, WeakReference<View>>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    View view2 = it2.next().getValue().get();
                    if (view2 != null && o(view2)) {
                        this.k.c(this.s);
                        this.j.h(view, map, map2);
                        this.t = true;
                        return;
                    }
                }
            }
        }
    }

    public final void h(final xl1 xl1Var) {
        JSONObject jSONObject;
        Iterator<String> itKeys;
        View view;
        ws2 ws2Var;
        this.s = xl1Var;
        final tk1 tk1Var = this.k;
        tk1Var.g.execute(new Runnable(tk1Var, xl1Var) { // from class: sk1
            public final tk1 e;
            public final xl1 f;

            {
                this.e = tk1Var;
                this.f = xl1Var;
            }

            /* JADX WARN: Removed duplicated region for block: B:96:0x019a  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 436
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.sk1.run():void");
            }
        });
        this.j.a(xl1Var.y5(), xl1Var.z4(), xl1Var.s5(), xl1Var, xl1Var);
        if (((Boolean) os3.j.f.a(y40.A1)).booleanValue() && (ws2Var = this.w.b) != null) {
            ws2Var.zzb(xl1Var.y5());
        }
        if (((Boolean) os3.j.f.a(y40.g1)).booleanValue()) {
            sk2 sk2Var = this.b;
            if (sk2Var.f0 && (jSONObject = sk2Var.e0) != null && (itKeys = jSONObject.keys()) != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    WeakReference<View> weakReference = this.s.L3().get(next);
                    this.B.put(next, Boolean.FALSE);
                    if (weakReference != null && (view = weakReference.get()) != null) {
                        am3 am3Var = new am3(this.y, view);
                        this.C.add(am3Var);
                        am3Var.q.add(new pj1(this, next));
                        am3Var.d(3);
                    }
                }
            }
        }
        if (xl1Var.Y2() != null) {
            xl1Var.Y2().c(this.v);
        }
    }

    public final synchronized void i(final xl1 xl1Var) {
        if (((Boolean) os3.j.f.a(y40.f1)).booleanValue()) {
            zzj.zzegq.post(new Runnable(this, xl1Var) { // from class: nj1
                public final kj1 e;
                public final xl1 f;

                {
                    this.e = this;
                    this.f = xl1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.j(this.f);
                }
            });
        } else {
            j(xl1Var);
        }
    }

    public final void j(xl1 xl1Var) {
        this.j.d(xl1Var.y5(), xl1Var.L3());
        if (xl1Var.e2() != null) {
            xl1Var.e2().setClickable(false);
            xl1Var.e2().removeAllViews();
        }
        if (xl1Var.Y2() != null) {
            am3 am3VarY2 = xl1Var.Y2();
            am3VarY2.q.remove(this.v);
        }
        this.s = null;
    }

    public final synchronized void k(Bundle bundle) {
        this.j.e(bundle);
    }

    public final synchronized void l(Bundle bundle) {
        this.j.b(bundle);
    }

    public final synchronized boolean m(Bundle bundle) {
        if (this.t) {
            return true;
        }
        boolean zO = this.j.o(bundle);
        this.t = zO;
        return zO;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kj1.n(java.lang.String, boolean):void");
    }
}
