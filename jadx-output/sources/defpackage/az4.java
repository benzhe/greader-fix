package defpackage;

/* loaded from: classes.dex */
public final class az4 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ long h;
    public final /* synthetic */ sz4 i;

    public az4(sz4 sz4Var, String str, String str2, Object obj, long j) {
        this.i = sz4Var;
        this.e = str;
        this.f = str2;
        this.g = obj;
        this.h = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.i.k(this.e, this.f, this.g, this.h);
    }
}
