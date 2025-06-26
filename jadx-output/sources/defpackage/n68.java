package defpackage;

/* loaded from: classes2.dex */
public abstract class n68 extends p68 implements k58 {
    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (y68Var == q68.J) {
            return ((s58) this).e;
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.x(this);
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return y68Var == q68.J ? ((s58) this).e : t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.J, ((s58) this).e);
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.c) {
            return (R) r68.ERAS;
        }
        if (a78Var == z68.b || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e || a78Var == z68.f || a78Var == z68.g) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.J : y68Var != null && y68Var.k(this);
    }
}
