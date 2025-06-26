package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;

/* loaded from: classes.dex */
public final class e81 implements cb3<zza> {
    public final mb3<Context> a;
    public final mb3<np0> b;

    public e81(a81 a81Var, mb3<Context> mb3Var, mb3<np0> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new zza(this.a.get(), this.b.get(), null);
    }
}
