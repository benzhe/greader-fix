package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class xg1 implements cb3<sf1<ob1>> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;
    public final mb3<sk2> c;
    public final mb3<ll2> d;

    public xg1(rg1 rg1Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<sk2> mb3Var3, mb3<ll2> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    public static xg1 a(rg1 rg1Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<sk2> mb3Var3, mb3<ll2> mb3Var4) {
        return new xg1(rg1Var, mb3Var, mb3Var2, mb3Var3, mb3Var4);
    }

    @Override // defpackage.mb3
    public final Object get() {
        final Context context = this.a.get();
        final zzbar zzbarVar = this.b.get();
        final sk2 sk2Var = this.c.get();
        final ll2 ll2Var = this.d.get();
        return new sf1(new ob1(context, zzbarVar, sk2Var, ll2Var) { // from class: ug1
            public final Context e;
            public final zzbar f;
            public final sk2 g;
            public final ll2 h;

            {
                this.e = context;
                this.f = zzbarVar;
                this.g = sk2Var;
                this.h = ll2Var;
            }

            @Override // defpackage.ob1
            public final void onAdLoaded() {
                zzr.zzlf().zzb(this.e, this.f.e, this.g.B.toString(), this.h.f);
            }
        }, ms0.f);
    }
}
