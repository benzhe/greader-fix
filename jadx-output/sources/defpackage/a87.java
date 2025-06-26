package defpackage;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class a87 extends r67 {
    public static final ReferenceQueue<a87> c = new ReferenceQueue<>();
    public static final ConcurrentMap<a, a> d = new ConcurrentHashMap();
    public static final Logger e = Logger.getLogger(a87.class.getName());
    public final a b;

    public static final class a extends WeakReference<a87> {
        public static final boolean f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));
        public static final RuntimeException g;
        public final ReferenceQueue<a87> a;
        public final ConcurrentMap<a, a> b;
        public final String c;
        public final Reference<RuntimeException> d;
        public volatile boolean e;

        static {
            RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
            runtimeException.setStackTrace(new StackTraceElement[0]);
            g = runtimeException;
        }

        public a(a87 a87Var, f47 f47Var, ReferenceQueue<a87> referenceQueue, ConcurrentMap<a, a> concurrentMap) {
            super(a87Var, referenceQueue);
            this.d = new SoftReference(f ? new RuntimeException("ManagedChannel allocation site") : g);
            this.c = f47Var.toString();
            this.a = referenceQueue;
            this.b = concurrentMap;
            concurrentMap.put(this, this);
            a(referenceQueue);
        }

        public static int a(ReferenceQueue<a87> referenceQueue) {
            int i = 0;
            while (true) {
                a aVar = (a) referenceQueue.poll();
                if (aVar == null) {
                    return i;
                }
                RuntimeException runtimeException = aVar.d.get();
                super.clear();
                aVar.b.remove(aVar);
                aVar.d.clear();
                if (!aVar.e) {
                    i++;
                    Level level = Level.SEVERE;
                    Logger logger = a87.e;
                    if (logger.isLoggable(level)) {
                        StringBuilder sbZ = jo.z("*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*");
                        sbZ.append(System.getProperty("line.separator"));
                        sbZ.append("    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true.");
                        LogRecord logRecord = new LogRecord(level, sbZ.toString());
                        logRecord.setLoggerName(logger.getName());
                        logRecord.setParameters(new Object[]{aVar.c});
                        logRecord.setThrown(runtimeException);
                        logger.log(logRecord);
                    }
                }
            }
        }

        @Override // java.lang.ref.Reference
        public void clear() {
            super.clear();
            this.b.remove(this);
            this.d.clear();
            a(this.a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a87(f47 f47Var) {
        super(f47Var);
        ReferenceQueue<a87> referenceQueue = c;
        ConcurrentMap<a, a> concurrentMap = d;
        this.b = new a(this, f47Var, referenceQueue, concurrentMap);
    }

    @Override // defpackage.f47
    public f47 m() {
        this.b.e = true;
        this.b.clear();
        return this.a.m();
    }
}
