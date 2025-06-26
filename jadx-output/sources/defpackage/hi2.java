package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class hi2 implements vs2<yv1, ji2> {
    public final /* synthetic */ fi2 a;

    public hi2(fi2 fi2Var) {
        this.a = fi2Var;
    }

    @Override // defpackage.vs2
    public final /* synthetic */ ji2 apply(yv1 yv1Var) {
        is0.zzc("", yv1Var);
        zzd.zzed("Failed to get a cache key, reverting to legacy flow.");
        fi2 fi2Var = this.a;
        fi2Var.e = new ji2(null, fi2Var.a(), null);
        return this.a.e;
    }
}
