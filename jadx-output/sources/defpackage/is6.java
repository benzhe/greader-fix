package defpackage;

/* loaded from: classes2.dex */
public final class is6 extends jm7 implements pl7<Throwable, yj7> {
    public static final is6 e = new is6();

    public is6() {
        super(1);
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        im7.e(th2, "throwable");
        jy6.b("Purchase flow could not be started", th2);
        return yj7.a;
    }
}
