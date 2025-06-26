package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class y91 implements cb3<np0> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;
    public final mb3<sk2> c;
    public final mb3<op0> d;

    public y91(v91 v91Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<sk2> mb3Var3, mb3<op0> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    public static y91 a(v91 v91Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<sk2> mb3Var3, mb3<op0> mb3Var4) {
        return new y91(v91Var, mb3Var, mb3Var2, mb3Var3, mb3Var4);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        Context context = this.a.get();
        zzbar zzbarVar = this.b.get();
        sk2 sk2Var = this.c.get();
        op0 op0Var = this.d.get();
        if (sk2Var.z != null) {
            return new fp0(context, zzbarVar, sk2Var.z, sk2Var.r.b, op0Var);
        }
        return null;
    }
}
