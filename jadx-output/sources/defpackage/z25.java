package defpackage;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public abstract class z25 {
    public final String a;
    public final int b;
    public Boolean c;
    public Boolean d;
    public Long e;
    public Long f;

    public z25(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static Boolean d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    public static Boolean e(String str, i44 i44Var, qw4 qw4Var) {
        List<String> listY;
        h44 h44Var = h44.REGEXP;
        h44 h44Var2 = h44.IN_LIST;
        Objects.requireNonNull(i44Var, "null reference");
        if (str == null || !i44Var.s() || i44Var.t() == h44.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (i44Var.t() == h44Var2) {
            if (i44Var.z() == 0) {
                return null;
            }
        } else if (!i44Var.u()) {
            return null;
        }
        h44 h44VarT = i44Var.t();
        boolean zX = i44Var.x();
        String strV = (zX || h44VarT == h44Var || h44VarT == h44Var2) ? i44Var.v() : i44Var.v().toUpperCase(Locale.ENGLISH);
        if (i44Var.z() == 0) {
            listY = null;
        } else {
            listY = i44Var.y();
            if (!zX) {
                ArrayList arrayList = new ArrayList(listY.size());
                Iterator<String> it = listY.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                listY = Collections.unmodifiableList(arrayList);
            }
        }
        String str2 = h44VarT == h44Var ? strV : null;
        if (h44VarT == h44Var2) {
            if (listY == null || listY.size() == 0) {
                return null;
            }
        } else if (strV == null) {
            return null;
        }
        if (!zX && h44VarT != h44Var) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (h44VarT.ordinal()) {
            case 1:
                try {
                    break;
                } catch (PatternSyntaxException unused) {
                    if (qw4Var == null) {
                        return null;
                    }
                    qw4Var.i.b("Invalid regular expression in REGEXP audience filter. expression", str2);
                    return null;
                }
        }
        return null;
    }

    public static Boolean f(long j, c44 c44Var) {
        try {
            return h(new BigDecimal(j), c44Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean g(String str, c44 c44Var) {
        if (!l25.z(str)) {
            return null;
        }
        try {
            return h(new BigDecimal(str), c44Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean h(BigDecimal bigDecimal, c44 c44Var, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Objects.requireNonNull(c44Var, "null reference");
        if (c44Var.s() && c44Var.t() != b44.UNKNOWN_COMPARISON_TYPE) {
            b44 b44VarT = c44Var.t();
            b44 b44Var = b44.BETWEEN;
            if (b44VarT == b44Var) {
                if (!c44Var.y() || !c44Var.A()) {
                    return null;
                }
            } else if (!c44Var.w()) {
                return null;
            }
            b44 b44VarT2 = c44Var.t();
            if (c44Var.t() == b44Var) {
                if (l25.z(c44Var.z()) && l25.z(c44Var.B())) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(c44Var.z());
                        bigDecimal4 = new BigDecimal(c44Var.B());
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!l25.z(c44Var.x())) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(c44Var.x());
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (b44VarT2 == b44Var) {
                if (bigDecimal3 == null) {
                    return null;
                }
            } else if (bigDecimal2 == null) {
                return null;
            }
            int iOrdinal = b44VarT2.ordinal();
            if (iOrdinal == 1) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == -1);
            }
            if (iOrdinal == 2) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 1);
            }
            if (iOrdinal != 3) {
                if (iOrdinal != 4) {
                    return null;
                }
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
            if (d == 0.0d) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
            }
            if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
        return null;
    }

    public abstract int a();

    public abstract boolean b();

    public abstract boolean c();
}
