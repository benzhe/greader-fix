package defpackage;

/* loaded from: classes.dex */
public final class wk3 {
    public boolean a;

    public final synchronized boolean a() {
        if (this.a) {
            return false;
        }
        this.a = true;
        notifyAll();
        return true;
    }
}
