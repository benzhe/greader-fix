package defpackage;

/* loaded from: classes2.dex */
public enum s48 implements u68, v68 {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;

    public static final s48[] q = values();

    public static s48 O(int i) {
        if (i < 1 || i > 12) {
            throw new l48(jo.g("Invalid value for MonthOfYear: ", i));
        }
        return q[i - 1];
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (y68Var == q68.F) {
            return L();
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.x(this);
    }

    public int K(boolean z) {
        switch (this) {
            case JANUARY:
                return 1;
            case FEBRUARY:
                return 32;
            case MARCH:
                return (z ? 1 : 0) + 60;
            case APRIL:
                return (z ? 1 : 0) + 91;
            case MAY:
                return (z ? 1 : 0) + 121;
            case JUNE:
                return (z ? 1 : 0) + 152;
            case JULY:
                return (z ? 1 : 0) + 182;
            case AUGUST:
                return (z ? 1 : 0) + 213;
            case SEPTEMBER:
                return (z ? 1 : 0) + 244;
            case OCTOBER:
                return (z ? 1 : 0) + 274;
            case NOVEMBER:
                return (z ? 1 : 0) + 305;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    public int L() {
        return ordinal() + 1;
    }

    public int M(boolean z) {
        int iOrdinal = ordinal();
        return iOrdinal != 1 ? (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31 : z ? 29 : 28;
    }

    public int N() {
        int iOrdinal = ordinal();
        if (iOrdinal != 1) {
            return (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31;
        }
        return 29;
    }

    @Override // defpackage.u68
    public int k(y68 y68Var) {
        return y68Var == q68.F ? L() : t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        if (j58.y(t68Var).equals(o58.g)) {
            return t68Var.i(q68.F, L());
        }
        throw new l48("Adjustment only supported on ISO date-time");
    }

    @Override // defpackage.u68
    public d78 t(y68 y68Var) {
        if (y68Var == q68.F) {
            return y68Var.w();
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.t(this);
    }

    @Override // defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) o58.g;
        }
        if (a78Var == z68.c) {
            return (R) r68.MONTHS;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.F : y68Var != null && y68Var.k(this);
    }
}
