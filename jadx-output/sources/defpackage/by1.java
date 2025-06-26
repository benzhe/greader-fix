package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class by1 implements da1, ob1 {
    public static final Object g = new Object();
    public static int h;
    public final zzf e;
    public final gy1 f;

    public by1(gy1 gy1Var, zzf zzfVar) {
        this.f = gy1Var;
        this.e = zzfVar;
    }

    @Override // defpackage.da1
    public final void Q(zzvh zzvhVar) {
        a(false);
    }

    public final void a(boolean z) {
        boolean z2;
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && !this.e.zzzn()) {
            Object obj = g;
            synchronized (obj) {
                z2 = h < ((Integer) os3.j.f.a(y40.N3)).intValue();
            }
            if (z2) {
                gy1 gy1Var = this.f;
                aw2<Bundle> aw2VarA = gy1Var.b.a();
                ((lo2) aw2VarA).i(new sv2(aw2VarA, new jy1(gy1Var, z)), ms0.f);
                synchronized (obj) {
                    h++;
                }
            }
        }
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        a(true);
    }
}
