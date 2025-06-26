package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class sm6 {
    public static final Executor a;
    public static Executor b;
    public static final c c;
    public static final List<b> d;
    public static final ThreadLocal<String> e;

    public static class a implements c {
    }

    public static abstract class b implements Runnable {
        public String e;
        public int f;
        public long g;
        public String h;
        public boolean i;
        public Future<?> j;
        public AtomicBoolean k = new AtomicBoolean();

        public b(String str, int i, String str2) {
            if (!"".equals(str)) {
                this.e = str;
            }
            if (i > 0) {
                this.f = i;
                this.g = System.currentTimeMillis() + i;
            }
            if ("".equals(str2)) {
                return;
            }
            this.h = str2;
        }

        public abstract void a();

        public final void b() {
            if (this.e == null && this.h == null) {
                return;
            }
            b bVarRemove = null;
            sm6.e.set(null);
            synchronized (sm6.class) {
                List<b> list = sm6.d;
                list.remove(this);
                String str = this.h;
                if (str != null) {
                    int size = list.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        List<b> list2 = sm6.d;
                        if (str.equals(list2.get(i).h)) {
                            bVarRemove = list2.remove(i);
                            break;
                        }
                        i++;
                    }
                    if (bVarRemove != null) {
                        if (bVarRemove.f != 0) {
                            bVarRemove.f = Math.max(0, (int) (this.g - System.currentTimeMillis()));
                        }
                        sm6.a(bVarRemove);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.k.getAndSet(true)) {
                return;
            }
            try {
                sm6.e.set(this.h);
                a();
            } finally {
                b();
            }
        }
    }

    public interface c {
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        a = scheduledExecutorServiceNewScheduledThreadPool;
        b = scheduledExecutorServiceNewScheduledThreadPool;
        c = new a();
        d = new ArrayList();
        e = new ThreadLocal<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c A[Catch: all -> 0x006c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:7:0x000f, B:9:0x0015, B:11:0x001f, B:28:0x005b, B:30:0x005f, B:32:0x0063, B:16:0x002c, B:18:0x0032, B:20:0x0038, B:21:0x0042, B:22:0x0049, B:23:0x004a, B:25:0x0050, B:27:0x0058), top: B:38:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void a(sm6.b r7) {
        /*
            java.lang.Class<sm6> r0 = defpackage.sm6.class
            monitor-enter(r0)
            java.lang.String r1 = r7.h     // Catch: java.lang.Throwable -> L6c
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2c
            java.util.List<sm6$b> r4 = defpackage.sm6.d     // Catch: java.lang.Throwable -> L6c
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L6c
        Lf:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L6c
            if (r5 == 0) goto L29
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L6c
            sm6$b r5 = (sm6.b) r5     // Catch: java.lang.Throwable -> L6c
            boolean r6 = r5.i     // Catch: java.lang.Throwable -> L6c
            if (r6 == 0) goto Lf
            java.lang.String r5 = r5.h     // Catch: java.lang.Throwable -> L6c
            boolean r5 = r1.equals(r5)     // Catch: java.lang.Throwable -> L6c
            if (r5 == 0) goto Lf
            r1 = 1
            goto L2a
        L29:
            r1 = 0
        L2a:
            if (r1 != 0) goto L5b
        L2c:
            r7.i = r2     // Catch: java.lang.Throwable -> L6c
            int r1 = r7.f     // Catch: java.lang.Throwable -> L6c
            if (r1 <= 0) goto L4a
            java.util.concurrent.Executor r2 = defpackage.sm6.b     // Catch: java.lang.Throwable -> L6c
            boolean r3 = r2 instanceof java.util.concurrent.ScheduledExecutorService     // Catch: java.lang.Throwable -> L6c
            if (r3 == 0) goto L42
            java.util.concurrent.ScheduledExecutorService r2 = (java.util.concurrent.ScheduledExecutorService) r2     // Catch: java.lang.Throwable -> L6c
            long r3 = (long) r1     // Catch: java.lang.Throwable -> L6c
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L6c
            java.util.concurrent.ScheduledFuture r1 = r2.schedule(r7, r3, r1)     // Catch: java.lang.Throwable -> L6c
            goto L56
        L42:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L6c
            java.lang.String r1 = "The executor set does not support scheduling"
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L6c
            throw r7     // Catch: java.lang.Throwable -> L6c
        L4a:
            java.util.concurrent.Executor r1 = defpackage.sm6.b     // Catch: java.lang.Throwable -> L6c
            boolean r2 = r1 instanceof java.util.concurrent.ExecutorService     // Catch: java.lang.Throwable -> L6c
            if (r2 == 0) goto L58
            java.util.concurrent.ExecutorService r1 = (java.util.concurrent.ExecutorService) r1     // Catch: java.lang.Throwable -> L6c
            java.util.concurrent.Future r1 = r1.submit(r7)     // Catch: java.lang.Throwable -> L6c
        L56:
            r3 = r1
            goto L5b
        L58:
            r1.execute(r7)     // Catch: java.lang.Throwable -> L6c
        L5b:
            java.lang.String r1 = r7.e     // Catch: java.lang.Throwable -> L6c
            if (r1 != 0) goto L63
            java.lang.String r1 = r7.h     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L6a
        L63:
            r7.j = r3     // Catch: java.lang.Throwable -> L6c
            java.util.List<sm6$b> r1 = defpackage.sm6.d     // Catch: java.lang.Throwable -> L6c
            r1.add(r7)     // Catch: java.lang.Throwable -> L6c
        L6a:
            monitor-exit(r0)
            return
        L6c:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sm6.a(sm6$b):void");
    }
}
