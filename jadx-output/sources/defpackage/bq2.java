package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class bq2 implements cb3<yp2> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;

    public bq2(mb3<Context> mb3Var, mb3<zzbar> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new yp2(this.a.get(), this.b.get());
    }
}
