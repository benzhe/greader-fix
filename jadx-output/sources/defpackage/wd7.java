package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class wd7 extends hb7 {
    public final kb7 a;

    public static final class a extends AtomicReference<ic7> implements ib7, ic7 {
        public final jb7 e;

        public a(jb7 jb7Var) {
            this.e = jb7Var;
        }

        public void a(Throwable th) {
            boolean z;
            ic7 andSet;
            ic7 ic7Var = get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = getAndSet(yc7Var)) == yc7Var) {
                z = false;
            } else {
                try {
                    this.e.b(th);
                    z = true;
                } finally {
                    if (andSet != null) {
                        andSet.k();
                    }
                }
            }
            if (z) {
                return;
            }
            n56.z1(th);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public wd7(kb7 kb7Var) {
        this.a = kb7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        a aVar = new a(jb7Var);
        jb7Var.c(aVar);
        try {
            this.a.a(aVar);
        } catch (Throwable th) {
            n56.r2(th);
            aVar.a(th);
        }
    }
}
