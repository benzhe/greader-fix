package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.zm7;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class dr7 implements Executor, Closeable {
    private volatile int _isTerminated;
    public volatile long controlState;
    public final gr7 e;
    public final gr7 f;
    public final AtomicReferenceArray<a> g;
    public final int h;
    public final int i;
    public final long j;
    public final String k;
    private volatile long parkedWorkersStack;
    public static final yq7 o = new yq7("NOT_IN_STACK");
    public static final AtomicLongFieldUpdater l = AtomicLongFieldUpdater.newUpdater(dr7.class, "parkedWorkersStack");
    public static final AtomicLongFieldUpdater m = AtomicLongFieldUpdater.newUpdater(dr7.class, "controlState");
    public static final AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(dr7.class, "_isTerminated");

    public final class a extends Thread {
        public static final AtomicIntegerFieldUpdater l = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");
        public final pr7 e;
        public b f;
        public long g;
        public long h;
        public int i;
        public volatile int indexInArray;
        public boolean j;
        public volatile Object nextParkedWorker;
        public volatile int workerCtl;

        public a(int i) {
            setDaemon(true);
            this.e = new pr7();
            this.f = b.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = dr7.o;
            zm7.a aVar = zm7.b;
            this.i = zm7.a.a();
            d(i);
        }

        public final kr7 a(boolean z) {
            boolean z2;
            kr7 kr7VarD;
            kr7 kr7VarC;
            kr7 kr7VarC2;
            boolean z3;
            b bVar = b.CPU_ACQUIRED;
            if (this.f == bVar) {
                z2 = true;
            } else {
                dr7 dr7Var = dr7.this;
                while (true) {
                    long j = dr7Var.controlState;
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        z3 = false;
                        break;
                    }
                    if (dr7.m.compareAndSet(dr7Var, j, j - 4398046511104L)) {
                        z3 = true;
                        break;
                    }
                }
                if (z3) {
                    this.f = bVar;
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (!z2) {
                if (!z || (kr7VarD = this.e.e()) == null) {
                    kr7VarD = dr7.this.f.d();
                }
                return kr7VarD != null ? kr7VarD : f(true);
            }
            if (z) {
                boolean z4 = b(dr7.this.h * 2) == 0;
                if (z4 && (kr7VarC2 = c()) != null) {
                    return kr7VarC2;
                }
                kr7 kr7VarE = this.e.e();
                if (kr7VarE != null) {
                    return kr7VarE;
                }
                if (!z4 && (kr7VarC = c()) != null) {
                    return kr7VarC;
                }
            } else {
                kr7 kr7VarC3 = c();
                if (kr7VarC3 != null) {
                    return kr7VarC3;
                }
            }
            return f(false);
        }

        public final int b(int i) {
            int i2 = this.i;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.i = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        public final kr7 c() {
            if (b(2) == 0) {
                kr7 kr7VarD = dr7.this.e.d();
                return kr7VarD != null ? kr7VarD : dr7.this.f.d();
            }
            kr7 kr7VarD2 = dr7.this.f.d();
            return kr7VarD2 != null ? kr7VarD2 : dr7.this.e.d();
        }

        public final void d(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(dr7.this.k);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final boolean e(b bVar) {
            b bVar2 = this.f;
            boolean z = bVar2 == b.CPU_ACQUIRED;
            if (z) {
                dr7.m.addAndGet(dr7.this, 4398046511104L);
            }
            if (bVar2 != bVar) {
                this.f = bVar;
            }
            return z;
        }

        public final kr7 f(boolean z) {
            long jH;
            long jG;
            boolean z2 = fp7.a;
            int i = (int) (dr7.this.controlState & 2097151);
            if (i < 2) {
                return null;
            }
            int iB = b(i);
            long jMin = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                iB++;
                if (iB > i) {
                    iB = 1;
                }
                a aVar = dr7.this.g.get(iB);
                if (aVar != null && aVar != this) {
                    boolean z3 = fp7.a;
                    if (z) {
                        jG = this.e.g(aVar.e);
                    } else {
                        pr7 pr7Var = this.e;
                        pr7 pr7Var2 = aVar.e;
                        Objects.requireNonNull(pr7Var);
                        kr7 kr7VarF = pr7Var2.f();
                        if (kr7VarF != null) {
                            pr7Var.a(kr7VarF, false);
                            jH = -1;
                        } else {
                            jH = pr7Var.h(pr7Var2, false);
                        }
                        jG = jH;
                    }
                    if (jG == -1) {
                        return this.e.e();
                    }
                    if (jG > 0) {
                        jMin = Math.min(jMin, jG);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.h = jMin;
            return null;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b bVar = b.PARKING;
            b bVar2 = b.TERMINATED;
            loop0: while (true) {
                boolean z = false;
                while (!dr7.this.isTerminated() && this.f != bVar2) {
                    kr7 kr7VarA = a(this.j);
                    if (kr7VarA != null) {
                        this.h = 0L;
                        b bVar3 = b.BLOCKING;
                        int i = kr7VarA.f.i();
                        this.g = 0L;
                        if (this.f == bVar) {
                            boolean z2 = fp7.a;
                            this.f = bVar3;
                        }
                        if (i != 0 && e(bVar3)) {
                            dr7.this.m();
                        }
                        dr7.this.k(kr7VarA);
                        if (i != 0) {
                            dr7.m.addAndGet(dr7.this, -2097152L);
                            if (this.f != bVar2) {
                                boolean z3 = fp7.a;
                                this.f = b.DORMANT;
                            }
                        }
                    } else {
                        this.j = false;
                        if (this.h == 0) {
                            if (this.nextParkedWorker != dr7.o) {
                                boolean z4 = fp7.a;
                                this.workerCtl = -1;
                                while (true) {
                                    if (!(this.nextParkedWorker != dr7.o) || dr7.this.isTerminated() || this.f == bVar2) {
                                        break;
                                    }
                                    e(bVar);
                                    Thread.interrupted();
                                    if (this.g == 0) {
                                        this.g = System.nanoTime() + dr7.this.j;
                                    }
                                    LockSupport.parkNanos(dr7.this.j);
                                    if (System.nanoTime() - this.g >= 0) {
                                        this.g = 0L;
                                        synchronized (dr7.this.g) {
                                            if (!dr7.this.isTerminated()) {
                                                if (((int) (dr7.this.controlState & 2097151)) > dr7.this.h) {
                                                    if (l.compareAndSet(this, -1, 1)) {
                                                        int i2 = this.indexInArray;
                                                        d(0);
                                                        dr7.this.i(this, i2, 0);
                                                        int andDecrement = (int) (dr7.m.getAndDecrement(dr7.this) & 2097151);
                                                        if (andDecrement != i2) {
                                                            a aVar = dr7.this.g.get(andDecrement);
                                                            im7.c(aVar);
                                                            a aVar2 = aVar;
                                                            dr7.this.g.set(i2, aVar2);
                                                            aVar2.d(i2);
                                                            dr7.this.i(aVar2, andDecrement, i2);
                                                        }
                                                        dr7.this.g.set(andDecrement, null);
                                                        this.f = bVar2;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                dr7.this.g(this);
                            }
                        } else if (z) {
                            e(bVar);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.h);
                            this.h = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
                break loop0;
            }
            e(bVar2);
        }
    }

    public enum b {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public dr7(int i, int i2, long j, String str) {
        this.h = i;
        this.i = i2;
        this.j = j;
        this.k = str;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(jo.h("Core pool size ", i, " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(jo.i("Max pool size ", i2, " should be greater than or equals to core pool size ", i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(jo.h("Max pool size ", i2, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.e = new gr7();
        this.f = new gr7();
        this.parkedWorkersStack = 0L;
        this.g = new AtomicReferenceArray<>(i2 + 1);
        this.controlState = i << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.g) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j = this.controlState;
            int i = (int) (j & 2097151);
            int i2 = i - ((int) ((j & 4398044413952L) >> 21));
            if (i2 < 0) {
                i2 = 0;
            }
            if (i2 >= this.h) {
                return 0;
            }
            if (i >= this.i) {
                return 0;
            }
            int i3 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i3 > 0 && this.g.get(i3) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            a aVar = new a(i3);
            this.g.set(i3, aVar);
            if (!(i3 == ((int) (2097151 & m.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            aVar.start();
            return i2 + 1;
        }
    }

    public final kr7 b(Runnable runnable, lr7 lr7Var) {
        long jA = nr7.e.a();
        if (!(runnable instanceof kr7)) {
            return new mr7(runnable, jA, lr7Var);
        }
        kr7 kr7Var = (kr7) runnable;
        kr7Var.e = jA;
        kr7Var.f = lr7Var;
        return kr7Var;
    }

    public final a c() {
        Thread threadCurrentThread = Thread.currentThread();
        if (!(threadCurrentThread instanceof a)) {
            threadCurrentThread = null;
        }
        a aVar = (a) threadCurrentThread;
        if (aVar == null || !im7.a(dr7.this, this)) {
            return null;
        }
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws java.lang.InterruptedException {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.dr7.n
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r9, r1, r2)
            if (r0 != 0) goto Lc
            goto La0
        Lc:
            dr7$a r0 = r9.c()
            java.util.concurrent.atomic.AtomicReferenceArray<dr7$a> r3 = r9.g
            monitor-enter(r3)
            long r4 = r9.controlState     // Catch: java.lang.Throwable -> La1
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r5 = (int) r4
            monitor-exit(r3)
            if (r2 > r5) goto L65
            r3 = 1
        L1e:
            java.util.concurrent.atomic.AtomicReferenceArray<dr7$a> r4 = r9.g
            java.lang.Object r4 = r4.get(r3)
            defpackage.im7.c(r4)
            dr7$a r4 = (dr7.a) r4
            if (r4 == r0) goto L60
        L2b:
            boolean r6 = r4.isAlive()
            if (r6 == 0) goto L3a
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r6 = 10000(0x2710, double:4.9407E-320)
            r4.join(r6)
            goto L2b
        L3a:
            boolean r6 = defpackage.fp7.a
            pr7 r4 = r4.e
            gr7 r6 = r9.f
            java.util.Objects.requireNonNull(r4)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = defpackage.pr7.b
            r8 = 0
            java.lang.Object r7 = r7.getAndSet(r4, r8)
            kr7 r7 = (defpackage.kr7) r7
            if (r7 == 0) goto L51
            r6.a(r7)
        L51:
            kr7 r7 = r4.f()
            if (r7 == 0) goto L5c
            r6.a(r7)
            r7 = 1
            goto L5d
        L5c:
            r7 = 0
        L5d:
            if (r7 == 0) goto L60
            goto L51
        L60:
            if (r3 == r5) goto L65
            int r3 = r3 + 1
            goto L1e
        L65:
            gr7 r1 = r9.f
            r1.b()
            gr7 r1 = r9.e
            r1.b()
        L6f:
            if (r0 == 0) goto L78
            kr7 r1 = r0.a(r2)
            if (r1 == 0) goto L78
            goto L80
        L78:
            gr7 r1 = r9.e
            java.lang.Object r1 = r1.d()
            kr7 r1 = (defpackage.kr7) r1
        L80:
            if (r1 == 0) goto L83
            goto L8b
        L83:
            gr7 r1 = r9.f
            java.lang.Object r1 = r1.d()
            kr7 r1 = (defpackage.kr7) r1
        L8b:
            if (r1 == 0) goto L91
            r9.k(r1)
            goto L6f
        L91:
            if (r0 == 0) goto L98
            dr7$b r1 = dr7.b.TERMINATED
            r0.e(r1)
        L98:
            boolean r0 = defpackage.fp7.a
            r0 = 0
            r9.parkedWorkersStack = r0
            r9.controlState = r0
        La0:
            return
        La1:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dr7.close():void");
    }

    public final void e(Runnable runnable, lr7 lr7Var, boolean z) {
        kr7 kr7VarA;
        kr7 kr7VarB = b(runnable, lr7Var);
        a aVarC = c();
        if (aVarC == null || aVarC.f == b.TERMINATED || (kr7VarB.f.i() == 0 && aVarC.f == b.BLOCKING)) {
            kr7VarA = kr7VarB;
        } else {
            aVarC.j = true;
            kr7VarA = aVarC.e.a(kr7VarB, z);
        }
        if (kr7VarA != null) {
            if (!(kr7VarA.f.i() == 1 ? this.f.a(kr7VarA) : this.e.a(kr7VarA))) {
                throw new RejectedExecutionException(jo.s(new StringBuilder(), this.k, " was terminated"));
            }
        }
        boolean z2 = z && aVarC != null;
        if (kr7VarB.f.i() == 0) {
            if (z2) {
                return;
            }
            m();
        } else {
            long jAddAndGet = m.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
            if (z2 || q() || n(jAddAndGet)) {
                return;
            }
            q();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        e(runnable, jr7.e, false);
    }

    public final int f(a aVar) {
        Object obj = aVar.nextParkedWorker;
        while (obj != o) {
            if (obj == null) {
                return 0;
            }
            a aVar2 = (a) obj;
            int i = aVar2.indexInArray;
            if (i != 0) {
                return i;
            }
            obj = aVar2.nextParkedWorker;
        }
        return -1;
    }

    public final boolean g(a aVar) {
        long j;
        long j2;
        int i;
        if (aVar.nextParkedWorker != o) {
            return false;
        }
        do {
            j = this.parkedWorkersStack;
            j2 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152);
            i = aVar.indexInArray;
            boolean z = fp7.a;
            aVar.nextParkedWorker = this.g.get((int) (2097151 & j));
        } while (!l.compareAndSet(this, j, j2 | i));
        return true;
    }

    public final void i(a aVar, int i, int i2) {
        while (true) {
            long j = this.parkedWorkersStack;
            int iF = (int) (2097151 & j);
            long j2 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152);
            if (iF == i) {
                iF = i2 == 0 ? f(aVar) : i2;
            }
            if (iF >= 0 && l.compareAndSet(this, j, j2 | iF)) {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final void k(kr7 kr7Var) {
        try {
            kr7Var.run();
        } finally {
        }
    }

    public final void m() {
        if (q() || n(this.controlState)) {
            return;
        }
        q();
    }

    public final boolean n(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        if (i < this.h) {
            int iA = a();
            if (iA == 1 && this.h > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean q() {
        while (true) {
            long j = this.parkedWorkersStack;
            a aVar = this.g.get((int) (2097151 & j));
            if (aVar != null) {
                long j2 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152);
                int iF = f(aVar);
                if (iF >= 0 && l.compareAndSet(this, j, iF | j2)) {
                    aVar.nextParkedWorker = o;
                }
            } else {
                aVar = null;
            }
            if (aVar == null) {
                return false;
            }
            if (a.l.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int length = this.g.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < length; i6++) {
            a aVar = this.g.get(i6);
            if (aVar != null) {
                int iD = aVar.e.d();
                int iOrdinal = aVar.f.ordinal();
                if (iOrdinal == 0) {
                    i++;
                    arrayList.add(String.valueOf(iD) + "c");
                } else if (iOrdinal == 1) {
                    i2++;
                    arrayList.add(String.valueOf(iD) + "b");
                } else if (iOrdinal == 2) {
                    i3++;
                } else if (iOrdinal == 3) {
                    i4++;
                    if (iD > 0) {
                        arrayList.add(String.valueOf(iD) + "d");
                    }
                } else if (iOrdinal == 4) {
                    i5++;
                }
            }
        }
        long j = this.controlState;
        return this.k + '@' + n56.L0(this) + "[Pool Size {core = " + this.h + ", max = " + this.i + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.e.c() + ", global blocking queue size = " + this.f.c() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.h - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }
}
