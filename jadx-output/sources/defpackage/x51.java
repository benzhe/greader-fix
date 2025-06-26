package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class x51 implements cb3<y51> {
    public final mb3<Context> a;
    public final mb3<xw0> b;
    public final mb3<sk2> c;
    public final mb3<zzbar> d;

    public x51(mb3<Context> mb3Var, mb3<xw0> mb3Var2, mb3<sk2> mb3Var3, mb3<zzbar> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new y51(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
