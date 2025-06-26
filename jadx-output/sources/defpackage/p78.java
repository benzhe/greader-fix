package defpackage;

/* loaded from: classes2.dex */
public class p78 {
    public volatile boolean a;

    public synchronized void a() {
        this.a = false;
    }

    public synchronized void b() {
        boolean z = this.a;
        this.a = true;
        if (!z) {
            notify();
        }
    }
}
