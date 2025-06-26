package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public abstract class op7 extends pp7 {
    public static final AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(op7.class, Object.class, "_queue");
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(op7.class, Object.class, "_delayed");
    private volatile Object _queue = null;
    private volatile Object _delayed = null;
    public volatile int _isCompleted = 0;

    public static abstract class a implements Runnable, Comparable<a>, lp7, br7 {
        public Object e;
        public int f;
        public long g;

        @Override // java.lang.Comparable
        public int compareTo(a aVar) {
            long j = this.g - aVar.g;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        @Override // defpackage.br7
        public void i(int i) {
            this.f = i;
        }

        @Override // defpackage.lp7
        public final synchronized void k() {
            Object obj = this.e;
            yq7 yq7Var = qp7.a;
            if (obj == yq7Var) {
                return;
            }
            if (!(obj instanceof b)) {
                obj = null;
            }
            b bVar = (b) obj;
            if (bVar != null) {
                synchronized (bVar) {
                    if (t() != null) {
                        int iW = w();
                        boolean z = fp7.a;
                        bVar.c(iW);
                    }
                }
            }
            this.e = yq7Var;
        }

        @Override // defpackage.br7
        public void l(ar7<?> ar7Var) {
            if (!(this.e != qp7.a)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this.e = ar7Var;
        }

        @Override // defpackage.br7
        public ar7<?> t() {
            Object obj = this.e;
            if (!(obj instanceof ar7)) {
                obj = null;
            }
            return (ar7) obj;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Delayed[nanos=");
            sbZ.append(this.g);
            sbZ.append(']');
            return sbZ.toString();
        }

        @Override // defpackage.br7
        public int w() {
            return this.f;
        }
    }

    public static final class b extends ar7<a> {
        public long b;

        public b(long j) {
            this.b = j;
        }
    }

    public final void Z(Runnable runnable) {
        if (!a0(runnable)) {
            gp7.m.Z(runnable);
            return;
        }
        Thread threadQ = Q();
        if (Thread.currentThread() != threadQ) {
            LockSupport.unpark(threadQ);
        }
    }

    public final boolean a0(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            if (this._isCompleted != 0) {
                return false;
            }
            if (obj == null) {
                if (j.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof uq7) {
                uq7 uq7Var = (uq7) obj;
                int iA = uq7Var.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    j.compareAndSet(this, obj, uq7Var.e());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == qp7.b) {
                    return false;
                }
                uq7 uq7Var2 = new uq7(8, true);
                uq7Var2.a((Runnable) obj);
                uq7Var2.a(runnable);
                if (j.compareAndSet(this, obj, uq7Var2)) {
                    return true;
                }
            }
        }
    }

    public boolean d0() {
        lq7<jp7<?>> lq7Var = this.i;
        if (!(lq7Var == null || lq7Var.b == lq7Var.c)) {
            return false;
        }
        b bVar = (b) this._delayed;
        if (bVar != null) {
            if (!(bVar._size == 0)) {
                return false;
            }
        }
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        return obj instanceof uq7 ? ((uq7) obj).d() : obj == qp7.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long g0() {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.op7.g0():long");
    }

    public final void h0() {
        this._queue = null;
        this._delayed = null;
    }

    public final void j0(long j2, a aVar) {
        char c;
        Thread threadQ;
        a aVarB;
        a aVar2 = null;
        if (this._isCompleted == 0) {
            b bVar = (b) this._delayed;
            if (bVar == null) {
                k.compareAndSet(this, null, new b(j2));
                Object obj = this._delayed;
                im7.c(obj);
                bVar = (b) obj;
            }
            synchronized (aVar) {
                if (aVar.e == qp7.a) {
                    c = 2;
                } else {
                    synchronized (bVar) {
                        a aVarB2 = bVar.b();
                        if (this._isCompleted != 0) {
                            c = 1;
                        } else {
                            if (aVarB2 == null) {
                                bVar.b = j2;
                            } else {
                                long j3 = aVarB2.g;
                                if (j3 - j2 >= 0) {
                                    j3 = j2;
                                }
                                if (j3 - bVar.b > 0) {
                                    bVar.b = j3;
                                }
                            }
                            long j4 = aVar.g;
                            long j5 = bVar.b;
                            if (j4 - j5 < 0) {
                                aVar.g = j5;
                            }
                            bVar.a(aVar);
                            c = 0;
                        }
                    }
                }
            }
        } else {
            c = 1;
        }
        if (c != 0) {
            if (c == 1) {
                S(j2, aVar);
                return;
            } else {
                if (c != 2) {
                    throw new IllegalStateException("unexpected result".toString());
                }
                return;
            }
        }
        b bVar2 = (b) this._delayed;
        if (bVar2 != null) {
            synchronized (bVar2) {
                aVarB = bVar2.b();
            }
            aVar2 = aVarB;
        }
        if (!(aVar2 == aVar) || Thread.currentThread() == (threadQ = Q())) {
            return;
        }
        LockSupport.unpark(threadQ);
    }

    @Override // defpackage.np7
    public void shutdown() {
        a aVarC;
        iq7 iq7Var = iq7.b;
        iq7.a.set(null);
        this._isCompleted = 1;
        boolean z = fp7.a;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                if (j.compareAndSet(this, null, qp7.b)) {
                    break;
                }
            } else if (obj instanceof uq7) {
                ((uq7) obj).b();
                break;
            } else {
                if (obj == qp7.b) {
                    break;
                }
                uq7 uq7Var = new uq7(8, true);
                uq7Var.a((Runnable) obj);
                if (j.compareAndSet(this, obj, uq7Var)) {
                    break;
                }
            }
        }
        while (g0() <= 0) {
        }
        long jNanoTime = System.nanoTime();
        while (true) {
            b bVar = (b) this._delayed;
            if (bVar == null) {
                return;
            }
            synchronized (bVar) {
                aVarC = bVar._size > 0 ? bVar.c(0) : null;
            }
            a aVar = aVarC;
            if (aVar == null) {
                return;
            }
            boolean z2 = fp7.a;
            gp7.m.j0(jNanoTime, aVar);
        }
    }

    @Override // defpackage.cp7
    public final void t(rk7 rk7Var, Runnable runnable) {
        Z(runnable);
    }
}
