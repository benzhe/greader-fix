package defpackage;

/* loaded from: classes2.dex */
public class bl7 extends zk7 {
    @Override // defpackage.zk7
    public void a(Throwable th, Throwable th2) {
        im7.e(th, "cause");
        im7.e(th2, "exception");
        th.addSuppressed(th2);
    }
}
