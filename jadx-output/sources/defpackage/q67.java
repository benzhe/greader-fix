package defpackage;

import defpackage.a67;
import defpackage.c87;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public abstract class q67 implements d67 {
    public abstract d67 a();

    @Override // defpackage.c87
    public void b(x47 x47Var) {
        a().b(x47Var);
    }

    @Override // defpackage.c87
    public void c(x47 x47Var) {
        a().c(x47Var);
    }

    @Override // defpackage.c87
    public Runnable d(c87.a aVar) {
        return a().d(aVar);
    }

    @Override // defpackage.x37
    public y37 e() {
        return a().e();
    }

    @Override // defpackage.a67
    public void f(a67.a aVar, Executor executor) {
        a().f(aVar, executor);
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("delegate", a());
        return nd5VarK0.toString();
    }
}
