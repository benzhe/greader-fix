package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class qm implements Executor {
    public final Executor f;
    public volatile Runnable h;
    public final ArrayDeque<a> e = new ArrayDeque<>();
    public final Object g = new Object();

    public static class a implements Runnable {
        public final qm e;
        public final Runnable f;

        public a(qm qmVar, Runnable runnable) {
            this.e = qmVar;
            this.f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f.run();
            } finally {
                this.e.a();
            }
        }
    }

    public qm(Executor executor) {
        this.f = executor;
    }

    public void a() {
        synchronized (this.g) {
            a aVarPoll = this.e.poll();
            this.h = aVarPoll;
            if (aVarPoll != null) {
                this.f.execute(this.h);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.g) {
            this.e.add(new a(this, runnable));
            if (this.h == null) {
                a();
            }
        }
    }
}
