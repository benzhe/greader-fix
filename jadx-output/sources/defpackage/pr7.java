package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class pr7 {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(pr7.class, Object.class, "lastScheduledTask");
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(pr7.class, "producerIndex");
    public static final AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(pr7.class, "consumerIndex");
    public static final AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(pr7.class, "blockingTasksInBuffer");
    public final AtomicReferenceArray<kr7> a = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask = null;
    private volatile int producerIndex = 0;
    private volatile int consumerIndex = 0;
    private volatile int blockingTasksInBuffer = 0;

    public final kr7 a(kr7 kr7Var, boolean z) {
        if (z) {
            return b(kr7Var);
        }
        kr7 kr7Var2 = (kr7) b.getAndSet(this, kr7Var);
        if (kr7Var2 != null) {
            return b(kr7Var2);
        }
        return null;
    }

    public final kr7 b(kr7 kr7Var) {
        if (kr7Var.f.i() == 1) {
            e.incrementAndGet(this);
        }
        if (c() == 127) {
            return kr7Var;
        }
        int i = this.producerIndex & 127;
        while (this.a.get(i) != null) {
            Thread.yield();
        }
        this.a.lazySet(i, kr7Var);
        c.incrementAndGet(this);
        return null;
    }

    public final int c() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int d() {
        return this.lastScheduledTask != null ? c() + 1 : c();
    }

    public final kr7 e() {
        kr7 kr7Var = (kr7) b.getAndSet(this, null);
        return kr7Var != null ? kr7Var : f();
    }

    public final kr7 f() {
        kr7 andSet;
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                return null;
            }
            int i2 = i & 127;
            if (d.compareAndSet(this, i, i + 1) && (andSet = this.a.getAndSet(i2, null)) != null) {
                if (andSet.f.i() == 1) {
                    e.decrementAndGet(this);
                    boolean z = fp7.a;
                }
                return andSet;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        return h(r9, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long g(defpackage.pr7 r9) {
        /*
            r8 = this;
            boolean r0 = defpackage.fp7.a
            int r0 = r9.consumerIndex
            int r1 = r9.producerIndex
            java.util.concurrent.atomic.AtomicReferenceArray<kr7> r2 = r9.a
        L8:
            r3 = 1
            if (r0 == r1) goto L3c
            r4 = r0 & 127(0x7f, float:1.78E-43)
            int r5 = r9.blockingTasksInBuffer
            if (r5 != 0) goto L12
            goto L3c
        L12:
            java.lang.Object r5 = r2.get(r4)
            kr7 r5 = (defpackage.kr7) r5
            if (r5 == 0) goto L39
            lr7 r6 = r5.f
            int r6 = r6.i()
            r7 = 0
            if (r6 != r3) goto L24
            goto L25
        L24:
            r3 = 0
        L25:
            if (r3 == 0) goto L39
            r3 = 0
            boolean r3 = r2.compareAndSet(r4, r5, r3)
            if (r3 == 0) goto L39
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.pr7.e
            r0.decrementAndGet(r9)
            r8.a(r5, r7)
            r0 = -1
            return r0
        L39:
            int r0 = r0 + 1
            goto L8
        L3c:
            long r0 = r8.h(r9, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pr7.g(pr7):long");
    }

    public final long h(pr7 pr7Var, boolean z) {
        kr7 kr7Var;
        do {
            kr7Var = (kr7) pr7Var.lastScheduledTask;
            if (kr7Var == null) {
                return -2L;
            }
            if (z) {
                if (!(kr7Var.f.i() == 1)) {
                    return -2L;
                }
            }
            long jA = nr7.e.a() - kr7Var.e;
            long j = nr7.a;
            if (jA < j) {
                return j - jA;
            }
        } while (!b.compareAndSet(pr7Var, kr7Var, null));
        a(kr7Var, false);
        return -1L;
    }
}
