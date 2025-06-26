package defpackage;

import defpackage.zo5;
import java.security.SecureRandom;
import java.util.Comparator;
import java.util.Objects;

/* loaded from: classes.dex */
public class vx5 {
    public static final Comparator a;
    public static final w35<Void, Void> b;

    public class a implements Comparator<Comparable<?>> {
        @Override // java.util.Comparator
        public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    static {
        new SecureRandom();
        a = new a();
        b = new w35() { // from class: ux5
            @Override // defpackage.w35
            public Object a(e45 e45Var) throws Exception {
                Comparator comparator = vx5.a;
                if (e45Var.o()) {
                    return (Void) e45Var.l();
                }
                Exception excK = e45Var.k();
                if (excK instanceof y47) {
                    excK = vx5.d(((y47) excK).e);
                } else if (excK instanceof z47) {
                    excK = vx5.d(((z47) excK).e);
                }
                if (excK instanceof zo5) {
                    throw excK;
                }
                throw new zo5(excK.getMessage(), zo5.a.UNKNOWN, excK);
            }
        };
    }

    public static int a(qi6 qi6Var, qi6 qi6Var2) {
        int iMin = Math.min(qi6Var.size(), qi6Var2.size());
        for (int i = 0; i < iMin; i++) {
            int iH = qi6Var.h(i) & 255;
            int iH2 = qi6Var2.h(i) & 255;
            if (iH < iH2) {
                return -1;
            }
            if (iH > iH2) {
                return 1;
            }
        }
        return b(qi6Var.size(), qi6Var2.size());
    }

    public static int b(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int c(double d, long j) {
        if (Double.isNaN(d) || d < -9.223372036854776E18d) {
            return -1;
        }
        if (d >= 9.223372036854776E18d) {
            return 1;
        }
        long j2 = (long) d;
        int i = j2 >= j ? j2 > j ? 1 : 0 : -1;
        return i != 0 ? i : c50.V(d, j);
    }

    public static zo5 d(x47 x47Var) {
        Objects.requireNonNull(x47Var);
        y47 y47Var = new y47(x47Var);
        return new zo5(y47Var.getMessage(), zo5.a.w.get(x47Var.a.e, zo5.a.UNKNOWN), y47Var);
    }

    public static String e(qi6 qi6Var) {
        int size = qi6Var.size();
        StringBuilder sb = new StringBuilder(size * 2);
        for (int i = 0; i < size; i++) {
            int iH = qi6Var.h(i) & 255;
            sb.append(Character.forDigit(iH >>> 4, 16));
            sb.append(Character.forDigit(iH & 15, 16));
        }
        return sb.toString();
    }
}
