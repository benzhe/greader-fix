package defpackage;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.zza;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class op1 {
    public final x91 a;
    public final db1 b;
    public final rb1 c;
    public final wb1 d;
    public final ld1 e;
    public final Executor f;
    public final rf1 g;
    public final q21 h;
    public final zza i;
    public final xa1 j;
    public final np0 k;
    public final d23 l;
    public final zc1 m;
    public final sy1 n;
    public final jq2 o;
    public final ns1 p;
    public final pp2 q;

    public op1(x91 x91Var, db1 db1Var, rb1 rb1Var, wb1 wb1Var, ld1 ld1Var, Executor executor, rf1 rf1Var, q21 q21Var, zza zzaVar, xa1 xa1Var, np0 np0Var, d23 d23Var, zc1 zc1Var, sy1 sy1Var, jq2 jq2Var, ns1 ns1Var, pp2 pp2Var) {
        this.a = x91Var;
        this.b = db1Var;
        this.c = rb1Var;
        this.d = wb1Var;
        this.e = ld1Var;
        this.f = executor;
        this.g = rf1Var;
        this.h = q21Var;
        this.i = zzaVar;
        this.j = xa1Var;
        this.k = np0Var;
        this.l = d23Var;
        this.m = zc1Var;
        this.n = sy1Var;
        this.o = jq2Var;
        this.p = ns1Var;
        this.q = pp2Var;
    }

    public static aw2<?> a(xw0 xw0Var, String str, String str2) {
        final xs0 xs0Var = new xs0();
        ((ww0) xw0Var.I()).k = new gy0(xs0Var) { // from class: zp1
            public final xs0 a;

            {
                this.a = xs0Var;
            }

            @Override // defpackage.gy0
            public final void a(boolean z) {
                xs0 xs0Var2 = this.a;
                if (z) {
                    xs0Var2.a(null);
                } else {
                    xs0Var2.b(new Exception("Ad Web View failed to load."));
                }
            }
        };
        xw0Var.F(str, str2, null);
        return xs0Var;
    }

    public final void b(final xw0 xw0Var, boolean z, ob0 ob0Var) {
        ws2 ws2Var;
        ((ww0) xw0Var.I()).z(new er3(this) { // from class: rp1
            public final op1 e;

            {
                this.e = this;
            }

            @Override // defpackage.er3
            public final void onAdClicked() {
                this.e.a.D0(aa1.a);
            }
        }, this.c, this.d, new ta0(this) { // from class: qp1
            public final op1 e;

            {
                this.e = this;
            }

            @Override // defpackage.ta0
            public final void onAppEvent(String str, String str2) {
                this.e.e.onAppEvent(str, str2);
            }
        }, new zzx(this) { // from class: tp1
            public final op1 e;

            {
                this.e = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzx
            public final void zzws() {
                this.e.b.D0(gb1.a);
            }
        }, z, ob0Var, this.i, new yp1(this), this.k, this.n, this.o, this.p, this.q);
        xw0Var.setOnTouchListener(new View.OnTouchListener(this) { // from class: sp1
            public final op1 e;

            {
                this.e = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                op1 op1Var = this.e;
                op1Var.i.recordClick();
                np0 np0Var = op1Var.k;
                if (np0Var == null) {
                    return false;
                }
                np0Var.d();
                return false;
            }
        });
        xw0Var.setOnClickListener(new View.OnClickListener(this) { // from class: vp1
            public final op1 e;

            {
                this.e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                op1 op1Var = this.e;
                op1Var.i.recordClick();
                np0 np0Var = op1Var.k;
                if (np0Var != null) {
                    np0Var.d();
                }
            }
        });
        if (((Boolean) os3.j.f.a(y40.A1)).booleanValue() && (ws2Var = this.l.b) != null) {
            ws2Var.zzb(xw0Var.getView());
        }
        this.g.F0(xw0Var, this.f);
        this.g.F0(new em3(xw0Var) { // from class: up1
            public final xw0 e;

            {
                this.e = xw0Var;
            }

            @Override // defpackage.em3
            public final void c0(fm3 fm3Var) {
                hy0 hy0VarI = this.e.I();
                Rect rect = fm3Var.d;
                ((ww0) hy0VarI).r(rect.left, rect.top, false);
            }
        }, this.f);
        this.g.G0(xw0Var.getView());
        xw0Var.o("/trackActiveViewUnit", new kb0(this, xw0Var) { // from class: xp1
            public final op1 a;
            public final xw0 b;

            {
                this.a = this;
                this.b = xw0Var;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                op1 op1Var = this.a;
                xw0 xw0Var2 = this.b;
                q21 q21Var = op1Var.h;
                synchronized (q21Var) {
                    q21Var.g.add(xw0Var2);
                    l21 l21Var = q21Var.e;
                    xw0Var2.o("/updateActiveView", l21Var.e);
                    xw0Var2.o("/untrackActiveViewUnit", l21Var.f);
                }
            }
        });
        q21 q21Var = this.h;
        Objects.requireNonNull(q21Var);
        q21Var.n = new WeakReference<>(xw0Var);
        if (((Boolean) os3.j.f.a(y40.w0)).booleanValue()) {
            return;
        }
        xa1 xa1Var = this.j;
        wp1 wp1Var = new wp1(xw0Var);
        Executor executor = this.f;
        bb1 bb1Var = new bb1(wp1Var);
        synchronized (xa1Var) {
            xa1Var.F0(bb1Var, executor);
        }
    }
}
