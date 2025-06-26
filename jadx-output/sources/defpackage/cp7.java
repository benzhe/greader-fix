package defpackage;

import defpackage.qk7;
import defpackage.rk7;

/* loaded from: classes2.dex */
public abstract class cp7 extends nk7 implements qk7 {
    public static final a f = new a(null);

    public static final class a extends ok7<qk7, cp7> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(gm7 gm7Var) {
            super(qk7.a.a, bp7.e);
            int i = qk7.b;
        }
    }

    public cp7() {
        super(qk7.a.a);
    }

    @Override // defpackage.qk7
    public void a(pk7<?> pk7Var) {
        po7<?> po7VarH = ((hp7) pk7Var).h();
        if (po7VarH != null) {
            lp7 lp7Var = (lp7) po7VarH._parentHandle;
            if (lp7Var != null) {
                lp7Var.k();
            }
            po7VarH._parentHandle = fq7.e;
        }
    }

    @Override // defpackage.qk7
    public final <T> pk7<T> b(pk7<? super T> pk7Var) {
        return new hp7(this, pk7Var);
    }

    @Override // defpackage.nk7, defpackage.rk7
    public <E extends rk7.a> E c(rk7.b<E> bVar) {
        im7.e(bVar, "key");
        if (!(bVar instanceof ok7)) {
            if (qk7.a.a == bVar) {
                return this;
            }
            return null;
        }
        ok7 ok7Var = (ok7) bVar;
        rk7.b<?> key = getKey();
        im7.e(key, "key");
        if (!(key == ok7Var || ok7Var.a == key)) {
            return null;
        }
        im7.e(this, "element");
        E e = (E) ok7Var.b.invoke(this);
        if (e instanceof rk7.a) {
            return e;
        }
        return null;
    }

    public abstract void t(rk7 rk7Var, Runnable runnable);

    public String toString() {
        return getClass().getSimpleName() + '@' + n56.L0(this);
    }

    public boolean w(rk7 rk7Var) {
        return true;
    }
}
