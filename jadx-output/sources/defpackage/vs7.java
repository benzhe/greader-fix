package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class vs7 extends wt7 {
    public static final a Companion = new a(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static vs7 head;
    private boolean inQueue;
    private vs7 next;
    private long timeoutAt;

    public static final class a {
        public a(gm7 gm7Var) {
        }

        public final vs7 a() throws InterruptedException {
            vs7 vs7Var = vs7.head;
            im7.c(vs7Var);
            vs7 vs7Var2 = vs7Var.next;
            if (vs7Var2 == null) {
                long jNanoTime = System.nanoTime();
                vs7.class.wait(vs7.IDLE_TIMEOUT_MILLIS);
                vs7 vs7Var3 = vs7.head;
                im7.c(vs7Var3);
                if (vs7Var3.next != null || System.nanoTime() - jNanoTime < vs7.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return vs7.head;
            }
            long jRemainingNanos = vs7Var2.remainingNanos(System.nanoTime());
            if (jRemainingNanos > 0) {
                long j = jRemainingNanos / 1000000;
                vs7.class.wait(j, (int) (jRemainingNanos - (1000000 * j)));
                return null;
            }
            vs7 vs7Var4 = vs7.head;
            im7.c(vs7Var4);
            vs7Var4.next = vs7Var2.next;
            vs7Var2.next = null;
            return vs7Var2;
        }
    }

    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            vs7 vs7VarA;
            while (true) {
                try {
                    synchronized (vs7.class) {
                        vs7VarA = vs7.Companion.a();
                        if (vs7VarA == vs7.head) {
                            vs7.head = null;
                            return;
                        }
                    }
                    if (vs7VarA != null) {
                        vs7VarA.timedOut();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public static final class c implements tt7 {
        public final /* synthetic */ tt7 f;

        public c(tt7 tt7Var) {
            this.f = tt7Var;
        }

        @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            vs7 vs7Var = vs7.this;
            vs7Var.enter();
            try {
                this.f.close();
                if (vs7Var.exit()) {
                    throw vs7Var.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!vs7Var.exit()) {
                    throw e;
                }
                throw vs7Var.access$newTimeoutException(e);
            } finally {
                vs7Var.exit();
            }
        }

        @Override // defpackage.tt7, java.io.Flushable
        public void flush() throws IOException {
            vs7 vs7Var = vs7.this;
            vs7Var.enter();
            try {
                this.f.flush();
                if (vs7Var.exit()) {
                    throw vs7Var.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!vs7Var.exit()) {
                    throw e;
                }
                throw vs7Var.access$newTimeoutException(e);
            } finally {
                vs7Var.exit();
            }
        }

        @Override // defpackage.tt7
        public wt7 timeout() {
            return vs7.this;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("AsyncTimeout.sink(");
            sbZ.append(this.f);
            sbZ.append(')');
            return sbZ.toString();
        }

        @Override // defpackage.tt7
        public void write(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "source");
            n56.u(xs7Var.f, 0L, j);
            while (true) {
                long j2 = 0;
                if (j <= 0) {
                    return;
                }
                qt7 qt7Var = xs7Var.e;
                im7.c(qt7Var);
                while (true) {
                    if (j2 >= vs7.TIMEOUT_WRITE_SIZE) {
                        break;
                    }
                    j2 += qt7Var.c - qt7Var.b;
                    if (j2 >= j) {
                        j2 = j;
                        break;
                    } else {
                        qt7Var = qt7Var.f;
                        im7.c(qt7Var);
                    }
                }
                vs7 vs7Var = vs7.this;
                vs7Var.enter();
                try {
                    this.f.write(xs7Var, j2);
                    if (vs7Var.exit()) {
                        throw vs7Var.access$newTimeoutException(null);
                    }
                    j -= j2;
                } catch (IOException e) {
                    if (!vs7Var.exit()) {
                        throw e;
                    }
                    throw vs7Var.access$newTimeoutException(e);
                } finally {
                    vs7Var.exit();
                }
            }
        }
    }

    public static final class d implements vt7 {
        public final /* synthetic */ vt7 f;

        public d(vt7 vt7Var) {
            this.f = vt7Var;
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            vs7 vs7Var = vs7.this;
            vs7Var.enter();
            try {
                this.f.close();
                if (vs7Var.exit()) {
                    throw vs7Var.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!vs7Var.exit()) {
                    throw e;
                }
                throw vs7Var.access$newTimeoutException(e);
            } finally {
                vs7Var.exit();
            }
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            vs7 vs7Var = vs7.this;
            vs7Var.enter();
            try {
                long j2 = this.f.read(xs7Var, j);
                if (vs7Var.exit()) {
                    throw vs7Var.access$newTimeoutException(null);
                }
                return j2;
            } catch (IOException e) {
                if (vs7Var.exit()) {
                    throw vs7Var.access$newTimeoutException(e);
                }
                throw e;
            } finally {
                vs7Var.exit();
            }
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return vs7.this;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("AsyncTimeout.source(");
            sbZ.append(this.f);
            sbZ.append(')');
            return sbZ.toString();
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        if (!(!this.inQueue)) {
            throw new IllegalStateException("Unbalanced enter/exit".toString());
        }
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            this.inQueue = true;
            Objects.requireNonNull(Companion);
            synchronized (vs7.class) {
                if (head == null) {
                    head = new vs7();
                    new b().start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    this.timeoutAt = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (jTimeoutNanos != 0) {
                    this.timeoutAt = jTimeoutNanos + jNanoTime;
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    this.timeoutAt = deadlineNanoTime();
                }
                long jRemainingNanos = remainingNanos(jNanoTime);
                vs7 vs7Var = head;
                im7.c(vs7Var);
                while (vs7Var.next != null) {
                    vs7 vs7Var2 = vs7Var.next;
                    im7.c(vs7Var2);
                    if (jRemainingNanos < vs7Var2.remainingNanos(jNanoTime)) {
                        break;
                    }
                    vs7Var = vs7Var.next;
                    im7.c(vs7Var);
                }
                this.next = vs7Var.next;
                vs7Var.next = this;
                if (vs7Var == head) {
                    vs7.class.notify();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        r2.next = r4.next;
        r4.next = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean exit() {
        /*
            r4 = this;
            boolean r0 = r4.inQueue
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r4.inQueue = r1
            vs7$a r0 = defpackage.vs7.Companion
            java.util.Objects.requireNonNull(r0)
            java.lang.Class<vs7> r0 = defpackage.vs7.class
            monitor-enter(r0)
            vs7 r2 = access$getHead$cp()     // Catch: java.lang.Throwable -> L31
        L14:
            if (r2 == 0) goto L2e
            vs7 r3 = access$getNext$p(r2)     // Catch: java.lang.Throwable -> L31
            if (r3 != r4) goto L29
            vs7 r3 = access$getNext$p(r4)     // Catch: java.lang.Throwable -> L31
            access$setNext$p(r2, r3)     // Catch: java.lang.Throwable -> L31
            r2 = 0
            access$setNext$p(r4, r2)     // Catch: java.lang.Throwable -> L31
            monitor-exit(r0)
            goto L30
        L29:
            vs7 r2 = access$getNext$p(r2)     // Catch: java.lang.Throwable -> L31
            goto L14
        L2e:
            r1 = 1
            monitor-exit(r0)
        L30:
            return r1
        L31:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vs7.exit():boolean");
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final tt7 sink(tt7 tt7Var) {
        im7.e(tt7Var, "sink");
        return new c(tt7Var);
    }

    public final vt7 source(vt7 vt7Var) {
        im7.e(vt7Var, "source");
        return new d(vt7Var);
    }

    public void timedOut() {
    }

    public final <T> T withTimeout(el7<? extends T> el7Var) throws IOException {
        im7.e(el7Var, "block");
        enter();
        try {
            T tInvoke = el7Var.invoke();
            if (exit()) {
                throw access$newTimeoutException(null);
            }
            return tInvoke;
        } catch (IOException e) {
            if (exit()) {
                throw access$newTimeoutException(e);
            }
            throw e;
        } finally {
            exit();
        }
    }
}
