package defpackage;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzvh;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class kh2 implements rv2<j41> {
    public final /* synthetic */ c72 a;
    public final /* synthetic */ g51 b;
    public final /* synthetic */ ih2 c;

    public kh2(ih2 ih2Var, c72 c72Var, g51 g51Var) {
        this.c = ih2Var;
        this.a = c72Var;
        this.b = g51Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        final zzvh zzvhVarY1 = c50.y1(th, this.b.c().l);
        synchronized (this.c) {
            this.c.j = null;
            this.b.d().D0(new fa1(zzvhVarY1));
            if (((Boolean) os3.j.f.a(y40.L4)).booleanValue()) {
                this.c.b.execute(new Runnable(this, zzvhVarY1) { // from class: mh2
                    public final kh2 e;
                    public final zzvh f;

                    {
                        this.e = this;
                        this.f = zzvhVarY1;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        kh2 kh2Var = this.e;
                        kh2Var.c.d.Q(this.f);
                    }
                });
            }
            this.c.h.G0(60);
            c50.X1(zzvhVarY1.e, th, "BannerAdLoader.onFailure");
            this.a.a();
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(j41 j41Var) {
        j41 j41Var2 = j41Var;
        synchronized (this.c) {
            ih2 ih2Var = this.c;
            ih2Var.j = null;
            ih2Var.f.removeAllViews();
            if (j41Var2.f() != null) {
                ViewParent parent = j41Var2.f().getParent();
                if (parent instanceof ViewGroup) {
                    t91 t91Var = j41Var2.f;
                    String str = t91Var != null ? t91Var.e : "";
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    is0.zzez(sb.toString());
                    ((ViewGroup) parent).removeView(j41Var2.f());
                }
            }
            o40<Boolean> o40Var = y40.L4;
            if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                vc1 vc1Var = j41Var2.g.e;
                ih2 ih2Var2 = this.c;
                w52 w52Var = ih2Var2.d;
                rc1 rc1Var = vc1Var.a;
                rc1Var.f = w52Var;
                rc1Var.g = ih2Var2.e;
            }
            this.c.f.addView(j41Var2.f());
            this.a.onSuccess(j41Var2);
            if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                ih2 ih2Var3 = this.c;
                Executor executor = ih2Var3.b;
                final w52 w52Var2 = ih2Var3.d;
                w52Var2.getClass();
                executor.execute(new Runnable(w52Var2) { // from class: jh2
                    public final w52 e;

                    {
                        this.e = w52Var2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.onAdLoaded();
                    }
                });
            }
            this.c.h.G0(j41Var2.h());
        }
    }
}
