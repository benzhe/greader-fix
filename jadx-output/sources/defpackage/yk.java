package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class yk {
    public static final String f = vj.e("WorkTimer");
    public final ThreadFactory a;
    public final ScheduledExecutorService b;
    public final Map<String, c> c;
    public final Map<String, b> d;
    public final Object e;

    public class a implements ThreadFactory {
        public int e = 0;

        public a(yk ykVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            StringBuilder sbZ = jo.z("WorkManager-WorkTimer-thread-");
            sbZ.append(this.e);
            threadNewThread.setName(sbZ.toString());
            this.e++;
            return threadNewThread;
        }
    }

    public interface b {
        void a(String str);
    }

    public static class c implements Runnable {
        public final yk e;
        public final String f;

        public c(yk ykVar, String str) {
            this.e = ykVar;
            this.f = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.e.e) {
                if (this.e.c.remove(this.f) != null) {
                    b bVarRemove = this.e.d.remove(this.f);
                    if (bVarRemove != null) {
                        bVarRemove.a(this.f);
                    }
                } else {
                    vj.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f), new Throwable[0]);
                }
            }
        }
    }

    public yk() {
        a aVar = new a(this);
        this.a = aVar;
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new Object();
        this.b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    public void a(String str, long j, b bVar) {
        synchronized (this.e) {
            vj.c().a(f, String.format("Starting timer for %s", str), new Throwable[0]);
            b(str);
            c cVar = new c(this, str);
            this.c.put(str, cVar);
            this.d.put(str, bVar);
            this.b.schedule(cVar, j, TimeUnit.MILLISECONDS);
        }
    }

    public void b(String str) {
        synchronized (this.e) {
            if (this.c.remove(str) != null) {
                vj.c().a(f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.d.remove(str);
            }
        }
    }
}
