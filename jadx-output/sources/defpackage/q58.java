package defpackage;

import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class q58 extends j58 implements Serializable {
    public static final Locale g = new Locale("ja", "JP", "JP");
    public static final q58 h = new q58();
    public static final Map<String, String[]> i;
    public static final Map<String, String[]> j;
    public static final Map<String, String[]> k;

    static {
        HashMap map = new HashMap();
        i = map;
        HashMap map2 = new HashMap();
        j = map2;
        HashMap map3 = new HashMap();
        k = map3;
        map.put("en", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        map.put("ja", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        map2.put("en", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        map2.put("ja", new String[]{"Unknown", "慶", "明", "大", "昭", "平"});
        map3.put("en", new String[]{"Unknown", "Keio", "Meiji", "Taisho", "Showa", "Heisei"});
        map3.put("ja", new String[]{"Unknown", "慶応", "明治", "大正", "昭和", "平成"});
    }

    private Object readResolve() {
        return h;
    }

    @Override // defpackage.j58
    public String C() {
        return "japanese";
    }

    @Override // defpackage.j58
    public String D() {
        return "Japanese";
    }

    @Override // defpackage.j58
    public f58<r58> I(u68 u68Var) {
        return super.I(u68Var);
    }

    @Override // defpackage.j58
    public h58<r58> L(o48 o48Var, z48 z48Var) {
        return i58.X(this, o48Var, z48Var);
    }

    public d78 M(q68 q68Var) {
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal != 15 && iOrdinal != 18 && iOrdinal != 20 && iOrdinal != 24) {
            switch (iOrdinal) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    Calendar calendar = Calendar.getInstance(g);
                    int iOrdinal2 = q68Var.ordinal();
                    int i2 = 0;
                    if (iOrdinal2 == 19) {
                        s58[] s58VarArrN = s58.N();
                        int iMin = 366;
                        while (i2 < s58VarArrN.length) {
                            iMin = Math.min(iMin, ((s58VarArrN[i2].f.a0() ? 366 : 365) - s58VarArrN[i2].f.Y()) + 1);
                            i2++;
                        }
                        return d78.e(1L, iMin, 366L);
                    }
                    if (iOrdinal2 == 23) {
                        return d78.f(calendar.getMinimum(2) + 1, calendar.getGreatestMinimum(2) + 1, calendar.getLeastMaximum(2) + 1, calendar.getMaximum(2) + 1);
                    }
                    switch (iOrdinal2) {
                        case 25:
                            s58[] s58VarArrN2 = s58.N();
                            int i3 = (s58VarArrN2[s58VarArrN2.length - 1].K().e - s58VarArrN2[s58VarArrN2.length - 1].f.e) + 1;
                            int iMin2 = Integer.MAX_VALUE;
                            while (i2 < s58VarArrN2.length) {
                                iMin2 = Math.min(iMin2, (s58VarArrN2[i2].K().e - s58VarArrN2[i2].f.e) + 1);
                                i2++;
                            }
                            return d78.f(1L, 6L, iMin2, i3);
                        case 26:
                            s58[] s58VarArrN3 = s58.N();
                            return d78.d(r58.h.e, s58VarArrN3[s58VarArrN3.length - 1].K().e);
                        case 27:
                            s58[] s58VarArrN4 = s58.N();
                            return d78.d(s58VarArrN4[0].e, s58VarArrN4[s58VarArrN4.length - 1].e);
                        default:
                            throw new UnsupportedOperationException("Unimplementable field: " + q68Var);
                    }
            }
        }
        return q68Var.h;
    }

    @Override // defpackage.j58
    public e58 k(u68 u68Var) {
        return u68Var instanceof r58 ? (r58) u68Var : new r58(p48.V(u68Var));
    }

    @Override // defpackage.j58
    public k58 x(int i2) {
        return s58.M(i2);
    }
}
