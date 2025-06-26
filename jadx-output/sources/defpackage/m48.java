package defpackage;

/* loaded from: classes2.dex */
public enum m48 implements u68, v68 {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;

    public static final m48[] l = values();

    public static m48 L(int i) {
        if (i < 1 || i > 7) {
            throw new l48(jo.g("Invalid value for DayOfWeek: ", i));
        }
        return l[i - 1];
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (y68Var == q68.x) {
            return K();
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.x(this);
    }

    public int K() {
        return ordinal() + 1;
    }

    @Override // defpackage.u68
    public int k(y68 y68Var) {
        return y68Var == q68.x ? K() : t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.x, K());
    }

    @Override // defpackage.u68
    public d78 t(y68 y68Var) {
        if (y68Var == q68.x) {
            return y68Var.w();
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.t(this);
    }

    @Override // defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.c) {
            return (R) r68.DAYS;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.b || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.x : y68Var != null && y68Var.k(this);
    }
}
