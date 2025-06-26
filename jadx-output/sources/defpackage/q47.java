package defpackage;

/* loaded from: classes2.dex */
public abstract class q47<ReqT, RespT> extends a37<ReqT, RespT> {
    @Override // defpackage.a37
    public void a(String str, Throwable th) {
        f().a(str, th);
    }

    @Override // defpackage.a37
    public void b() {
        f().b();
    }

    @Override // defpackage.a37
    public void c(int i) {
        f().c(i);
    }

    public abstract a37<?, ?> f();

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("delegate", f());
        return nd5VarK0.toString();
    }
}
