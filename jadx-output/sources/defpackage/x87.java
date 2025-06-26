package defpackage;

import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class x87 {
    public static final x87 d = new x87(new a());
    public final IdentityHashMap<c<?>, b> a = new IdentityHashMap<>();
    public final d b;
    public ScheduledExecutorService c;

    public class a implements d {
    }

    public static class b {
        public final Object a;
        public int b;
        public ScheduledFuture<?> c;

        public b(Object obj) {
            this.a = obj;
        }
    }

    public interface c<T> {
        T a();

        void b(T t);
    }

    public interface d {
    }

    public x87(d dVar) {
        this.b = dVar;
    }

    public static <T> T a(c<T> cVar) {
        T t;
        x87 x87Var = d;
        synchronized (x87Var) {
            b bVar = x87Var.a.get(cVar);
            if (bVar == null) {
                bVar = new b(cVar.a());
                x87Var.a.put(cVar, bVar);
            }
            ScheduledFuture<?> scheduledFuture = bVar.c;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                bVar.c = null;
            }
            bVar.b++;
            t = (T) bVar.a;
        }
        return t;
    }

    public static <T> T b(c<T> cVar, T t) {
        x87 x87Var = d;
        synchronized (x87Var) {
            b bVar = x87Var.a.get(cVar);
            if (bVar == null) {
                throw new IllegalArgumentException("No cached instance found for " + cVar);
            }
            c50.t(t == bVar.a, "Releasing the wrong instance");
            c50.G(bVar.b > 0, "Refcount has already reached zero");
            int i = bVar.b - 1;
            bVar.b = i;
            if (i == 0) {
                c50.G(bVar.c == null, "Destroy task already scheduled");
                if (x87Var.c == null) {
                    Objects.requireNonNull((a) x87Var.b);
                    x87Var.c = Executors.newSingleThreadScheduledExecutor(u67.d("grpc-shared-destroyer-%d", true));
                }
                bVar.c = x87Var.c.schedule(new o77(new y87(x87Var, bVar, cVar, t)), 1L, TimeUnit.SECONDS);
            }
        }
        return null;
    }
}
