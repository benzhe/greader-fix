package defpackage;

/* loaded from: classes2.dex */
public final class cs6 extends jm7 implements pl7<Throwable, yj7> {
    public static final cs6 e = new cs6();

    public cs6() {
        super(1);
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        im7.e(th2, "it");
        th2.printStackTrace();
        return yj7.a;
    }
}
