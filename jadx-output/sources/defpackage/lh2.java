package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvt;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class lh2 implements cb3<ih2> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<zzvt> c;
    public final mb3<sy0> d;
    public final mb3<w52> e;
    public final mb3<q62> f;

    public lh2(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<zzvt> mb3Var3, mb3<sy0> mb3Var4, mb3<w52> mb3Var5, mb3<q62> mb3Var6, mb3<nl2> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ih2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), new nl2());
    }
}
