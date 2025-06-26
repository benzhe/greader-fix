package defpackage;

/* loaded from: classes.dex */
public final class on implements Runnable {
    public final /* synthetic */ vn e;
    public final /* synthetic */ pn f;

    public on(pn pnVar, vn vnVar) {
        this.f = pnVar;
        this.e = vnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ln lnVar = this.f.g;
        vn vnVar = this.e;
        int i = vnVar.b;
        String str = vnVar.c;
        in inVar = new in();
        inVar.a = i;
        inVar.b = str;
        lnVar.a(inVar, this.e.a);
    }
}
