package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class cd7 extends AtomicReference<ic7> implements ic7 {
    public boolean a() {
        return yc7.l(get());
    }

    public boolean b(ic7 ic7Var) {
        ic7 ic7Var2;
        do {
            ic7Var2 = get();
            if (ic7Var2 == yc7.DISPOSED) {
                if (ic7Var != null) {
                    ic7Var.k();
                }
                return false;
            }
        } while (!compareAndSet(ic7Var2, ic7Var));
        if (ic7Var2 != null) {
            ic7Var2.k();
        }
        return true;
    }

    @Override // defpackage.ic7
    public void k() {
        yc7.i(this);
    }
}
