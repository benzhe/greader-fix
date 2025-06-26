package defpackage;

import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class i87 extends f47 implements x37<Object> {
    static {
        Logger.getLogger(i87.class.getName());
    }

    @Override // defpackage.y27
    public String a() {
        return null;
    }

    @Override // defpackage.x37
    public y37 e() {
        return null;
    }

    @Override // defpackage.y27
    public <RequestT, ResponseT> a37<RequestT, ResponseT> h(j47<RequestT, ResponseT> j47Var, x27 x27Var) {
        Executor executor = x27Var.b;
        if (executor == null) {
            executor = null;
        }
        return new t57(j47Var, executor, x27Var, null, null, null, false);
    }

    @Override // defpackage.f47
    public i37 j(boolean z) {
        return i37.IDLE;
    }

    @Override // defpackage.f47
    public void l() {
        throw null;
    }

    @Override // defpackage.f47
    public f47 m() {
        x47.n.h("OobChannel.shutdownNow() called");
        throw null;
    }

    public String toString() {
        c50.K0(this);
        throw null;
    }
}
