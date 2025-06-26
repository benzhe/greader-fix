package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzd;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class q21 implements zzp, ua1, va1, em3 {
    public final l21 e;
    public final o21 f;
    public final uf0<JSONObject, JSONObject> h;
    public final Executor i;
    public final b20 j;
    public final Set<xw0> g = new HashSet();
    public final AtomicBoolean k = new AtomicBoolean(false);
    public final s21 l = new s21();
    public boolean m = false;
    public WeakReference<?> n = new WeakReference<>(this);

    public q21(qf0 qf0Var, o21 o21Var, Executor executor, l21 l21Var, b20 b20Var) {
        this.e = l21Var;
        df0<JSONObject> df0Var = gf0.b;
        qf0Var.a();
        this.h = new uf0<>(qf0Var.b, "google.afma.activeView.handleUpdate", df0Var, df0Var);
        this.f = o21Var;
        this.i = executor;
        this.j = b20Var;
    }

    @Override // defpackage.em3
    public final synchronized void c0(fm3 fm3Var) {
        s21 s21Var = this.l;
        s21Var.a = fm3Var.j;
        s21Var.e = fm3Var;
        d();
    }

    public final synchronized void d() {
        if (!(this.n.get() != null)) {
            synchronized (this) {
                t();
                this.m = true;
            }
            return;
        }
        if (!this.m && this.k.get()) {
            try {
                this.l.c = this.j.b();
                final JSONObject jSONObjectA = this.f.c(this.l);
                for (final xw0 xw0Var : this.g) {
                    this.i.execute(new Runnable(xw0Var, jSONObjectA) { // from class: t21
                        public final xw0 e;
                        public final JSONObject f;

                        {
                            this.e = xw0Var;
                            this.f = jSONObjectA;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.Z("AFMA_updateActiveView", this.f);
                        }
                    });
                }
                uf0<JSONObject, JSONObject> uf0Var = this.h;
                aw2<we0> aw2Var = uf0Var.d;
                xf0 xf0Var = new xf0(uf0Var, jSONObjectA);
                zv2 zv2Var = ms0.f;
                aw2 aw2VarM = vt2.m(aw2Var, xf0Var, zv2Var);
                ((su2) aw2VarM).i(new sv2(aw2VarM, new vs0("ActiveViewListener.callActiveViewJs")), zv2Var);
                return;
            } catch (Exception e) {
                zzd.zza("Failed to call ActiveViewJS", e);
            }
        }
        return;
    }

    @Override // defpackage.va1
    public final synchronized void onAdImpression() {
        if (this.k.compareAndSet(false, true)) {
            this.e.a(this);
            d();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onPause() {
        this.l.b = true;
        d();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onResume() {
        this.l.b = false;
        d();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // defpackage.ua1
    public final synchronized void r(Context context) {
        this.l.b = true;
        d();
    }

    @Override // defpackage.ua1
    public final synchronized void s(Context context) {
        this.l.d = "u";
        d();
        t();
        this.m = true;
    }

    public final void t() {
        Iterator<xw0> it = this.g.iterator();
        while (true) {
            final String str = "/untrackActiveViewUnit";
            final String str2 = "/updateActiveView";
            if (!it.hasNext()) {
                l21 l21Var = this.e;
                qf0 qf0Var = l21Var.b;
                final kb0<Object> kb0Var = l21Var.e;
                aw2<we0> aw2Var = qf0Var.b;
                vs2 vs2Var = new vs2(str2, kb0Var) { // from class: vf0
                    public final String a;
                    public final kb0 b;

                    {
                        this.a = str2;
                        this.b = kb0Var;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj) {
                        we0 we0Var = (we0) obj;
                        we0Var.n(this.a, this.b);
                        return we0Var;
                    }
                };
                zv2 zv2Var = ms0.f;
                qf0Var.b = vt2.l(aw2Var, vs2Var, zv2Var);
                qf0 qf0Var2 = l21Var.b;
                final kb0<Object> kb0Var2 = l21Var.f;
                qf0Var2.b = vt2.l(qf0Var2.b, new vs2(str, kb0Var2) { // from class: vf0
                    public final String a;
                    public final kb0 b;

                    {
                        this.a = str;
                        this.b = kb0Var2;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj) {
                        we0 we0Var = (we0) obj;
                        we0Var.n(this.a, this.b);
                        return we0Var;
                    }
                }, zv2Var);
                return;
            }
            xw0 next = it.next();
            l21 l21Var2 = this.e;
            next.n("/updateActiveView", l21Var2.e);
            next.n("/untrackActiveViewUnit", l21Var2.f);
        }
    }

    @Override // defpackage.ua1
    public final synchronized void x(Context context) {
        this.l.b = false;
        d();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
    }
}
