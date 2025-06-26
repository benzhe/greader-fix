package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class v26 {
    public static BlockingQueue<Runnable> e;
    public static final ThreadPoolExecutor f;
    public Map<Object, a> a = new HashMap();
    public Map<Object, b> b = new HashMap();
    public Map<Object, Object> c = new HashMap();
    public Map<Object, e> d = new HashMap();

    public static class a extends c<Object> {
    }

    public static class b extends c<Object> {
    }

    public static abstract class c<T> {
    }

    public static class d implements ThreadFactory {
        public final AtomicInteger e = new AtomicInteger(1);
        public final String f;

        public d(String str) {
            this.f = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sbZ = jo.z("FIAM-");
            sbZ.append(this.f);
            sbZ.append(this.e.getAndIncrement());
            Thread thread = new Thread(runnable, sbZ.toString());
            thread.setDaemon(false);
            thread.setPriority(9);
            return thread;
        }
    }

    public static class e extends c<Object> {
    }

    static {
        new HashMap();
        new HashMap();
        new HashMap();
        new HashMap();
        e = new LinkedBlockingQueue();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 15L, TimeUnit.SECONDS, e, new d("EventListeners-"));
        f = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }
}
