package defpackage;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class xd<Params, Progress, Result> {
    public static final ThreadFactory j;
    public static final BlockingQueue<Runnable> k;
    public static final Executor l;
    public static e m;
    public final g<Params, Result> e;
    public final FutureTask<Result> f;
    public volatile f g = f.PENDING;
    public final AtomicBoolean h = new AtomicBoolean();
    public final AtomicBoolean i = new AtomicBoolean();

    public static class a implements ThreadFactory {
        public final AtomicInteger e = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sbZ = jo.z("ModernAsyncTask #");
            sbZ.append(this.e.getAndIncrement());
            return new Thread(runnable, sbZ.toString());
        }
    }

    public class b extends g<Params, Result> {
        public b() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            xd.this.i.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) xd.this.a(this.e);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    public class c extends FutureTask<Result> {
        public c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                Result result = get();
                xd xdVar = xd.this;
                if (xdVar.i.get()) {
                    return;
                }
                xdVar.d(result);
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                xd xdVar2 = xd.this;
                if (xdVar2.i.get()) {
                    return;
                }
                xdVar2.d(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    public static class d<Data> {
        public final xd a;
        public final Data[] b;

        public d(xd xdVar, Data... dataArr) {
            this.a = xdVar;
            this.b = dataArr;
        }
    }

    public static class e extends Handler {
        public e() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            d dVar = (d) message.obj;
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                Objects.requireNonNull(dVar.a);
            } else {
                xd xdVar = dVar.a;
                Object obj = dVar.b[0];
                if (xdVar.h.get()) {
                    xdVar.b(obj);
                } else {
                    xdVar.c(obj);
                }
                xdVar.g = f.FINISHED;
            }
        }
    }

    public enum f {
        PENDING,
        RUNNING,
        FINISHED
    }

    public static abstract class g<Params, Result> implements Callable<Result> {
        public Params[] e;
    }

    static {
        a aVar = new a();
        j = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        k = linkedBlockingQueue;
        l = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar);
    }

    public xd() {
        b bVar = new b();
        this.e = bVar;
        this.f = new c(bVar);
    }

    public abstract Result a(Params... paramsArr);

    public void b(Result result) {
    }

    public void c(Result result) {
    }

    public Result d(Result result) {
        e eVar;
        synchronized (xd.class) {
            if (m == null) {
                m = new e();
            }
            eVar = m;
        }
        eVar.obtainMessage(1, new d(this, result)).sendToTarget();
        return result;
    }
}
