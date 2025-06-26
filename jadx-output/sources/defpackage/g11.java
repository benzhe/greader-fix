package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzay;

/* loaded from: classes.dex */
public final class g11 implements cb3<zzay> {
    public final mb3<Context> a;

    public g11(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new zzay(this.a.get());
    }
}
