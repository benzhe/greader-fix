package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class le0 implements bt0<pd0> {
    public final /* synthetic */ se0 a;
    public final /* synthetic */ yd0 b;

    public le0(yd0 yd0Var, se0 se0Var) {
        this.b = yd0Var;
        this.a = se0Var;
    }

    @Override // defpackage.bt0
    public final /* synthetic */ void zzg(pd0 pd0Var) {
        synchronized (this.b.a) {
            yd0 yd0Var = this.b;
            yd0Var.h = 0;
            se0 se0Var = yd0Var.g;
            if (se0Var != null && this.a != se0Var) {
                zzd.zzed("New JS engine is loaded, marking previous one as destroyable.");
                this.b.g.f();
            }
            this.b.g = this.a;
        }
    }
}
