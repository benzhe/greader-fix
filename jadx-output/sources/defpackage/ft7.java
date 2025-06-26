package defpackage;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ft7 extends wt7 {
    public wt7 a;

    public ft7(wt7 wt7Var) {
        im7.e(wt7Var, "delegate");
        this.a = wt7Var;
    }

    @Override // defpackage.wt7
    public wt7 clearDeadline() {
        return this.a.clearDeadline();
    }

    @Override // defpackage.wt7
    public wt7 clearTimeout() {
        return this.a.clearTimeout();
    }

    @Override // defpackage.wt7
    public long deadlineNanoTime() {
        return this.a.deadlineNanoTime();
    }

    @Override // defpackage.wt7
    public boolean hasDeadline() {
        return this.a.hasDeadline();
    }

    @Override // defpackage.wt7
    public void throwIfReached() throws IOException {
        this.a.throwIfReached();
    }

    @Override // defpackage.wt7
    public wt7 timeout(long j, TimeUnit timeUnit) {
        im7.e(timeUnit, "unit");
        return this.a.timeout(j, timeUnit);
    }

    @Override // defpackage.wt7
    public long timeoutNanos() {
        return this.a.timeoutNanos();
    }

    @Override // defpackage.wt7
    public wt7 deadlineNanoTime(long j) {
        return this.a.deadlineNanoTime(j);
    }
}
