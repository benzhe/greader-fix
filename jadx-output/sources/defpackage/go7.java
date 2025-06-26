package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class go7 {
    public final TimeUnit a;

    public static final class a extends jo7 {
        public final long a;
        public final go7 b;

        public a(long j, go7 go7Var, double d, gm7 gm7Var) {
            this.a = j;
            this.b = go7Var;
        }

        @Override // defpackage.jo7
        public double a() {
            Objects.requireNonNull((io7) this.b);
            long jNanoTime = System.nanoTime() - this.a;
            TimeUnit timeUnit = this.b.a;
            im7.e(timeUnit, "unit");
            im7.e(timeUnit, "unit");
            return n56.z(jNanoTime, timeUnit, TimeUnit.NANOSECONDS) - 0.0d;
        }
    }

    public go7(TimeUnit timeUnit) {
        im7.e(timeUnit, "unit");
        this.a = timeUnit;
    }

    public jo7 a() {
        return new a(System.nanoTime(), this, 0.0d, null);
    }
}
