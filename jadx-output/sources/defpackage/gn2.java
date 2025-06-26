package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdrc;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class gn2 {
    public HashMap<ym2, fn2<? extends f61>> a = new HashMap<>();

    public final <AdT extends f61> fn2<AdT> a(ym2 ym2Var, Context context, mm2 mm2Var, th2<AdT> th2Var) {
        zzdrc zzdrcVar;
        fn2<AdT> fn2Var = (fn2) this.a.get(ym2Var);
        if (fn2Var != null) {
            return fn2Var;
        }
        if (ym2Var == ym2.Rewarded) {
            zzdrcVar = new zzdrc(context, ym2Var, ((Integer) os3.j.f.a(y40.S3)).intValue(), ((Integer) os3.j.f.a(y40.Y3)).intValue(), ((Integer) os3.j.f.a(y40.a4)).intValue(), (String) os3.j.f.a(y40.c4), (String) os3.j.f.a(y40.U3), (String) os3.j.f.a(y40.W3));
        } else if (ym2Var == ym2.Interstitial) {
            zzdrcVar = new zzdrc(context, ym2Var, ((Integer) os3.j.f.a(y40.T3)).intValue(), ((Integer) os3.j.f.a(y40.Z3)).intValue(), ((Integer) os3.j.f.a(y40.b4)).intValue(), (String) os3.j.f.a(y40.d4), (String) os3.j.f.a(y40.V3), (String) os3.j.f.a(y40.X3));
        } else if (ym2Var == ym2.AppOpen) {
            zzdrcVar = new zzdrc(context, ym2Var, ((Integer) os3.j.f.a(y40.g4)).intValue(), ((Integer) os3.j.f.a(y40.i4)).intValue(), ((Integer) os3.j.f.a(y40.j4)).intValue(), (String) os3.j.f.a(y40.e4), (String) os3.j.f.a(y40.f4), (String) os3.j.f.a(y40.h4));
        } else {
            zzdrcVar = null;
        }
        rm2 rm2Var = new rm2(zzdrcVar);
        fn2<AdT> fn2Var2 = new fn2<>(rm2Var, new kn2(rm2Var, mm2Var, th2Var));
        this.a.put(ym2Var, fn2Var2);
        return fn2Var2;
    }
}
