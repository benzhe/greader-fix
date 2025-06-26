package defpackage;

import defpackage.qk7;
import defpackage.rk7;

/* loaded from: classes2.dex */
public abstract class vk7 extends tk7 {
    private final rk7 _context;
    private transient pk7<Object> intercepted;

    public vk7(pk7<Object> pk7Var, rk7 rk7Var) {
        super(pk7Var);
        this._context = rk7Var;
    }

    @Override // defpackage.pk7
    public rk7 getContext() {
        rk7 rk7Var = this._context;
        im7.c(rk7Var);
        return rk7Var;
    }

    public final pk7<Object> intercepted() {
        pk7<Object> pk7VarB = this.intercepted;
        if (pk7VarB == null) {
            rk7 context = getContext();
            int i = qk7.b;
            qk7 qk7Var = (qk7) context.c(qk7.a.a);
            if (qk7Var == null || (pk7VarB = qk7Var.b(this)) == null) {
                pk7VarB = this;
            }
            this.intercepted = pk7VarB;
        }
        return pk7VarB;
    }

    @Override // defpackage.tk7
    public void releaseIntercepted() {
        pk7<?> pk7Var = this.intercepted;
        if (pk7Var != null && pk7Var != this) {
            rk7 context = getContext();
            int i = qk7.b;
            rk7.a aVarC = context.c(qk7.a.a);
            im7.c(aVarC);
            ((qk7) aVarC).a(pk7Var);
        }
        this.intercepted = uk7.e;
    }

    public vk7(pk7<Object> pk7Var) {
        this(pk7Var, pk7Var != null ? pk7Var.getContext() : null);
    }
}
