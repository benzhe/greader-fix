package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class wt7 {
    public static final b Companion = new b(null);
    public static final wt7 NONE = new a();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public static final class a extends wt7 {
        @Override // defpackage.wt7
        public wt7 deadlineNanoTime(long j) {
            return this;
        }

        @Override // defpackage.wt7
        public void throwIfReached() {
        }

        @Override // defpackage.wt7
        public wt7 timeout(long j, TimeUnit timeUnit) {
            im7.e(timeUnit, "unit");
            return this;
        }
    }

    public static final class b {
        public b(gm7 gm7Var) {
        }

        public final long a(long j, long j2) {
            return (j != 0 && (j2 == 0 || j < j2)) ? j : j2;
        }
    }

    public wt7 clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public wt7 clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final wt7 deadline(long j, TimeUnit timeUnit) {
        im7.e(timeUnit, "unit");
        if (j > 0) {
            return deadlineNanoTime(timeUnit.toNanos(j) + System.nanoTime());
        }
        throw new IllegalArgumentException(jo.j("duration <= 0: ", j).toString());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final void intersectWith(wt7 wt7Var, el7<yj7> el7Var) {
        im7.e(wt7Var, "other");
        im7.e(el7Var, "block");
        long jTimeoutNanos = timeoutNanos();
        long jA = Companion.a(wt7Var.timeoutNanos(), timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(jA, timeUnit);
        if (!hasDeadline()) {
            if (wt7Var.hasDeadline()) {
                deadlineNanoTime(wt7Var.deadlineNanoTime());
            }
            try {
                el7Var.invoke();
                timeout(jTimeoutNanos, timeUnit);
                if (wt7Var.hasDeadline()) {
                    clearDeadline();
                    return;
                }
                return;
            } catch (Throwable th) {
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (wt7Var.hasDeadline()) {
                    clearDeadline();
                }
                throw th;
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (wt7Var.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), wt7Var.deadlineNanoTime()));
        }
        try {
            el7Var.invoke();
            timeout(jTimeoutNanos, timeUnit);
            if (wt7Var.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
        } catch (Throwable th2) {
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (wt7Var.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
            throw th2;
        }
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public wt7 timeout(long j, TimeUnit timeUnit) {
        im7.e(timeUnit, "unit");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("timeout < 0: ", j).toString());
        }
        this.timeoutNanos = timeUnit.toNanos(j);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedException, InterruptedIOException {
        im7.e(obj, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j = jTimeoutNanos / 1000000;
                Long.signum(j);
                obj.wait(j, (int) (jTimeoutNanos - (1000000 * j)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public wt7 deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }
}
