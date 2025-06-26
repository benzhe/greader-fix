package defpackage;

import defpackage.n57;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class l67 implements n57 {
    public Random a = new Random();
    public long b = TimeUnit.SECONDS.toNanos(1);
    public long c = TimeUnit.MINUTES.toNanos(2);
    public double d = 1.6d;
    public double e = 0.2d;
    public long f = this.b;

    public static final class a implements n57.a {
    }

    public long a() {
        long j = this.f;
        double d = j;
        this.f = Math.min((long) (this.d * d), this.c);
        double d2 = this.e;
        double d3 = (-d2) * d;
        double d4 = d2 * d;
        c50.r(d4 >= d3);
        return j + ((long) ((this.a.nextDouble() * (d4 - d3)) + d3));
    }
}
