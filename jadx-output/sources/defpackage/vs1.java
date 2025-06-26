package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class vs1 {
    public final Map<String, String> a;
    public final Executor b;
    public final ls0 c;
    public final boolean d;
    public final aq2 e;

    public vs1(Executor executor, ls0 ls0Var, aq2 aq2Var) {
        k60.b.a();
        this.a = new HashMap();
        this.b = executor;
        this.c = ls0Var;
        this.d = ((Boolean) os3.j.f.a(y40.l1)).booleanValue() ? ((Boolean) os3.j.f.a(y40.m1)).booleanValue() : ((double) os3.j.h.nextFloat()) <= k60.a.a().doubleValue();
        this.e = aq2Var;
    }

    public final void a(Map<String, String> map) {
        final String strA = this.e.a(map);
        if (this.d) {
            this.b.execute(new Runnable(this, strA) { // from class: us1
                public final vs1 e;
                public final String f;

                {
                    this.e = this;
                    this.f = strA;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vs1 vs1Var = this.e;
                    vs1Var.c.a(this.f);
                }
            });
        }
        zzd.zzed(strA);
    }
}
