package defpackage;

/* loaded from: classes.dex */
public final class bs0 extends Thread {
    public final /* synthetic */ String e;

    public bs0(String str) {
        this.e = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new ls0().a(this.e);
    }
}
