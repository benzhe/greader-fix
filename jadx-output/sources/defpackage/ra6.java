package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ra6 {
    public static final long d = TimeUnit.HOURS.toMillis(24);
    public static final long e = TimeUnit.MINUTES.toMillis(30);
    public final ha6 a = ha6.c();
    public long b;
    public int c;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean a() {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.c     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L14
            ha6 r0 = r5.a     // Catch: java.lang.Throwable -> L17
            long r0 = r0.a()     // Catch: java.lang.Throwable -> L17
            long r2 = r5.b     // Catch: java.lang.Throwable -> L17
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L12
            goto L14
        L12:
            r0 = 0
            goto L15
        L14:
            r0 = 1
        L15:
            monitor-exit(r5)
            return r0
        L17:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ra6.a():boolean");
    }

    public synchronized void b(int i) {
        long jMin;
        boolean z = false;
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            synchronized (this) {
                this.c = 0;
            }
            return;
        }
        this.c++;
        synchronized (this) {
            if (i == 429 || (i >= 500 && i < 600)) {
                z = true;
            }
            if (z) {
                double dPow = Math.pow(2.0d, this.c);
                Objects.requireNonNull(this.a);
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), e);
            } else {
                jMin = d;
            }
            this.b = this.a.a() + jMin;
        }
        return;
    }
}
