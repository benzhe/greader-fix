package defpackage;

/* loaded from: classes2.dex */
public final class s68 {
    public static final b78 a = c.WEEK_BASED_YEARS;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b implements y68 {
        public static final b e;
        public static final b f;
        public static final b g;
        public static final b h;
        public static final int[] i;
        public static final /* synthetic */ b[] j;

        public enum a extends b {
            public a(String str, int i) {
                super(str, i, null);
            }

            @Override // defpackage.y68
            public boolean k(u68 u68Var) {
                return u68Var.y(q68.B) && u68Var.y(q68.F) && u68Var.y(q68.I) && b.C(u68Var);
            }

            @Override // defpackage.y68
            public <R extends t68> R l(R r, long j) {
                long jX = x(r);
                w().b(j, this);
                q68 q68Var = q68.B;
                return (R) r.i(q68Var, (j - jX) + r.D(q68Var));
            }

            @Override // defpackage.y68
            public d78 t(u68 u68Var) {
                if (!u68Var.y(this)) {
                    throw new c78("Unsupported field: DayOfQuarter");
                }
                long jD = u68Var.D(b.f);
                if (jD == 1) {
                    return o58.g.M(u68Var.D(q68.I)) ? d78.d(1L, 91L) : d78.d(1L, 90L);
                }
                return jD == 2 ? d78.d(1L, 91L) : (jD == 3 || jD == 4) ? d78.d(1L, 92L) : w();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "DayOfQuarter";
            }

            @Override // defpackage.y68
            public d78 w() {
                return d78.e(1L, 90L, 92L);
            }

            @Override // defpackage.y68
            public long x(u68 u68Var) {
                if (!u68Var.y(this)) {
                    throw new c78("Unsupported field: DayOfQuarter");
                }
                return u68Var.k(q68.B) - b.i[((u68Var.k(q68.F) - 1) / 3) + (o58.g.M(u68Var.D(q68.I)) ? 4 : 0)];
            }
        }

        /* renamed from: s68$b$b, reason: collision with other inner class name */
        public enum C0037b extends b {
            public C0037b(String str, int i) {
                super(str, i, null);
            }

            @Override // defpackage.y68
            public boolean k(u68 u68Var) {
                return u68Var.y(q68.F) && b.C(u68Var);
            }

            @Override // defpackage.y68
            public <R extends t68> R l(R r, long j) {
                long jX = x(r);
                w().b(j, this);
                q68 q68Var = q68.F;
                return (R) r.i(q68Var, ((j - jX) * 3) + r.D(q68Var));
            }

            @Override // defpackage.y68
            public d78 t(u68 u68Var) {
                return w();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "QuarterOfYear";
            }

            @Override // defpackage.y68
            public d78 w() {
                return d78.d(1L, 4L);
            }

            @Override // defpackage.y68
            public long x(u68 u68Var) {
                if (u68Var.y(this)) {
                    return (u68Var.D(q68.F) + 2) / 3;
                }
                throw new c78("Unsupported field: QuarterOfYear");
            }
        }

        public enum c extends b {
            public c(String str, int i) {
                super(str, i, null);
            }

            @Override // defpackage.y68
            public boolean k(u68 u68Var) {
                return u68Var.y(q68.C) && b.C(u68Var);
            }

            @Override // defpackage.y68
            public <R extends t68> R l(R r, long j) {
                w().b(j, this);
                long jX = x(r);
                long j2 = j - jX;
                if ((j ^ j2) >= 0 || (j ^ jX) >= 0) {
                    return (R) r.O(j2, r68.WEEKS);
                }
                throw new ArithmeticException("Subtraction overflows a long: " + j + " - " + jX);
            }

            @Override // defpackage.y68
            public d78 t(u68 u68Var) {
                if (u68Var.y(this)) {
                    return d78.d(1L, b.K(b.I(p48.V(u68Var))));
                }
                throw new c78("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekOfWeekBasedYear";
            }

            @Override // defpackage.y68
            public d78 w() {
                return d78.e(1L, 52L, 53L);
            }

            @Override // defpackage.y68
            public long x(u68 u68Var) {
                if (u68Var.y(this)) {
                    return b.D(p48.V(u68Var));
                }
                throw new c78("Unsupported field: WeekOfWeekBasedYear");
            }
        }

        public enum d extends b {
            public d(String str, int i) {
                super(str, i, null);
            }

            @Override // defpackage.y68
            public boolean k(u68 u68Var) {
                return u68Var.y(q68.C) && b.C(u68Var);
            }

            @Override // defpackage.y68
            public <R extends t68> R l(R r, long j) {
                if (!k(r)) {
                    throw new c78("Unsupported field: WeekBasedYear");
                }
                int iA = q68.I.h.a(j, b.h);
                p48 p48VarV = p48.V(r);
                int iK = p48VarV.k(q68.x);
                int iD = b.D(p48VarV);
                if (iD == 53 && b.K(iA) == 52) {
                    iD = 52;
                }
                return (R) r.x(p48.c0(iA, 1, 4).g0(((iD - 1) * 7) + (iK - r6.k(r0))));
            }

            @Override // defpackage.y68
            public d78 t(u68 u68Var) {
                return q68.I.h;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekBasedYear";
            }

            @Override // defpackage.y68
            public d78 w() {
                return q68.I.h;
            }

            @Override // defpackage.y68
            public long x(u68 u68Var) {
                if (u68Var.y(this)) {
                    return b.I(p48.V(u68Var));
                }
                throw new c78("Unsupported field: WeekBasedYear");
            }
        }

        static {
            a aVar = new a("DAY_OF_QUARTER", 0);
            e = aVar;
            C0037b c0037b = new C0037b("QUARTER_OF_YEAR", 1);
            f = c0037b;
            c cVar = new c("WEEK_OF_WEEK_BASED_YEAR", 2);
            g = cVar;
            d dVar = new d("WEEK_BASED_YEAR", 3);
            h = dVar;
            j = new b[]{aVar, c0037b, cVar, dVar};
            i = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
        }

        public b(String str, int i2, a aVar) {
        }

        public static boolean C(u68 u68Var) {
            return j58.y(u68Var).equals(o58.g);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int D(defpackage.p48 r5) {
            /*
                m48 r0 = r5.X()
                int r0 = r0.ordinal()
                int r1 = r5.Y()
                r2 = 1
                int r1 = r1 - r2
                int r0 = 3 - r0
                int r0 = r0 + r1
                int r3 = r0 / 7
                int r3 = r3 * 7
                int r0 = r0 - r3
                r3 = -3
                int r0 = r0 + r3
                if (r0 >= r3) goto L1c
                int r0 = r0 + 7
            L1c:
                if (r1 >= r0) goto L3d
                r0 = 180(0xb4, float:2.52E-43)
                p48 r5 = r5.n0(r0)
                r0 = -1
                p48 r5 = r5.j0(r0)
                int r5 = I(r5)
                int r5 = K(r5)
                long r0 = (long) r5
                r2 = 1
                d78 r5 = defpackage.d78.d(r2, r0)
                long r0 = r5.h
                int r5 = (int) r0
                goto L59
            L3d:
                int r1 = r1 - r0
                int r1 = r1 / 7
                int r1 = r1 + r2
                r4 = 53
                if (r1 != r4) goto L57
                if (r0 == r3) goto L53
                r3 = -2
                if (r0 != r3) goto L51
                boolean r5 = r5.a0()
                if (r5 == 0) goto L51
                goto L53
            L51:
                r5 = 0
                goto L54
            L53:
                r5 = 1
            L54:
                if (r5 != 0) goto L57
                goto L58
            L57:
                r2 = r1
            L58:
                r5 = r2
            L59:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: s68.b.D(p48):int");
        }

        public static int I(p48 p48Var) {
            int i2 = p48Var.e;
            int iY = p48Var.Y();
            if (iY <= 3) {
                return iY - p48Var.X().ordinal() < -2 ? i2 - 1 : i2;
            }
            if (iY >= 363) {
                return ((iY - 363) - (p48Var.a0() ? 1 : 0)) - p48Var.X().ordinal() >= 0 ? i2 + 1 : i2;
            }
            return i2;
        }

        public static int K(int i2) {
            p48 p48VarC0 = p48.c0(i2, 1, 1);
            if (p48VarC0.X() != m48.THURSDAY) {
                return (p48VarC0.X() == m48.WEDNESDAY && p48VarC0.a0()) ? 53 : 52;
            }
            return 53;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) j.clone();
        }

        @Override // defpackage.y68
        public boolean i() {
            return true;
        }

        @Override // defpackage.y68
        public boolean y() {
            return false;
        }
    }

    public enum c implements b78 {
        WEEK_BASED_YEARS("WeekBasedYears", n48.l(31556952)),
        QUARTER_YEARS("QuarterYears", n48.l(7889238));

        public final String e;

        c(String str, n48 n48Var) {
            this.e = str;
        }

        @Override // defpackage.b78
        public boolean i() {
            return true;
        }

        @Override // defpackage.b78
        public <R extends t68> R k(R r, long j) {
            int iOrdinal = ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal == 1) {
                    return (R) r.O(j / 256, r68.YEARS).O((j % 256) * 3, r68.MONTHS);
                }
                throw new IllegalStateException("Unreachable");
            }
            b78 b78Var = s68.a;
            return (R) r.i(b.h, kt7.q(r.k(r0), j));
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.e;
        }
    }

    static {
        c cVar = c.QUARTER_YEARS;
    }
}
