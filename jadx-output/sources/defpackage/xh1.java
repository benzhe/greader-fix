package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.lp3;

/* loaded from: classes.dex */
public final class xh1 implements cb3<yh1> {
    public final mb3<Context> a;
    public final mb3<xw0> b;
    public final mb3<sk2> c;
    public final mb3<zzbar> d;
    public final mb3<lp3.a> e;

    public xh1(mb3<Context> mb3Var, mb3<xw0> mb3Var2, mb3<sk2> mb3Var3, mb3<zzbar> mb3Var4, mb3<lp3.a> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static xh1 a(mb3<Context> mb3Var, mb3<xw0> mb3Var2, mb3<sk2> mb3Var3, mb3<zzbar> mb3Var4, mb3<lp3.a> mb3Var5) {
        return new xh1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new yh1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
