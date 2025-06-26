package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class f45<TResult> {
    public final e55<TResult> a = new e55<>();

    public f45() {
    }

    public boolean a(Exception exc) {
        e55<TResult> e55Var = this.a;
        Objects.requireNonNull(e55Var);
        bi.j(exc, "Exception must not be null");
        synchronized (e55Var.a) {
            if (e55Var.c) {
                return false;
            }
            e55Var.c = true;
            e55Var.f = exc;
            e55Var.b.a(e55Var);
            return true;
        }
    }

    public boolean b(TResult tresult) {
        return this.a.u(tresult);
    }

    public f45(k45 k45Var) {
        c55 c55Var = new c55(this);
        e55<Void> e55Var = k45Var.a;
        l45 l45Var = new l45(c55Var);
        Objects.requireNonNull(e55Var);
        e55Var.g(g45.a, l45Var);
    }
}
