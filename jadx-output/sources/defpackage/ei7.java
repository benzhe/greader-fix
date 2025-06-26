package defpackage;

import defpackage.zb7;
import java.util.Objects;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class ei7 extends zb7 {
    public static final ei7 a = new ei7();

    public static final class a implements Runnable {
        public final Runnable e;
        public final c f;
        public final long g;

        public a(Runnable runnable, c cVar, long j) {
            this.e = runnable;
            this.f = cVar;
            this.g = j;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            if (this.f.h) {
                return;
            }
            long jA = this.f.a(TimeUnit.MILLISECONDS);
            long j = this.g;
            if (j > jA) {
                try {
                    Thread.sleep(j - jA);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    n56.z1(e);
                    return;
                }
            }
            if (this.f.h) {
                return;
            }
            this.e.run();
        }
    }

    public static final class b implements Comparable<b> {
        public final Runnable e;
        public final long f;
        public final int g;
        public volatile boolean h;

        public b(Runnable runnable, Long l, int i) {
            this.e = runnable;
            this.f = l.longValue();
            this.g = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(b bVar) {
            b bVar2 = bVar;
            long j = this.f;
            long j2 = bVar2.f;
            int i = 0;
            int i2 = j < j2 ? -1 : j > j2 ? 1 : 0;
            if (i2 != 0) {
                return i2;
            }
            int i3 = this.g;
            int i4 = bVar2.g;
            if (i3 < i4) {
                i = -1;
            } else if (i3 > i4) {
                i = 1;
            }
            return i;
        }
    }

    public static final class c extends zb7.b implements ic7 {
        public final PriorityBlockingQueue<b> e = new PriorityBlockingQueue<>();
        public final AtomicInteger f = new AtomicInteger();
        public final AtomicInteger g = new AtomicInteger();
        public volatile boolean h;

        public final class a implements Runnable {
            public final b e;

            public a(b bVar) {
                this.e = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.e.h = true;
                c.this.e.remove(this.e);
            }
        }

        @Override // zb7.b
        public ic7 b(Runnable runnable) {
            return d(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override // zb7.b
        public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j) + a(TimeUnit.MILLISECONDS);
            return d(new a(runnable, this, millis), millis);
        }

        public ic7 d(Runnable runnable, long j) {
            zc7 zc7Var = zc7.INSTANCE;
            if (this.h) {
                return zc7Var;
            }
            b bVar = new b(runnable, Long.valueOf(j), this.g.incrementAndGet());
            this.e.add(bVar);
            if (this.f.getAndIncrement() != 0) {
                return new jc7(new a(bVar));
            }
            int iAddAndGet = 1;
            while (!this.h) {
                b bVarPoll = this.e.poll();
                if (bVarPoll == null) {
                    iAddAndGet = this.f.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return zc7Var;
                    }
                } else if (!bVarPoll.h) {
                    bVarPoll.e.run();
                }
            }
            this.e.clear();
            return zc7Var;
        }

        @Override // defpackage.ic7
        public void k() {
            this.h = true;
        }
    }

    @Override // defpackage.zb7
    public zb7.b a() {
        return new c();
    }

    @Override // defpackage.zb7
    public ic7 b(Runnable runnable) {
        runnable.run();
        return zc7.INSTANCE;
    }

    @Override // defpackage.zb7
    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) throws InterruptedException {
        try {
            timeUnit.sleep(j);
            Objects.requireNonNull(runnable, "run is null");
            runnable.run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            n56.z1(e);
        }
        return zc7.INSTANCE;
    }
}
