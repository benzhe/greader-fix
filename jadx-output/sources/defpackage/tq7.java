package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class tq7<E> {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(tq7.class, Object.class, "_cur");
    private volatile Object _cur;

    public tq7(boolean z) {
        this._cur = new uq7(8, z);
    }

    public final boolean a(E e) {
        while (true) {
            uq7 uq7Var = (uq7) this._cur;
            int iA = uq7Var.a(e);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                a.compareAndSet(this, uq7Var, uq7Var.e());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            uq7 uq7Var = (uq7) this._cur;
            if (uq7Var.b()) {
                return;
            } else {
                a.compareAndSet(this, uq7Var, uq7Var.e());
            }
        }
    }

    public final int c() {
        return ((uq7) this._cur).c();
    }

    public final E d() {
        while (true) {
            uq7 uq7Var = (uq7) this._cur;
            E e = (E) uq7Var.f();
            if (e != uq7.g) {
                return e;
            }
            a.compareAndSet(this, uq7Var, uq7Var.e());
        }
    }
}
