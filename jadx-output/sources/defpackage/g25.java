package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class g25 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ h25 g;

    public g25(h25 h25Var, String str, Bundle bundle) {
        this.g = h25Var;
        this.e = str;
        this.f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.g.a.W(this.g.a.j.t().J(this.e, "_err", this.f, "auto", this.g.a.j.n.a(), false, false, false), this.e);
    }
}
