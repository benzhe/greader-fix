package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public enum pi7 implements y38 {
    CANCELLED;

    public static boolean C(y38 y38Var, y38 y38Var2) {
        if (y38Var2 == null) {
            n56.z1(new NullPointerException("next is null"));
            return false;
        }
        if (y38Var == null) {
            return true;
        }
        y38Var2.cancel();
        n56.z1(new nc7("Subscription already set!"));
        return false;
    }

    public static boolean i(AtomicReference<y38> atomicReference) {
        y38 andSet;
        y38 y38Var = atomicReference.get();
        pi7 pi7Var = CANCELLED;
        if (y38Var == pi7Var || (andSet = atomicReference.getAndSet(pi7Var)) == pi7Var) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static void k(AtomicReference<y38> atomicReference, AtomicLong atomicLong, long j) {
        y38 y38Var = atomicReference.get();
        if (y38Var != null) {
            y38Var.l(j);
            return;
        }
        if (y(j)) {
            n56.e(atomicLong, j);
            y38 y38Var2 = atomicReference.get();
            if (y38Var2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    y38Var2.l(andSet);
                }
            }
        }
    }

    public static boolean t(AtomicReference<y38> atomicReference, AtomicLong atomicLong, y38 y38Var) {
        if (!x(atomicReference, y38Var)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        y38Var.l(andSet);
        return true;
    }

    public static void w(long j) {
        n56.z1(new nc7(jo.j("More produced than requested: ", j)));
    }

    public static boolean x(AtomicReference<y38> atomicReference, y38 y38Var) {
        Objects.requireNonNull(y38Var, "s is null");
        if (atomicReference.compareAndSet(null, y38Var)) {
            return true;
        }
        y38Var.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        n56.z1(new nc7("Subscription already set!"));
        return false;
    }

    public static boolean y(long j) {
        if (j > 0) {
            return true;
        }
        n56.z1(new IllegalArgumentException(jo.j("n > 0 required but it was ", j)));
        return false;
    }

    @Override // defpackage.y38
    public void cancel() {
    }

    @Override // defpackage.y38
    public void l(long j) {
    }
}
