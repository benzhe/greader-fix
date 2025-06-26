package defpackage;

import defpackage.e27;
import defpackage.p27;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class g27 extends ThreadPoolExecutor {

    public static final class a extends FutureTask<n17> implements Comparable<a> {
        public final n17 e;

        public a(n17 n17Var) {
            super(n17Var, null);
            this.e = n17Var;
        }

        @Override // java.lang.Comparable
        public int compareTo(a aVar) {
            n17 n17Var = this.e;
            e27.e eVar = n17Var.w;
            n17 n17Var2 = aVar.e;
            e27.e eVar2 = n17Var2.w;
            return eVar == eVar2 ? n17Var.e - n17Var2.e : eVar2.ordinal() - eVar.ordinal();
        }
    }

    public g27() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new p27.b());
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((n17) runnable);
        execute(aVar);
        return aVar;
    }
}
