package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class qp0 implements cb3<rp0> {
    public final mb3<Context> a;
    public final mb3<zzf> b;
    public final mb3<cq0> c;

    public qp0(mb3<Context> mb3Var, mb3<zzf> mb3Var2, mb3<cq0> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rp0(this.a.get(), this.b.get(), this.c.get());
    }
}
