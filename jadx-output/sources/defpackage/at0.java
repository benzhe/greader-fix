package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes.dex */
public class at0<T> {
    public final xs0<T> a;
    public final AtomicInteger b;

    public at0() {
        xs0<T> xs0Var = new xs0<>();
        this.a = xs0Var;
        this.b = new AtomicInteger(0);
        dt0 dt0Var = new dt0(this);
        xs0Var.i(new sv2(xs0Var, dt0Var), ms0.f);
    }

    @Deprecated
    public final int a() {
        return this.b.get();
    }

    @Deprecated
    public final void b() {
        this.a.b(new Exception());
    }

    @Deprecated
    public final void c(bt0<T> bt0Var, zs0 zs0Var) {
        xs0<T> xs0Var = this.a;
        ct0 ct0Var = new ct0(bt0Var, zs0Var);
        zv2 zv2Var = ms0.f;
        xs0Var.e.i(new sv2(xs0Var, ct0Var), zv2Var);
    }
}
