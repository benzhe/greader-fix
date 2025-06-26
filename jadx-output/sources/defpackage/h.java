package defpackage;

/* compiled from: kotlin-style lambda group */
/* loaded from: classes.dex */
public final class h extends jm7 implements pl7<Throwable, yj7> {
    public static final h f = new h(0);
    public static final h g = new h(1);
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(int i) {
        super(1);
        this.e = i;
    }

    @Override // defpackage.pl7
    public final yj7 invoke(Throwable th) {
        int i = this.e;
        if (i == 0) {
            Throwable th2 = th;
            im7.e(th2, "it");
            th2.printStackTrace();
            return yj7.a;
        }
        if (i != 1) {
            throw null;
        }
        Throwable th3 = th;
        im7.e(th3, "it");
        th3.printStackTrace();
        return yj7.a;
    }
}
