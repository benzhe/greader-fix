package defpackage;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class e78 implements Serializable {
    public static final ConcurrentMap<String, e78> k = new ConcurrentHashMap(4, 0.75f, 2);
    public final m48 e;
    public final int f;
    public final transient y68 g;
    public final transient y68 h;
    public final transient y68 i;
    public final transient y68 j;

    public static class a implements y68 {
        public static final d78 j = d78.d(1, 7);
        public static final d78 k = d78.f(0, 1, 4, 6);
        public static final d78 l = d78.f(0, 1, 52, 54);
        public static final d78 m = d78.e(1, 52, 53);
        public static final d78 n = q68.I.h;
        public final String e;
        public final e78 f;
        public final b78 g;
        public final b78 h;
        public final d78 i;

        public a(String str, e78 e78Var, b78 b78Var, b78 b78Var2, d78 d78Var) {
            this.e = str;
            this.f = e78Var;
            this.g = b78Var;
            this.h = b78Var2;
            this.i = d78Var;
        }

        public final int a(int i, int i2) {
            return ((i2 - 1) + (i + 7)) / 7;
        }

        public final long b(u68 u68Var, int i) {
            int iK = u68Var.k(q68.B);
            return a(d(iK, i), iK);
        }

        public final d78 c(u68 u68Var) {
            int iG = kt7.g(u68Var.k(q68.x) - this.f.e.K(), 7) + 1;
            long jB = b(u68Var, iG);
            if (jB == 0) {
                return c(j58.y(u68Var).k(u68Var).N(2L, r68.WEEKS));
            }
            return jB >= ((long) a(d(u68Var.k(q68.B), iG), (x48.K((long) u68Var.k(q68.I)) ? 366 : 365) + this.f.f)) ? c(j58.y(u68Var).k(u68Var).O(2L, r68.WEEKS)) : d78.d(1L, r0 - 1);
        }

        public final int d(int i, int i2) {
            int iG = kt7.g(i - i2, 7);
            return iG + 1 > this.f.f ? 7 - iG : -iG;
        }

        @Override // defpackage.y68
        public boolean i() {
            return true;
        }

        @Override // defpackage.y68
        public boolean k(u68 u68Var) {
            if (!u68Var.y(q68.x)) {
                return false;
            }
            b78 b78Var = this.h;
            if (b78Var == r68.WEEKS) {
                return true;
            }
            if (b78Var == r68.MONTHS) {
                return u68Var.y(q68.A);
            }
            if (b78Var == r68.YEARS) {
                return u68Var.y(q68.B);
            }
            if (b78Var == s68.a) {
                return u68Var.y(q68.C);
            }
            if (b78Var == r68.FOREVER) {
                return u68Var.y(q68.C);
            }
            return false;
        }

        @Override // defpackage.y68
        public <R extends t68> R l(R r, long j2) {
            int iA = this.i.a(j2, this);
            if (iA == r.k(this)) {
                return r;
            }
            if (this.h != r68.FOREVER) {
                return (R) r.O(iA - r1, this.g);
            }
            int iK = r.k(this.f.i);
            long j3 = (long) ((j2 - r1) * 52.1775d);
            r68 r68Var = r68.WEEKS;
            t68 t68VarO = r.O(j3, r68Var);
            if (t68VarO.k(this) > iA) {
                return (R) t68VarO.N(t68VarO.k(this.f.i), r68Var);
            }
            if (t68VarO.k(this) < iA) {
                t68VarO = t68VarO.O(2L, r68Var);
            }
            R r2 = (R) t68VarO.O(iK - t68VarO.k(this.f.i), r68Var);
            return r2.k(this) > iA ? (R) r2.N(1L, r68Var) : r2;
        }

        @Override // defpackage.y68
        public d78 t(u68 u68Var) {
            q68 q68Var;
            b78 b78Var = this.h;
            if (b78Var == r68.WEEKS) {
                return this.i;
            }
            if (b78Var == r68.MONTHS) {
                q68Var = q68.A;
            } else {
                if (b78Var != r68.YEARS) {
                    if (b78Var == s68.a) {
                        return c(u68Var);
                    }
                    if (b78Var == r68.FOREVER) {
                        return u68Var.t(q68.I);
                    }
                    throw new IllegalStateException("unreachable");
                }
                q68Var = q68.B;
            }
            int iD = d(u68Var.k(q68Var), kt7.g(u68Var.k(q68.x) - this.f.e.K(), 7) + 1);
            d78 d78VarT = u68Var.t(q68Var);
            return d78.d(a(iD, (int) d78VarT.e), a(iD, (int) d78VarT.h));
        }

        public String toString() {
            return this.e + "[" + this.f.toString() + "]";
        }

        @Override // defpackage.y68
        public d78 w() {
            return this.i;
        }

        @Override // defpackage.y68
        public long x(u68 u68Var) {
            int iB;
            int iA;
            int iK = this.f.e.K();
            q68 q68Var = q68.x;
            int iG = kt7.g(u68Var.k(q68Var) - iK, 7) + 1;
            b78 b78Var = this.h;
            r68 r68Var = r68.WEEKS;
            if (b78Var == r68Var) {
                return iG;
            }
            if (b78Var == r68.MONTHS) {
                int iK2 = u68Var.k(q68.A);
                iA = a(d(iK2, iG), iK2);
            } else {
                if (b78Var != r68.YEARS) {
                    if (b78Var == s68.a) {
                        int iG2 = kt7.g(u68Var.k(q68Var) - this.f.e.K(), 7) + 1;
                        long jB = b(u68Var, iG2);
                        if (jB == 0) {
                            iB = ((int) b(j58.y(u68Var).k(u68Var).N(1L, r68Var), iG2)) + 1;
                        } else {
                            if (jB >= 53) {
                                if (jB >= a(d(u68Var.k(q68.B), iG2), (x48.K((long) u68Var.k(q68.I)) ? 366 : 365) + this.f.f)) {
                                    jB -= r12 - 1;
                                }
                            }
                            iB = (int) jB;
                        }
                        return iB;
                    }
                    if (b78Var != r68.FOREVER) {
                        throw new IllegalStateException("unreachable");
                    }
                    int iG3 = kt7.g(u68Var.k(q68Var) - this.f.e.K(), 7) + 1;
                    int iK3 = u68Var.k(q68.I);
                    long jB2 = b(u68Var, iG3);
                    if (jB2 == 0) {
                        iK3--;
                    } else if (jB2 >= 53) {
                        if (jB2 >= a(d(u68Var.k(q68.B), iG3), (x48.K((long) iK3) ? 366 : 365) + this.f.f)) {
                            iK3++;
                        }
                    }
                    return iK3;
                }
                int iK4 = u68Var.k(q68.B);
                iA = a(d(iK4, iG), iK4);
            }
            return iA;
        }

        @Override // defpackage.y68
        public boolean y() {
            return false;
        }
    }

    static {
        new e78(m48.MONDAY, 4);
        a(m48.SUNDAY, 1);
    }

    public e78(m48 m48Var, int i) {
        r68 r68Var = r68.DAYS;
        r68 r68Var2 = r68.WEEKS;
        this.g = new a("DayOfWeek", this, r68Var, r68Var2, a.j);
        this.h = new a("WeekOfMonth", this, r68Var2, r68.MONTHS, a.k);
        r68 r68Var3 = r68.YEARS;
        d78 d78Var = a.l;
        b78 b78Var = s68.a;
        this.i = new a("WeekOfWeekBasedYear", this, r68Var2, b78Var, a.m);
        this.j = new a("WeekBasedYear", this, b78Var, r68.FOREVER, a.n);
        kt7.o(m48Var, "firstDayOfWeek");
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.e = m48Var;
        this.f = i;
    }

    public static e78 a(m48 m48Var, int i) {
        String str = m48Var.toString() + i;
        ConcurrentMap<String, e78> concurrentMap = k;
        e78 e78Var = concurrentMap.get(str);
        if (e78Var != null) {
            return e78Var;
        }
        concurrentMap.putIfAbsent(str, new e78(m48Var, i));
        return concurrentMap.get(str);
    }

    private Object readResolve() throws InvalidObjectException {
        try {
            return a(this.e, this.f);
        } catch (IllegalArgumentException e) {
            StringBuilder sbZ = jo.z("Invalid WeekFields");
            sbZ.append(e.getMessage());
            throw new InvalidObjectException(sbZ.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e78) && hashCode() == obj.hashCode();
    }

    public int hashCode() {
        return (this.e.ordinal() * 7) + this.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("WeekFields[");
        sbZ.append(this.e);
        sbZ.append(',');
        sbZ.append(this.f);
        sbZ.append(']');
        return sbZ.toString();
    }
}
