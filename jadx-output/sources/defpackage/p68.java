package defpackage;

/* loaded from: classes2.dex */
public abstract class p68 implements u68 {
    @Override // defpackage.u68
    public int k(y68 y68Var) {
        return t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.u68
    public d78 t(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.t(this);
        }
        if (y(y68Var)) {
            return y68Var.w();
        }
        throw new c78(jo.p("Unsupported field: ", y68Var));
    }

    @Override // defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.a || a78Var == z68.b || a78Var == z68.c) {
            return null;
        }
        return a78Var.a(this);
    }
}
