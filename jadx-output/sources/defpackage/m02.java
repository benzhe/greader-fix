package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m02 implements cb3<d02> {
    public final mb3<g51> a;
    public final mb3<Context> b;
    public final mb3<Executor> c;
    public final mb3<mp1> d;
    public final mb3<ll2> e;
    public final mb3<vs2<sk2, zzad>> f;

    public m02(mb3<g51> mb3Var, mb3<Context> mb3Var2, mb3<Executor> mb3Var3, mb3<mp1> mb3Var4, mb3<ll2> mb3Var5, mb3<vs2<sk2, zzad>> mb3Var6) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new d02(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get());
    }
}
