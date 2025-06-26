package defpackage;

/* loaded from: classes.dex */
public final class nz implements Runnable {
    public final /* synthetic */ mz e;

    public nz(mz mzVar) {
        this.e = mzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a.f.disconnect();
    }
}
