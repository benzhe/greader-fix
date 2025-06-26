package defpackage;

import com.google.android.gms.internal.ads.zzauj;
import defpackage.l91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gi2<RequestComponentT extends l91<AdT>, AdT> implements li2<RequestComponentT, AdT> {
    public final li2<RequestComponentT, AdT> a;
    public RequestComponentT b;

    public gi2(li2<RequestComponentT, AdT> li2Var) {
        this.a = li2Var;
    }

    @Override // defpackage.li2
    public final synchronized aw2<AdT> a(pi2 pi2Var, ni2<RequestComponentT> ni2Var) {
        if (pi2Var.a == null) {
            aw2<AdT> aw2VarA = this.a.a(pi2Var, ni2Var);
            this.b = this.a.b();
            return aw2VarA;
        }
        RequestComponentT requestcomponenttA = ni2Var.a(pi2Var.b).a();
        this.b = requestcomponenttA;
        h71<AdT> h71VarD = requestcomponenttA.d();
        zzauj zzaujVar = pi2Var.a;
        Objects.requireNonNull(h71VarD);
        return h71VarD.c(h71VarD.a(vt2.j(zzaujVar)));
    }

    @Override // defpackage.li2
    public final Object b() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.b;
        }
        return requestcomponentt;
    }
}
