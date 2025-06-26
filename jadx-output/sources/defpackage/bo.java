package defpackage;

/* loaded from: classes.dex */
public final class bo implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ String f;
    public final /* synthetic */ co g;

    public bo(co coVar, int i, String str) {
        this.g = coVar;
        this.e = i;
        this.f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dn dnVar = this.g.f;
        int i = this.e;
        String str = this.f;
        in inVar = new in();
        inVar.a = i;
        inVar.b = str;
        dnVar.a(inVar);
    }
}
