package defpackage;

/* loaded from: classes.dex */
public final class dy1 {
    public int a = 0;
    public long b = 0;
    public long c = 0;
    public long d = 0;
    public final Object e = new Object();
    public final Object f = new Object();
    public final Object g = new Object();
    public final Object h = new Object();

    public final synchronized long a() {
        long j;
        synchronized (this.g) {
            j = this.c;
        }
        return j;
    }

    public final synchronized void b(long j) {
        synchronized (this.h) {
            this.d = j;
        }
    }
}
