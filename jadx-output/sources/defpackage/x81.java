package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class x81 implements cb3<vs2<sk2, zzad>> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;
    public final mb3<ll2> c;

    public x81(mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<ll2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        final Context context = this.a.get();
        final zzbar zzbarVar = this.b.get();
        final ll2 ll2Var = this.c.get();
        return new vs2(context, zzbarVar, ll2Var) { // from class: y81
            public final Context a;
            public final zzbar b;
            public final ll2 c;

            {
                this.a = context;
                this.b = zzbarVar;
                this.c = ll2Var;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                Context context2 = this.a;
                zzbar zzbarVar2 = this.b;
                ll2 ll2Var2 = this.c;
                sk2 sk2Var = (sk2) obj;
                zzad zzadVar = new zzad(context2);
                zzadVar.zzeo(sk2Var.A);
                zzadVar.zzep(sk2Var.B.toString());
                zzadVar.zzu(zzbarVar2.e);
                zzadVar.setAdUnitId(ll2Var2.f);
                return zzadVar;
            }
        };
    }
}
