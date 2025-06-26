package defpackage;

import android.os.SystemClock;

/* loaded from: classes.dex */
public class d20 implements b20 {
    public static final d20 a = new d20();

    @Override // defpackage.b20
    public long a() {
        return System.currentTimeMillis();
    }

    @Override // defpackage.b20
    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // defpackage.b20
    public long nanoTime() {
        return System.nanoTime();
    }
}
