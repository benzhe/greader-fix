package defpackage;

/* loaded from: classes2.dex */
public final class cq6 extends jm7 implements pl7<Throwable, yj7> {
    public static final cq6 e = new cq6();

    public cq6() {
        super(1);
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        im7.e(th2, "it");
        jy6.b("Purchase could not be verified completely", th2);
        return yj7.a;
    }
}
