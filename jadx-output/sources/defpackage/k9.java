package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class k9 {
    public HandlerThread b;
    public Handler c;
    public final Object a = new Object();
    public Handler.Callback e = new a();
    public int d = 0;

    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                k9 k9Var = k9.this;
                synchronized (k9Var.a) {
                    if (!k9Var.c.hasMessages(1)) {
                        k9Var.b.quit();
                        k9Var.b = null;
                        k9Var.c = null;
                    }
                }
                return true;
            }
            if (i != 1) {
                return true;
            }
            k9 k9Var2 = k9.this;
            Runnable runnable = (Runnable) message.obj;
            Objects.requireNonNull(k9Var2);
            runnable.run();
            synchronized (k9Var2.a) {
                k9Var2.c.removeMessages(0);
                Handler handler = k9Var2.c;
                handler.sendMessageDelayed(handler.obtainMessage(0), 10000);
            }
            return true;
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ AtomicReference e;
        public final /* synthetic */ Callable f;
        public final /* synthetic */ ReentrantLock g;
        public final /* synthetic */ AtomicBoolean h;
        public final /* synthetic */ Condition i;

        public b(k9 k9Var, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.e = atomicReference;
            this.f = callable;
            this.g = reentrantLock;
            this.h = atomicBoolean;
            this.i = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.e.set(this.f.call());
            } catch (Exception unused) {
            }
            this.g.lock();
            try {
                this.h.set(false);
                this.i.signal();
            } finally {
                this.g.unlock();
            }
        }
    }

    public interface c<T> {
        void a(T t);
    }

    public k9(String str, int i, int i2) {
    }

    public final void a(Runnable runnable) {
        synchronized (this.a) {
            if (this.b == null) {
                HandlerThread handlerThread = new HandlerThread("fonts", 10);
                this.b = handlerThread;
                handlerThread.start();
                this.c = new Handler(this.b.getLooper(), this.e);
                this.d++;
            }
            this.c.removeMessages(0);
            Handler handler = this.c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    public <T> T b(Callable<T> callable, int i) throws InterruptedException {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition conditionNewCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        a(new b(this, atomicReference, callable, reentrantLock, atomicBoolean, conditionNewCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = conditionNewCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }
}
