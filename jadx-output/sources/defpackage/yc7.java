package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public enum yc7 implements ic7 {
    DISPOSED;

    public static boolean i(AtomicReference<ic7> atomicReference) {
        ic7 andSet;
        ic7 ic7Var = atomicReference.get();
        yc7 yc7Var = DISPOSED;
        if (ic7Var == yc7Var || (andSet = atomicReference.getAndSet(yc7Var)) == yc7Var) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.k();
        return true;
    }

    public static boolean l(ic7 ic7Var) {
        return ic7Var == DISPOSED;
    }

    public static boolean t(AtomicReference<ic7> atomicReference, ic7 ic7Var) {
        ic7 ic7Var2;
        do {
            ic7Var2 = atomicReference.get();
            if (ic7Var2 == DISPOSED) {
                if (ic7Var == null) {
                    return false;
                }
                ic7Var.k();
                return false;
            }
        } while (!atomicReference.compareAndSet(ic7Var2, ic7Var));
        return true;
    }

    public static boolean w(AtomicReference<ic7> atomicReference, ic7 ic7Var) {
        Objects.requireNonNull(ic7Var, "d is null");
        if (atomicReference.compareAndSet(null, ic7Var)) {
            return true;
        }
        ic7Var.k();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        n56.z1(new nc7("Disposable already set!"));
        return false;
    }

    public static boolean x(ic7 ic7Var, ic7 ic7Var2) {
        if (ic7Var2 == null) {
            n56.z1(new NullPointerException("next is null"));
            return false;
        }
        if (ic7Var == null) {
            return true;
        }
        ic7Var2.k();
        n56.z1(new nc7("Disposable already set!"));
        return false;
    }

    @Override // defpackage.ic7
    public void k() {
    }
}
