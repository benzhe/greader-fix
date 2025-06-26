package defpackage;

import android.os.Handler;
import android.os.Looper;
import defpackage.ex5;
import defpackage.qx5;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ex5 {
    public final ArrayList<d> c = new ArrayList<>();
    public final ArrayList<b> b = new ArrayList<>();
    public final c a = new c();

    public class b {
        public final Runnable a;
        public ScheduledFuture b;

        public b(d dVar, long j, Runnable runnable, a aVar) {
            this.a = runnable;
        }

        public void a() {
            ex5.this.d();
            ScheduledFuture scheduledFuture = this.b;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                b();
            }
        }

        public final void b() {
            bx5.c(this.b != null, "Caller should have verified scheduledFuture is non-null.", new Object[0]);
            this.b = null;
            bx5.c(ex5.this.b.remove(this), "Delayed task not found.", new Object[0]);
        }
    }

    public class c implements Executor {
        public final ScheduledThreadPoolExecutor e;
        public final Thread f;

        public class a extends ScheduledThreadPoolExecutor {
            public a(int i, ThreadFactory threadFactory, ex5 ex5Var) {
                super(i, threadFactory);
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            public void afterExecute(Runnable runnable, Throwable th) throws ExecutionException, InterruptedException {
                super.afterExecute(runnable, th);
                if (th == null && (runnable instanceof Future)) {
                    Future future = (Future) runnable;
                    try {
                        if (future.isDone()) {
                            future.get();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    } catch (CancellationException unused2) {
                    } catch (ExecutionException e) {
                        th = e.getCause();
                    }
                }
                if (th != null) {
                    ex5.this.c(th);
                }
            }
        }

        public class b implements Runnable, ThreadFactory {
            public final CountDownLatch e = new CountDownLatch(1);
            public Runnable f;

            public b(a aVar) {
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                bx5.c(this.f == null, "Only one thread may be created in an AsyncQueue.", new Object[0]);
                this.f = runnable;
                this.e.countDown();
                return c.this.f;
            }

            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                try {
                    this.e.await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
                this.f.run();
            }
        }

        public c() {
            b bVar = new b(null);
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(bVar);
            this.f = threadNewThread;
            threadNewThread.setName("FirestoreWorker");
            threadNewThread.setDaemon(true);
            threadNewThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(this) { // from class: gx5
                public final ex5.c a;

                {
                    this.a = this;
                }

                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    ex5.this.c(th);
                }
            });
            a aVar = new a(1, bVar, ex5.this);
            this.e = aVar;
            aVar.setKeepAliveTime(3L, TimeUnit.SECONDS);
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(Runnable runnable) {
            this.e.execute(runnable);
        }
    }

    public enum d {
        ALL,
        LISTEN_STREAM_IDLE,
        LISTEN_STREAM_CONNECTION_BACKOFF,
        WRITE_STREAM_IDLE,
        WRITE_STREAM_CONNECTION_BACKOFF,
        ONLINE_STATE_TIMEOUT,
        GARBAGE_COLLECTION,
        RETRY_TRANSACTION,
        CONNECTIVITY_ATTEMPT_TIMER
    }

    public <T> e45<T> a(final Callable<T> callable) {
        c cVar = this.a;
        Objects.requireNonNull(cVar);
        final f45 f45Var = new f45();
        try {
            cVar.execute(new Runnable(f45Var, callable) { // from class: hx5
                public final f45 e;
                public final Callable f;

                {
                    this.e = f45Var;
                    this.f = callable;
                }

                @Override // java.lang.Runnable
                public void run() throws Exception {
                    f45 f45Var2 = this.e;
                    try {
                        f45Var2.a.s(this.f.call());
                    } catch (Exception e) {
                        f45Var2.a.r(e);
                        throw new RuntimeException(e);
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            qx5.a(qx5.a.WARN, ex5.class.getSimpleName(), "Refused to enqueue task after panic", new Object[0]);
        }
        return f45Var.a;
    }

    public b b(d dVar, long j, Runnable runnable) {
        ScheduledFuture<?> scheduledFutureSchedule;
        if (this.c.contains(dVar)) {
            j = 0;
        }
        final b bVar = new b(dVar, System.currentTimeMillis() + j, runnable, null);
        c cVar = this.a;
        Runnable runnable2 = new Runnable(bVar) { // from class: fx5
            public final ex5.b e;

            {
                this.e = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                ex5.b bVar2 = this.e;
                ex5.this.d();
                if (bVar2.b != null) {
                    bVar2.b();
                    bVar2.a.run();
                }
            }
        };
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (cVar) {
            scheduledFutureSchedule = cVar.e.schedule(runnable2, j, timeUnit);
        }
        bVar.b = scheduledFutureSchedule;
        this.b.add(bVar);
        return bVar;
    }

    public void c(final Throwable th) {
        this.a.e.shutdownNow();
        new Handler(Looper.getMainLooper()).post(new Runnable(th) { // from class: dx5
            public final Throwable e;

            {
                this.e = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                Throwable th2 = this.e;
                if (!(th2 instanceof OutOfMemoryError)) {
                    throw new RuntimeException("Internal error in Cloud Firestore (22.0.1).", th2);
                }
                OutOfMemoryError outOfMemoryError = new OutOfMemoryError("Firestore (22.0.1) ran out of memory. Check your queries to make sure they are not loading an excessive amount of data.");
                outOfMemoryError.initCause(th2);
                throw outOfMemoryError;
            }
        });
    }

    public void d() {
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = this.a.f;
        if (thread == threadCurrentThread) {
            return;
        }
        bx5.a("We are running on the wrong thread. Expected to be on the AsyncQueue thread %s/%d but was %s/%d", thread.getName(), Long.valueOf(this.a.f.getId()), threadCurrentThread.getName(), Long.valueOf(threadCurrentThread.getId()));
        throw null;
    }
}
