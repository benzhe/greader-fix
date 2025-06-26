package defpackage;

import defpackage.l91;

/* loaded from: classes.dex */
public final class ci2<RequestComponentT extends l91<AdT>, AdT> implements li2<RequestComponentT, AdT> {
    public RequestComponentT a;

    @Override // defpackage.li2
    public final synchronized aw2<AdT> a(pi2 pi2Var, ni2<RequestComponentT> ni2Var) {
        RequestComponentT requestcomponenttA;
        requestcomponenttA = ni2Var.a(pi2Var.b).a();
        this.a = requestcomponenttA;
        return requestcomponenttA.d().b();
    }

    @Override // defpackage.li2
    public final Object b() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.a;
        }
        return requestcomponentt;
    }
}
