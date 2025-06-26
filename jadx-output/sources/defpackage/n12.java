package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n12 implements cb3<i12> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;
    public final mb3<ll2> c;
    public final mb3<Executor> d;
    public final mb3<oh1> e;
    public final mb3<mp1> f;

    public n12(mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<ll2> mb3Var3, mb3<Executor> mb3Var4, mb3<oh1> mb3Var5, mb3<mp1> mb3Var6, mb3<ob0> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new i12(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), new ob0());
    }
}
