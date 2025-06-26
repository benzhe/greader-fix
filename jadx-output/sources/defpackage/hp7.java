package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class hp7<T> extends jp7<T> implements wk7, pk7<T> {
    public static final AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(hp7.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;
    public Object h;
    public final wk7 i;
    public final Object j;
    public final cp7 k;
    public final pk7<T> l;

    /* JADX WARN: Multi-variable type inference failed */
    public hp7(cp7 cp7Var, pk7<? super T> pk7Var) {
        super(0);
        this.k = cp7Var;
        this.l = pk7Var;
        this.h = ip7.a;
        this.i = pk7Var instanceof wk7 ? pk7Var : (pk7<? super T>) null;
        Object objM = getContext().m(0, k.b);
        im7.c(objM);
        this.j = objM;
        this._reusableCancellableContinuation = null;
    }

    @Override // defpackage.jp7
    public pk7<T> c() {
        return this;
    }

    @Override // defpackage.jp7
    public Object f() {
        Object obj = this.h;
        boolean z = fp7.a;
        this.h = ip7.a;
        return obj;
    }

    public final Throwable g(oo7<?> oo7Var) {
        yq7 yq7Var;
        do {
            Object obj = this._reusableCancellableContinuation;
            yq7Var = ip7.b;
            if (obj != yq7Var) {
                if (obj == null) {
                    return null;
                }
                if (obj instanceof Throwable) {
                    if (m.compareAndSet(this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!m.compareAndSet(this, yq7Var, oo7Var));
        return null;
    }

    @Override // defpackage.wk7
    public wk7 getCallerFrame() {
        return this.i;
    }

    @Override // defpackage.pk7
    public rk7 getContext() {
        return this.l.getContext();
    }

    @Override // defpackage.wk7
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final po7<?> h() {
        Object obj = this._reusableCancellableContinuation;
        if (!(obj instanceof po7)) {
            obj = null;
        }
        return (po7) obj;
    }

    public final boolean i(po7<?> po7Var) {
        Object obj = this._reusableCancellableContinuation;
        if (obj != null) {
            return !(obj instanceof po7) || obj == po7Var;
        }
        return false;
    }

    public final boolean j(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            yq7 yq7Var = ip7.b;
            if (im7.a(obj, yq7Var)) {
                if (m.compareAndSet(this, yq7Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (m.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // defpackage.pk7
    public void resumeWith(Object obj) {
        rk7 context = this.l.getContext();
        Throwable thA = sj7.a(obj);
        Object uo7Var = thA == null ? obj : new uo7(thA, false, 2);
        if (this.k.w(context)) {
            this.h = uo7Var;
            this.g = 0;
            this.k.t(context, this);
            return;
        }
        iq7 iq7Var = iq7.b;
        np7 np7VarA = iq7.a();
        if (np7VarA.I()) {
            this.h = uo7Var;
            this.g = 0;
            np7VarA.E(this);
            return;
        }
        np7VarA.F(true);
        try {
            rk7 context2 = getContext();
            Object objB = k.b(context2, this.j);
            try {
                this.l.resumeWith(obj);
                while (np7VarA.L()) {
                }
            } finally {
                k.a(context2, objB);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DispatchedContinuation[");
        sbZ.append(this.k);
        sbZ.append(", ");
        sbZ.append(n56.s2(this.l));
        sbZ.append(']');
        return sbZ.toString();
    }
}
