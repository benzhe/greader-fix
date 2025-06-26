package androidx.lifecycle;

import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.yc;

/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements bd {
    public final yc e;
    public final bd f;

    public FullLifecycleObserverAdapter(yc ycVar, bd bdVar) {
        this.e = ycVar;
        this.f = bdVar;
    }

    @Override // defpackage.bd
    public void c(dd ddVar, ad.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.e.b(ddVar);
                break;
            case ON_START:
                this.e.i(ddVar);
                break;
            case ON_RESUME:
                this.e.a(ddVar);
                break;
            case ON_PAUSE:
                this.e.e(ddVar);
                break;
            case ON_STOP:
                this.e.f(ddVar);
                break;
            case ON_DESTROY:
                this.e.g(ddVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        bd bdVar = this.f;
        if (bdVar != null) {
            bdVar.c(ddVar, aVar);
        }
    }
}
