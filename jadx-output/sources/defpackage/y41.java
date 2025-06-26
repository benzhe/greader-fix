package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class y41 implements cb3<sf1<ob1>> {
    public final q41 a;
    public final mb3<Context> b;
    public final mb3<zzbar> c;
    public final mb3<sk2> d;
    public final mb3<ll2> e;

    public y41(q41 q41Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<sk2> mb3Var3, mb3<ll2> mb3Var4) {
        this.a = q41Var;
        this.b = mb3Var;
        this.c = mb3Var2;
        this.d = mb3Var3;
        this.e = mb3Var4;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new sf1(new p41(this.b.get(), this.c.get(), this.d.get(), this.e.get()), ms0.f);
    }
}
