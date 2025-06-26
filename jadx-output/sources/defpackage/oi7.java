package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class oi7 extends AtomicInteger implements y38 {
    public y38 e;
    public long f;
    public final AtomicReference<y38> g = new AtomicReference<>();
    public final AtomicLong h = new AtomicLong();
    public final AtomicLong i = new AtomicLong();
    public final boolean j;
    public volatile boolean k;
    public boolean l;

    public oi7(boolean z) {
        this.j = z;
    }

    public final void c() {
        if (getAndIncrement() != 0) {
            return;
        }
        g();
    }

    public void cancel() {
        if (this.k) {
            return;
        }
        this.k = true;
        c();
    }

    public final void g() {
        int iAddAndGet = 1;
        y38 y38Var = null;
        long jH = 0;
        do {
            y38 andSet = this.g.get();
            if (andSet != null) {
                andSet = this.g.getAndSet(null);
            }
            long andSet2 = this.h.get();
            if (andSet2 != 0) {
                andSet2 = this.h.getAndSet(0L);
            }
            long andSet3 = this.i.get();
            if (andSet3 != 0) {
                andSet3 = this.i.getAndSet(0L);
            }
            y38 y38Var2 = this.e;
            if (this.k) {
                if (y38Var2 != null) {
                    y38Var2.cancel();
                    this.e = null;
                }
                if (andSet != null) {
                    andSet.cancel();
                }
            } else {
                long jH2 = this.f;
                if (jH2 != Long.MAX_VALUE) {
                    jH2 = n56.h(jH2, andSet2);
                    if (jH2 != Long.MAX_VALUE) {
                        jH2 -= andSet3;
                        if (jH2 < 0) {
                            pi7.w(jH2);
                            jH2 = 0;
                        }
                    }
                    this.f = jH2;
                }
                if (andSet != null) {
                    if (y38Var2 != null && this.j) {
                        y38Var2.cancel();
                    }
                    this.e = andSet;
                    if (jH2 != 0) {
                        jH = n56.h(jH, jH2);
                        y38Var = andSet;
                    }
                } else if (y38Var2 != null && andSet2 != 0) {
                    jH = n56.h(jH, andSet2);
                    y38Var = y38Var2;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jH != 0) {
            y38Var.l(jH);
        }
    }

    public final void h(long j) {
        if (this.l) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            n56.e(this.i, j);
            c();
            return;
        }
        long j2 = this.f;
        if (j2 != Long.MAX_VALUE) {
            long j3 = j2 - j;
            if (j3 < 0) {
                pi7.w(j3);
                j3 = 0;
            }
            this.f = j3;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        g();
    }

    public final void i(y38 y38Var) {
        if (this.k) {
            y38Var.cancel();
            return;
        }
        Objects.requireNonNull(y38Var, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            y38 andSet = this.g.getAndSet(y38Var);
            if (andSet != null && this.j) {
                andSet.cancel();
            }
            c();
            return;
        }
        y38 y38Var2 = this.e;
        if (y38Var2 != null && this.j) {
            y38Var2.cancel();
        }
        this.e = y38Var;
        long j = this.f;
        if (decrementAndGet() != 0) {
            g();
        }
        if (j != 0) {
            y38Var.l(j);
        }
    }

    @Override // defpackage.y38
    public final void l(long j) {
        if (!pi7.y(j) || this.l) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            n56.e(this.h, j);
            c();
            return;
        }
        long j2 = this.f;
        if (j2 != Long.MAX_VALUE) {
            long jH = n56.h(j2, j);
            this.f = jH;
            if (jH == Long.MAX_VALUE) {
                this.l = true;
            }
        }
        y38 y38Var = this.e;
        if (decrementAndGet() != 0) {
            g();
        }
        if (y38Var != null) {
            y38Var.l(j);
        }
    }
}
