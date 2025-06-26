package defpackage;

import com.google.android.gms.ads.internal.util.zzbs;
import java.util.Map;

/* loaded from: classes.dex */
public final class ge0 implements kb0<we0> {
    public final /* synthetic */ d23 a;
    public final /* synthetic */ pd0 b;
    public final /* synthetic */ zzbs c;
    public final /* synthetic */ yd0 d;

    public ge0(yd0 yd0Var, d23 d23Var, pd0 pd0Var, zzbs zzbsVar) {
        this.d = yd0Var;
        this.a = d23Var;
        this.b = pd0Var;
        this.c = zzbsVar;
    }

    @Override // defpackage.kb0
    public final /* synthetic */ void a(we0 we0Var, Map map) {
        synchronized (this.d.a) {
            is0.zzey("JS Engine is requesting an update");
            if (this.d.h == 0) {
                is0.zzey("Starting reload.");
                yd0 yd0Var = this.d;
                yd0Var.h = 2;
                yd0Var.a(this.a);
            }
            this.b.n("/requestReload", (kb0) this.c.get());
        }
    }
}
