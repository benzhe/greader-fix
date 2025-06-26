package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class d11 implements cb3<ar2> {
    public final mb3<Context> a;

    public d11(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ar2(this.a.get(), zzr.zzlj().zzaai());
    }
}
