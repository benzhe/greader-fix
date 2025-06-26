package defpackage;

import android.os.Process;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class nx4 extends Thread {
    public final Object e;
    public final BlockingQueue<mx4<?>> f;
    public boolean g = false;
    public final /* synthetic */ ox4 h;

    public nx4(ox4 ox4Var, String str, BlockingQueue<mx4<?>> blockingQueue) {
        this.h = ox4Var;
        Objects.requireNonNull(blockingQueue, "null reference");
        this.e = new Object();
        this.f = blockingQueue;
        setName(str);
    }

    public final void a() {
        synchronized (this.h.i) {
            if (!this.g) {
                this.h.j.release();
                this.h.i.notifyAll();
                ox4 ox4Var = this.h;
                if (this == ox4Var.c) {
                    ox4Var.c = null;
                } else if (this == ox4Var.d) {
                    ox4Var.d = null;
                } else {
                    ox4Var.a.a().f.a("Current scheduler thread is neither worker nor network");
                }
                this.g = true;
            }
        }
    }

    public final void b(InterruptedException interruptedException) {
        this.h.a.a().i.b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean z = false;
        while (!z) {
            try {
                this.h.j.acquire();
                z = true;
            } catch (InterruptedException e) {
                b(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                mx4<?> mx4VarPoll = this.f.poll();
                if (mx4VarPoll == null) {
                    synchronized (this.e) {
                        if (this.f.peek() == null) {
                            Objects.requireNonNull(this.h);
                            try {
                                this.e.wait(30000L);
                            } catch (InterruptedException e2) {
                                b(e2);
                            }
                        }
                    }
                    synchronized (this.h.i) {
                        if (this.f.peek() == null) {
                            break;
                        }
                    }
                } else {
                    Process.setThreadPriority(true != mx4VarPoll.f ? 10 : threadPriority);
                    mx4VarPoll.run();
                }
            }
            if (this.h.a.g.s(null, ew4.q0)) {
                a();
            }
        } finally {
            a();
        }
    }
}
