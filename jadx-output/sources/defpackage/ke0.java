package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class ke0 implements zs0 {
    public final /* synthetic */ se0 a;
    public final /* synthetic */ yd0 b;

    public ke0(yd0 yd0Var, se0 se0Var) {
        this.b = yd0Var;
        this.a = se0Var;
    }

    @Override // defpackage.zs0
    public final void run() {
        synchronized (this.b.a) {
            this.b.h = 1;
            zzd.zzed("Failed loading new engine. Marking new engine destroyable.");
            this.a.f();
        }
    }
}
