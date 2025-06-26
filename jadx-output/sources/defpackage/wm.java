package defpackage;

import defpackage.um;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wm<V> extends um<V> {
    public boolean j(V v) {
        if (v == null) {
            v = (V) um.k;
        }
        if (!um.j.b(this, null, v)) {
            return false;
        }
        um.b(this);
        return true;
    }

    public boolean k(Throwable th) {
        Objects.requireNonNull(th);
        if (!um.j.b(this, null, new um.d(th))) {
            return false;
        }
        um.b(this);
        return true;
    }

    public boolean l(ie5<? extends V> ie5Var) {
        um.d dVar;
        Objects.requireNonNull(ie5Var);
        Object obj = this.e;
        if (obj == null) {
            if (ie5Var.isDone()) {
                if (!um.j.b(this, null, um.e(ie5Var))) {
                    return false;
                }
                um.b(this);
            } else {
                um.g gVar = new um.g(this, ie5Var);
                if (um.j.b(this, null, gVar)) {
                    try {
                        ie5Var.i(gVar, vm.INSTANCE);
                    } catch (Throwable th) {
                        try {
                            dVar = new um.d(th);
                        } catch (Throwable unused) {
                            dVar = um.d.b;
                        }
                        um.j.b(this, gVar, dVar);
                    }
                } else {
                    obj = this.e;
                }
            }
            return true;
        }
        if (!(obj instanceof um.c)) {
            return false;
        }
        ie5Var.cancel(((um.c) obj).a);
        return false;
    }
}
