package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class b05 implements Runnable {
    public final /* synthetic */ Bundle e;
    public final /* synthetic */ a05 f;
    public final /* synthetic */ a05 g;
    public final /* synthetic */ long h;
    public final /* synthetic */ h05 i;

    public b05(h05 h05Var, Bundle bundle, a05 a05Var, a05 a05Var2, long j) {
        this.i = h05Var;
        this.e = bundle;
        this.f = a05Var;
        this.g = a05Var2;
        this.h = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h05 h05Var = this.i;
        Bundle bundle = this.e;
        a05 a05Var = this.f;
        a05 a05Var2 = this.g;
        long j = this.h;
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        h05Var.k(a05Var, a05Var2, j, true, h05Var.a.t().t(null, "screen_view", bundle, null, true));
    }
}
