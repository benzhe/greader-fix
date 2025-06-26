package defpackage;

import defpackage.zb7;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class vh7 extends zb7 {
    public static final b c;
    public static final zh7 d;
    public static final int e;
    public static final c f;
    public final ThreadFactory a;
    public final AtomicReference<b> b;

    public static final class a extends zb7.b {
        public final ad7 e;
        public final hc7 f;
        public final ad7 g;
        public final c h;
        public volatile boolean i;

        public a(c cVar) {
            this.h = cVar;
            ad7 ad7Var = new ad7();
            this.e = ad7Var;
            hc7 hc7Var = new hc7();
            this.f = hc7Var;
            ad7 ad7Var2 = new ad7();
            this.g = ad7Var2;
            ad7Var2.b(ad7Var);
            ad7Var2.b(hc7Var);
        }

        @Override // zb7.b
        public ic7 b(Runnable runnable) {
            return this.i ? zc7.INSTANCE : this.h.d(runnable, 0L, TimeUnit.MILLISECONDS, this.e);
        }

        @Override // zb7.b
        public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.i ? zc7.INSTANCE : this.h.d(runnable, j, timeUnit, this.f);
        }

        @Override // defpackage.ic7
        public void k() {
            if (this.i) {
                return;
            }
            this.i = true;
            this.g.k();
        }
    }

    public static final class b {
        public final int a;
        public final c[] b;
        public long c;

        public b(int i, ThreadFactory threadFactory) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(threadFactory);
            }
        }

        public c a() {
            int i = this.a;
            if (i == 0) {
                return vh7.f;
            }
            c[] cVarArr = this.b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % i)];
        }
    }

    public static final class c extends yh7 {
        public c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        e = iAvailableProcessors;
        c cVar = new c(new zh7("RxComputationShutdown"));
        f = cVar;
        cVar.k();
        zh7 zh7Var = new zh7("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        d = zh7Var;
        b bVar = new b(0, zh7Var);
        c = bVar;
        for (c cVar2 : bVar.b) {
            cVar2.k();
        }
    }

    public vh7() {
        zh7 zh7Var = d;
        this.a = zh7Var;
        b bVar = c;
        AtomicReference<b> atomicReference = new AtomicReference<>(bVar);
        this.b = atomicReference;
        b bVar2 = new b(e, zh7Var);
        if (atomicReference.compareAndSet(bVar, bVar2)) {
            return;
        }
        for (c cVar : bVar2.b) {
            cVar.k();
        }
    }

    @Override // defpackage.zb7
    public zb7.b a() {
        return new a(this.b.get().a());
    }

    @Override // defpackage.zb7
    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
        c cVarA = this.b.get().a();
        Objects.requireNonNull(cVarA);
        Objects.requireNonNull(runnable, "run is null");
        ai7 ai7Var = new ai7(runnable);
        try {
            ai7Var.a(j <= 0 ? cVarA.e.submit(ai7Var) : cVarA.e.schedule(ai7Var, j, timeUnit));
            return ai7Var;
        } catch (RejectedExecutionException e2) {
            n56.z1(e2);
            return zc7.INSTANCE;
        }
    }
}
