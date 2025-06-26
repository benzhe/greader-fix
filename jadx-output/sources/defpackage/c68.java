package defpackage;

import defpackage.f68;
import defpackage.l68;
import defpackage.s68;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public final class c68 {
    public static final a78<z48> h = new a();
    public static final Map<Character, y68> i;
    public c68 a;
    public final c68 b;
    public final List<e> c;
    public final boolean d;
    public int e;
    public char f;
    public int g;

    public class a implements a78<z48> {
        @Override // defpackage.a78
        public z48 a(u68 u68Var) {
            z48 z48Var = (z48) u68Var.w(z68.a);
            if (z48Var == null || (z48Var instanceof a58)) {
                return null;
            }
            return z48Var;
        }
    }

    public class b extends f68 {
        public final /* synthetic */ l68.b b;

        public b(c68 c68Var, l68.b bVar) {
            this.b = bVar;
        }

        @Override // defpackage.f68
        public String a(y68 y68Var, long j, m68 m68Var, Locale locale) {
            return this.b.a(j, m68Var);
        }
    }

    public static final class c implements e {
        public final char e;

        public c(char c) {
            this.e = c;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            sb.append(this.e);
            return true;
        }

        public String toString() {
            if (this.e == '\'') {
                return "''";
            }
            StringBuilder sbZ = jo.z("'");
            sbZ.append(this.e);
            sbZ.append("'");
            return sbZ.toString();
        }
    }

    public interface e {
        boolean i(e68 e68Var, StringBuilder sb);
    }

    public static final class f implements e {
        public final y68 e;
        public final int f;
        public final int g;
        public final boolean h;

        public f(y68 y68Var, int i, int i2, boolean z) {
            kt7.o(y68Var, "field");
            d78 d78VarW = y68Var.w();
            if (!(d78VarW.e == d78VarW.f && d78VarW.g == d78VarW.h)) {
                throw new IllegalArgumentException(jo.p("Field must have a fixed set of values: ", y68Var));
            }
            if (i < 0 || i > 9) {
                throw new IllegalArgumentException(jo.g("Minimum width must be from 0 to 9 inclusive but was ", i));
            }
            if (i2 < 1 || i2 > 9) {
                throw new IllegalArgumentException(jo.g("Maximum width must be from 1 to 9 inclusive but was ", i2));
            }
            if (i2 < i) {
                throw new IllegalArgumentException(jo.i("Maximum width must exceed or equal the minimum width but ", i2, " < ", i));
            }
            this.e = y68Var;
            this.f = i;
            this.g = i2;
            this.h = z;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            Long lB = e68Var.b(this.e);
            if (lB == null) {
                return false;
            }
            g68 g68Var = e68Var.c;
            long jLongValue = lB.longValue();
            d78 d78VarW = this.e.w();
            d78VarW.b(jLongValue, this.e);
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d78VarW.e);
            BigDecimal bigDecimalDivide = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf).divide(BigDecimal.valueOf(d78VarW.h).subtract(bigDecimalValueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            BigDecimal bigDecimalStripTrailingZeros = bigDecimalDivide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : bigDecimalDivide.stripTrailingZeros();
            if (bigDecimalStripTrailingZeros.scale() != 0) {
                String strA = g68Var.a(bigDecimalStripTrailingZeros.setScale(Math.min(Math.max(bigDecimalStripTrailingZeros.scale(), this.f), this.g), RoundingMode.FLOOR).toPlainString().substring(2));
                if (this.h) {
                    sb.append(g68Var.d);
                }
                sb.append(strA);
                return true;
            }
            if (this.f <= 0) {
                return true;
            }
            if (this.h) {
                sb.append(g68Var.d);
            }
            for (int i = 0; i < this.f; i++) {
                sb.append(g68Var.a);
            }
            return true;
        }

        public String toString() {
            String str = this.h ? ",DecimalPoint" : "";
            StringBuilder sbZ = jo.z("Fraction(");
            sbZ.append(this.e);
            sbZ.append(",");
            sbZ.append(this.f);
            sbZ.append(",");
            sbZ.append(this.g);
            sbZ.append(str);
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    public static final class g implements e {
        public g(int i) {
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            Long lB = e68Var.b(q68.K);
            u68 u68Var = e68Var.a;
            q68 q68Var = q68.i;
            Long lValueOf = u68Var.y(q68Var) ? Long.valueOf(e68Var.a.D(q68Var)) : 0L;
            if (lB == null) {
                return false;
            }
            long jLongValue = lB.longValue();
            int iC = q68Var.C(lValueOf.longValue());
            if (jLongValue >= -62167219200L) {
                long j = (jLongValue - 315569520000L) + 62167219200L;
                long jF = kt7.f(j, 315569520000L) + 1;
                q48 q48VarZ = q48.Z(kt7.i(j, 315569520000L) - 62167219200L, 0, a58.j);
                if (jF > 0) {
                    sb.append('+');
                    sb.append(jF);
                }
                sb.append(q48VarZ);
                if (q48VarZ.f.g == 0) {
                    sb.append(":00");
                }
            } else {
                long j2 = jLongValue + 62167219200L;
                long j3 = j2 / 315569520000L;
                long j4 = j2 % 315569520000L;
                q48 q48VarZ2 = q48.Z(j4 - 62167219200L, 0, a58.j);
                int length = sb.length();
                sb.append(q48VarZ2);
                if (q48VarZ2.f.g == 0) {
                    sb.append(":00");
                }
                if (j3 < 0) {
                    if (q48VarZ2.e.e == -10000) {
                        sb.replace(length, length + 2, Long.toString(j3 - 1));
                    } else if (j4 == 0) {
                        sb.insert(length, j3);
                    } else {
                        sb.insert(length + 1, Math.abs(j3));
                    }
                }
            }
            if (iC != 0) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                if (iC % 1000000 == 0) {
                    sb.append(Integer.toString((iC / 1000000) + 1000).substring(1));
                } else if (iC % 1000 == 0) {
                    sb.append(Integer.toString((iC / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(iC + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
            sb.append('Z');
            return true;
        }

        public String toString() {
            return "Instant()";
        }
    }

    public static final class h implements e {
        public final m68 e;

        public h(m68 m68Var) {
            this.e = m68Var;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            Long lB = e68Var.b(q68.L);
            if (lB == null) {
                return false;
            }
            sb.append(TimeZones.GMT_ID);
            if (this.e == m68.FULL) {
                return new k("", "+HH:MM:ss").i(e68Var, sb);
            }
            int iS = kt7.s(lB.longValue());
            if (iS == 0) {
                return true;
            }
            int iAbs = Math.abs((iS / 3600) % 100);
            int iAbs2 = Math.abs((iS / 60) % 60);
            int iAbs3 = Math.abs(iS % 60);
            sb.append(iS < 0 ? "-" : "+");
            sb.append(iAbs);
            if (iAbs2 <= 0 && iAbs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((iAbs2 / 10) + 48));
            sb.append((char) ((iAbs2 % 10) + 48));
            if (iAbs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((iAbs3 / 10) + 48));
            sb.append((char) ((iAbs3 % 10) + 48));
            return true;
        }
    }

    public static final class i implements e {
        public final h68 e;
        public final h68 f;

        public i(h68 h68Var, h68 h68Var2) {
            this.e = h68Var;
            this.f = h68Var2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:156:0x026b  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x029c  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x029c A[FALL_THROUGH] */
        /* JADX WARN: Removed duplicated region for block: B:185:0x02d5  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x045b  */
        /* JADX WARN: Removed duplicated region for block: B:361:0x0474 A[SYNTHETIC] */
        @Override // c68.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean i(defpackage.e68 r22, java.lang.StringBuilder r23) {
            /*
                Method dump skipped, instructions count: 1320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: c68.i.i(e68, java.lang.StringBuilder):boolean");
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Localized(");
            Object obj = this.e;
            if (obj == null) {
                obj = "";
            }
            sbZ.append(obj);
            sbZ.append(",");
            h68 h68Var = this.f;
            sbZ.append(h68Var != null ? h68Var : "");
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    public static final class k implements e {
        public static final String[] g = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};
        public static final k h = new k("Z", "+HH:MM:ss");
        public final String e;
        public final int f;

        static {
            new k("0", "+HH:MM:ss");
        }

        public k(String str, String str2) {
            kt7.o(str, "noOffsetText");
            kt7.o(str2, "pattern");
            this.e = str;
            int i = 0;
            while (true) {
                String[] strArr = g;
                if (i >= strArr.length) {
                    throw new IllegalArgumentException(jo.n("Invalid zone offset pattern: ", str2));
                }
                if (strArr[i].equals(str2)) {
                    this.f = i;
                    return;
                }
                i++;
            }
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            Long lB = e68Var.b(q68.L);
            if (lB == null) {
                return false;
            }
            int iS = kt7.s(lB.longValue());
            if (iS == 0) {
                sb.append(this.e);
            } else {
                int iAbs = Math.abs((iS / 3600) % 100);
                int iAbs2 = Math.abs((iS / 60) % 60);
                int iAbs3 = Math.abs(iS % 60);
                int length = sb.length();
                sb.append(iS < 0 ? "-" : "+");
                sb.append((char) ((iAbs / 10) + 48));
                sb.append((char) ((iAbs % 10) + 48));
                int i = this.f;
                if (i >= 3 || (i >= 1 && iAbs2 > 0)) {
                    sb.append(i % 2 == 0 ? ":" : "");
                    sb.append((char) ((iAbs2 / 10) + 48));
                    sb.append((char) ((iAbs2 % 10) + 48));
                    iAbs += iAbs2;
                    int i2 = this.f;
                    if (i2 >= 7 || (i2 >= 5 && iAbs3 > 0)) {
                        sb.append(i2 % 2 != 0 ? "" : ":");
                        sb.append((char) ((iAbs3 / 10) + 48));
                        sb.append((char) ((iAbs3 % 10) + 48));
                        iAbs += iAbs3;
                    }
                }
                if (iAbs == 0) {
                    sb.setLength(length);
                    sb.append(this.e);
                }
            }
            return true;
        }

        public String toString() {
            String strReplace = this.e.replace("'", "''");
            StringBuilder sbZ = jo.z("Offset(");
            sbZ.append(g[this.f]);
            sbZ.append(",'");
            sbZ.append(strReplace);
            sbZ.append("')");
            return sbZ.toString();
        }
    }

    public static final class l implements e {
        public final e e;
        public final int f;
        public final char g;

        public l(e eVar, int i, char c) {
            this.e = eVar;
            this.f = i;
            this.g = c;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            int length = sb.length();
            if (!this.e.i(e68Var, sb)) {
                return false;
            }
            int length2 = sb.length() - length;
            if (length2 > this.f) {
                StringBuilder sbA = jo.A("Cannot print as output of ", length2, " characters exceeds pad width of ");
                sbA.append(this.f);
                throw new l48(sbA.toString());
            }
            for (int i = 0; i < this.f - length2; i++) {
                sb.insert(length, this.g);
            }
            return true;
        }

        public String toString() {
            String string;
            StringBuilder sbZ = jo.z("Pad(");
            sbZ.append(this.e);
            sbZ.append(",");
            sbZ.append(this.f);
            if (this.g == ' ') {
                string = ")";
            } else {
                StringBuilder sbZ2 = jo.z(",'");
                sbZ2.append(this.g);
                sbZ2.append("')");
                string = sbZ2.toString();
            }
            sbZ.append(string);
            return sbZ.toString();
        }
    }

    public enum n implements e {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            int iOrdinal = ordinal();
            if (iOrdinal == 0) {
                return "ParseCaseSensitive(true)";
            }
            if (iOrdinal == 1) {
                return "ParseCaseSensitive(false)";
            }
            if (iOrdinal == 2) {
                return "ParseStrict(true)";
            }
            if (iOrdinal == 3) {
                return "ParseStrict(false)";
            }
            throw new IllegalStateException("Unreachable");
        }
    }

    public static final class o implements e {
        public final String e;

        public o(String str) {
            this.e = str;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            sb.append(this.e);
            return true;
        }

        public String toString() {
            return jo.o("'", this.e.replace("'", "''"), "'");
        }
    }

    public static final class p implements e {
        public final y68 e;
        public final m68 f;
        public final f68 g;
        public volatile j h;

        public p(y68 y68Var, m68 m68Var, f68 f68Var) {
            this.e = y68Var;
            this.f = m68Var;
            this.g = f68Var;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            Long lB = e68Var.b(this.e);
            if (lB == null) {
                return false;
            }
            String strA = this.g.a(this.e, lB.longValue(), this.f, e68Var.b);
            if (strA != null) {
                sb.append(strA);
                return true;
            }
            if (this.h == null) {
                this.h = new j(this.e, 1, 19, j68.NORMAL);
            }
            return this.h.i(e68Var, sb);
        }

        public String toString() {
            if (this.f == m68.FULL) {
                StringBuilder sbZ = jo.z("Text(");
                sbZ.append(this.e);
                sbZ.append(")");
                return sbZ.toString();
            }
            StringBuilder sbZ2 = jo.z("Text(");
            sbZ2.append(this.e);
            sbZ2.append(",");
            sbZ2.append(this.f);
            sbZ2.append(")");
            return sbZ2.toString();
        }
    }

    public static final class q implements e {
        public final char e;
        public final int f;

        public q(char c, int i) {
            this.e = c;
            this.f = i;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            j jVar;
            j jVar2;
            j jVar3;
            Locale locale = e68Var.b;
            ConcurrentMap<String, e78> concurrentMap = e78.k;
            kt7.o(locale, "locale");
            GregorianCalendar gregorianCalendar = new GregorianCalendar(new Locale(locale.getLanguage(), locale.getCountry()));
            int firstDayOfWeek = gregorianCalendar.getFirstDayOfWeek();
            m48 m48Var = m48.SUNDAY;
            e78 e78VarA = e78.a(m48.l[((((int) ((firstDayOfWeek - 1) % 7)) + 7) + 6) % 7], gregorianCalendar.getMinimalDaysInFirstWeek());
            j68 j68Var = j68.NOT_NEGATIVE;
            char c = this.e;
            if (c != 'W') {
                if (c == 'Y') {
                    int i = this.f;
                    if (i == 2) {
                        jVar3 = new m(e78VarA.j, 2, 2, 0, m.m);
                    } else {
                        jVar3 = new j(e78VarA.j, i, 19, i < 4 ? j68.NORMAL : j68.EXCEEDS_PAD, -1, null);
                    }
                    jVar2 = jVar3;
                } else if (c == 'c' || c == 'e') {
                    jVar = new j(e78VarA.g, this.f, 2, j68Var);
                } else if (c != 'w') {
                    jVar2 = null;
                } else {
                    jVar = new j(e78VarA.i, this.f, 2, j68Var);
                }
                return jVar2.i(e68Var, sb);
            }
            jVar = new j(e78VarA.h, 1, 2, j68Var);
            jVar2 = jVar;
            return jVar2.i(e68Var, sb);
        }

        public String toString() {
            StringBuilder sbW = jo.w(30, "Localized(");
            char c = this.e;
            if (c == 'Y') {
                int i = this.f;
                if (i == 1) {
                    sbW.append("WeekBasedYear");
                } else if (i == 2) {
                    sbW.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
                } else {
                    sbW.append("WeekBasedYear,");
                    sbW.append(this.f);
                    sbW.append(",");
                    sbW.append(19);
                    sbW.append(",");
                    sbW.append(this.f < 4 ? j68.NORMAL : j68.EXCEEDS_PAD);
                }
            } else {
                if (c == 'c' || c == 'e') {
                    sbW.append("DayOfWeek");
                } else if (c == 'w') {
                    sbW.append("WeekOfWeekBasedYear");
                } else if (c == 'W') {
                    sbW.append("WeekOfMonth");
                }
                sbW.append(",");
                sbW.append(this.f);
            }
            sbW.append(")");
            return sbW.toString();
        }
    }

    public static final class r implements e {
        public final a78<z48> e;
        public final String f;

        public r(a78<z48> a78Var, String str) {
            this.e = a78Var;
            this.f = str;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            z48 z48Var = (z48) e68Var.c(this.e);
            if (z48Var == null) {
                return false;
            }
            sb.append(z48Var.K());
            return true;
        }

        public String toString() {
            return this.f;
        }
    }

    public static final class s implements e {
        public final m68 e;

        public s(m68 m68Var) {
            kt7.o(m68Var, "textStyle");
            this.e = m68Var;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            k78 k78VarL;
            z48 z48Var = (z48) e68Var.c(z68.a);
            if (z48Var == null) {
                return false;
            }
            try {
                k78VarL = z48Var.L();
            } catch (l78 unused) {
            }
            z48 z48VarA = k78VarL.e() ? k78VarL.a(o48.g) : z48Var;
            if (z48VarA instanceof a58) {
                sb.append(z48Var.K());
                return true;
            }
            u68 u68Var = e68Var.a;
            q68 q68Var = q68.K;
            boolean zD = u68Var.y(q68Var) ? z48Var.L().d(o48.N(u68Var.D(q68Var))) : false;
            TimeZone timeZone = TimeZone.getTimeZone(z48Var.K());
            m68 m68Var = this.e;
            Objects.requireNonNull(m68Var);
            sb.append(timeZone.getDisplayName(zD, m68.values()[m68Var.ordinal() & (-2)] == m68.FULL ? 1 : 0, e68Var.b));
            return true;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("ZoneText(");
            sbZ.append(this.e);
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    static {
        HashMap map = new HashMap();
        i = map;
        map.put('G', q68.J);
        map.put('y', q68.H);
        map.put('u', q68.I);
        b78 b78Var = s68.a;
        s68.b bVar = s68.b.f;
        map.put('Q', bVar);
        map.put('q', bVar);
        q68 q68Var = q68.F;
        map.put('M', q68Var);
        map.put('L', q68Var);
        map.put('D', q68.B);
        map.put('d', q68.A);
        map.put('F', q68.y);
        q68 q68Var2 = q68.x;
        map.put('E', q68Var2);
        map.put('c', q68Var2);
        map.put('e', q68Var2);
        map.put('a', q68.w);
        map.put('H', q68.u);
        map.put('k', q68.v);
        map.put('K', q68.s);
        map.put('h', q68.t);
        map.put('m', q68.q);
        map.put('s', q68.o);
        q68 q68Var3 = q68.i;
        map.put('S', q68Var3);
        map.put('A', q68.n);
        map.put('n', q68Var3);
        map.put('N', q68.j);
    }

    public c68() {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = null;
        this.d = false;
    }

    public c68 a(b68 b68Var) {
        kt7.o(b68Var, "formatter");
        d dVar = b68Var.a;
        if (dVar.f) {
            dVar = new d(dVar.e, false);
        }
        b(dVar);
        return this;
    }

    public final int b(e eVar) {
        kt7.o(eVar, "pp");
        c68 c68Var = this.a;
        int i2 = c68Var.e;
        if (i2 > 0) {
            l lVar = new l(eVar, i2, c68Var.f);
            c68Var.e = 0;
            c68Var.f = (char) 0;
            eVar = lVar;
        }
        c68Var.c.add(eVar);
        this.a.g = -1;
        return r5.c.size() - 1;
    }

    public c68 c(char c2) {
        b(new c(c2));
        return this;
    }

    public c68 d(String str) {
        kt7.o(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                b(new c(str.charAt(0)));
            } else {
                b(new o(str));
            }
        }
        return this;
    }

    public c68 e(m68 m68Var) {
        kt7.o(m68Var, "style");
        if (m68Var != m68.FULL && m68Var != m68.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        b(new h(m68Var));
        return this;
    }

    public c68 f(String str, String str2) {
        b(new k(str2, str));
        return this;
    }

    public c68 g(y68 y68Var, Map<Long, String> map) {
        kt7.o(y68Var, "field");
        kt7.o(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        m68 m68Var = m68.FULL;
        b(new p(y68Var, m68Var, new b(this, new l68.b(Collections.singletonMap(m68Var, linkedHashMap)))));
        return this;
    }

    public c68 h(y68 y68Var, m68 m68Var) {
        kt7.o(y68Var, "field");
        kt7.o(m68Var, "textStyle");
        AtomicReference<f68> atomicReference = f68.a;
        b(new p(y68Var, m68Var, f68.a.a));
        return this;
    }

    public final c68 i(j jVar) {
        j jVarB;
        c68 c68Var = this.a;
        int i2 = c68Var.g;
        if (i2 < 0 || !(c68Var.c.get(i2) instanceof j)) {
            this.a.g = b(jVar);
        } else {
            c68 c68Var2 = this.a;
            int i3 = c68Var2.g;
            j jVar2 = (j) c68Var2.c.get(i3);
            int i4 = jVar.f;
            int i5 = jVar.g;
            if (i4 == i5 && jVar.h == j68.NOT_NEGATIVE) {
                jVarB = jVar2.c(i5);
                b(jVar.b());
                this.a.g = i3;
            } else {
                jVarB = jVar2.b();
                this.a.g = b(jVar);
            }
            this.a.c.set(i3, jVarB);
        }
        return this;
    }

    public c68 j(y68 y68Var) {
        kt7.o(y68Var, "field");
        i(new j(y68Var, 1, 19, j68.NORMAL));
        return this;
    }

    public c68 k(y68 y68Var, int i2) {
        kt7.o(y68Var, "field");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException(jo.g("The width must be from 1 to 19 inclusive but was ", i2));
        }
        i(new j(y68Var, i2, i2, j68.NOT_NEGATIVE));
        return this;
    }

    public c68 l(y68 y68Var, int i2, int i3, j68 j68Var) {
        if (i2 == i3 && j68Var == j68.NOT_NEGATIVE) {
            k(y68Var, i3);
            return this;
        }
        kt7.o(y68Var, "field");
        kt7.o(j68Var, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException(jo.g("The minimum width must be from 1 to 19 inclusive but was ", i2));
        }
        if (i3 < 1 || i3 > 19) {
            throw new IllegalArgumentException(jo.g("The maximum width must be from 1 to 19 inclusive but was ", i3));
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(jo.i("The maximum width must exceed or equal the minimum width but ", i3, " < ", i2));
        }
        i(new j(y68Var, i2, i3, j68Var));
        return this;
    }

    public c68 m() {
        c68 c68Var = this.a;
        if (c68Var.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (c68Var.c.size() > 0) {
            c68 c68Var2 = this.a;
            d dVar = new d(c68Var2.c, c68Var2.d);
            this.a = this.a.b;
            b(dVar);
        } else {
            this.a = this.a.b;
        }
        return this;
    }

    public c68 n() {
        c68 c68Var = this.a;
        c68Var.g = -1;
        this.a = new c68(c68Var, true);
        return this;
    }

    public b68 o() {
        return p(Locale.getDefault());
    }

    public b68 p(Locale locale) {
        kt7.o(locale, "locale");
        while (this.a.b != null) {
            m();
        }
        return new b68(new d(this.c, false), locale, g68.e, i68.SMART, null, null, null);
    }

    public b68 q(i68 i68Var) {
        b68 b68VarO = o();
        kt7.o(i68Var, "resolverStyle");
        return kt7.e(b68VarO.d, i68Var) ? b68VarO : new b68(b68VarO.a, b68VarO.b, b68VarO.c, i68Var, b68VarO.e, b68VarO.f, b68VarO.g);
    }

    public static final class d implements e {
        public final e[] e;
        public final boolean f;

        public d(List<e> list, boolean z) {
            this.e = (e[]) list.toArray(new e[list.size()]);
            this.f = z;
        }

        @Override // c68.e
        public boolean i(e68 e68Var, StringBuilder sb) {
            int length = sb.length();
            if (this.f) {
                e68Var.d++;
            }
            try {
                for (e eVar : this.e) {
                    if (!eVar.i(e68Var, sb)) {
                        sb.setLength(length);
                        return true;
                    }
                }
                if (this.f) {
                    e68Var.a();
                }
                return true;
            } finally {
                if (this.f) {
                    e68Var.a();
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.e != null) {
                sb.append(this.f ? "[" : "(");
                for (e eVar : this.e) {
                    sb.append(eVar);
                }
                sb.append(this.f ? "]" : ")");
            }
            return sb.toString();
        }

        public d(e[] eVarArr, boolean z) {
            this.e = eVarArr;
            this.f = z;
        }
    }

    public static class j implements e {
        public static final int[] j = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};
        public final y68 e;
        public final int f;
        public final int g;
        public final j68 h;
        public final int i;

        public j(y68 y68Var, int i, int i2, j68 j68Var) {
            this.e = y68Var;
            this.f = i;
            this.g = i2;
            this.h = j68Var;
            this.i = 0;
        }

        public long a(e68 e68Var, long j2) {
            return j2;
        }

        public j b() {
            return this.i == -1 ? this : new j(this.e, this.f, this.g, this.h, -1);
        }

        public j c(int i) {
            return new j(this.e, this.f, this.g, this.h, this.i + i);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
        @Override // c68.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean i(defpackage.e68 r12, java.lang.StringBuilder r13) {
            /*
                r11 = this;
                y68 r0 = r11.e
                java.lang.Long r0 = r12.b(r0)
                r1 = 0
                if (r0 != 0) goto La
                return r1
            La:
                long r2 = r0.longValue()
                long r2 = r11.a(r12, r2)
                g68 r12 = r12.c
                r4 = -9223372036854775808
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 != 0) goto L1d
                java.lang.String r0 = "9223372036854775808"
                goto L25
            L1d:
                long r4 = java.lang.Math.abs(r2)
                java.lang.String r0 = java.lang.Long.toString(r4)
            L25:
                int r4 = r0.length()
                int r5 = r11.g
                java.lang.String r6 = " cannot be printed as the value "
                java.lang.String r7 = "Field "
                if (r4 > r5) goto Lab
                java.lang.String r0 = r12.a(r0)
                r4 = 0
                r8 = 4
                r9 = 1
                int r10 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r10 < 0) goto L63
                j68 r4 = r11.h
                int r4 = r4.ordinal()
                if (r4 == r9) goto L5d
                if (r4 == r8) goto L48
                goto L96
            L48:
                int r4 = r11.f
                r5 = 19
                if (r4 >= r5) goto L96
                int[] r5 = c68.j.j
                r4 = r5[r4]
                long r4 = (long) r4
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 < 0) goto L96
                char r2 = r12.b
                r13.append(r2)
                goto L96
            L5d:
                char r2 = r12.b
                r13.append(r2)
                goto L96
            L63:
                j68 r4 = r11.h
                int r4 = r4.ordinal()
                if (r4 == 0) goto L91
                if (r4 == r9) goto L91
                r5 = 3
                if (r4 == r5) goto L73
                if (r4 == r8) goto L91
                goto L96
            L73:
                l48 r12 = new l48
                java.lang.StringBuilder r13 = defpackage.jo.z(r7)
                y68 r0 = r11.e
                r13.append(r0)
                r13.append(r6)
                r13.append(r2)
                java.lang.String r0 = " cannot be negative according to the SignStyle"
                r13.append(r0)
                java.lang.String r13 = r13.toString()
                r12.<init>(r13)
                throw r12
            L91:
                char r2 = r12.c
                r13.append(r2)
            L96:
                int r2 = r11.f
                int r3 = r0.length()
                int r2 = r2 - r3
                if (r1 >= r2) goto La7
                char r2 = r12.a
                r13.append(r2)
                int r1 = r1 + 1
                goto L96
            La7:
                r13.append(r0)
                return r9
            Lab:
                l48 r12 = new l48
                java.lang.StringBuilder r13 = defpackage.jo.z(r7)
                y68 r0 = r11.e
                r13.append(r0)
                r13.append(r6)
                r13.append(r2)
                java.lang.String r0 = " exceeds the maximum print width of "
                r13.append(r0)
                int r0 = r11.g
                r13.append(r0)
                java.lang.String r13 = r13.toString()
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: c68.j.i(e68, java.lang.StringBuilder):boolean");
        }

        public String toString() {
            int i = this.f;
            if (i == 1 && this.g == 19 && this.h == j68.NORMAL) {
                StringBuilder sbZ = jo.z("Value(");
                sbZ.append(this.e);
                sbZ.append(")");
                return sbZ.toString();
            }
            if (i == this.g && this.h == j68.NOT_NEGATIVE) {
                StringBuilder sbZ2 = jo.z("Value(");
                sbZ2.append(this.e);
                sbZ2.append(",");
                return jo.q(sbZ2, this.f, ")");
            }
            StringBuilder sbZ3 = jo.z("Value(");
            sbZ3.append(this.e);
            sbZ3.append(",");
            sbZ3.append(this.f);
            sbZ3.append(",");
            sbZ3.append(this.g);
            sbZ3.append(",");
            sbZ3.append(this.h);
            sbZ3.append(")");
            return sbZ3.toString();
        }

        public j(y68 y68Var, int i, int i2, j68 j68Var, int i3) {
            this.e = y68Var;
            this.f = i;
            this.g = i2;
            this.h = j68Var;
            this.i = i3;
        }

        public j(y68 y68Var, int i, int i2, j68 j68Var, int i3, a aVar) {
            this.e = y68Var;
            this.f = i;
            this.g = i2;
            this.h = j68Var;
            this.i = i3;
        }
    }

    public c68(c68 c68Var, boolean z) {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = c68Var;
        this.d = z;
    }

    public static final class m extends j {
        public static final p48 m = p48.c0(2000, 1, 1);
        public final int k;
        public final e58 l;

        public m(y68 y68Var, int i, int i2, int i3, e58 e58Var) {
            super(y68Var, i, i2, j68.NOT_NEGATIVE);
            if (i < 1 || i > 10) {
                throw new IllegalArgumentException(jo.g("The width must be from 1 to 10 inclusive but was ", i));
            }
            if (i2 < 1 || i2 > 10) {
                throw new IllegalArgumentException(jo.g("The maxWidth must be from 1 to 10 inclusive but was ", i2));
            }
            if (i2 < i) {
                throw new IllegalArgumentException("The maxWidth must be greater than the width");
            }
            if (e58Var == null) {
                long j = i3;
                if (!y68Var.w().c(j)) {
                    throw new IllegalArgumentException("The base value must be within the range of the field");
                }
                if (j + j.j[i] > 2147483647L) {
                    throw new l48("Unable to add printer-parser as the range exceeds the capacity of an int");
                }
            }
            this.k = i3;
            this.l = e58Var;
        }

        @Override // c68.j
        public long a(e68 e68Var, long j) {
            long jAbs = Math.abs(j);
            int iK = this.k;
            if (this.l != null) {
                iK = j58.y(e68Var.a).k(this.l).k(this.e);
            }
            if (j >= iK) {
                int[] iArr = j.j;
                int i = this.f;
                if (j < iK + iArr[i]) {
                    return jAbs % iArr[i];
                }
            }
            return jAbs % j.j[this.g];
        }

        @Override // c68.j
        public j b() {
            return this.i == -1 ? this : new m(this.e, this.f, this.g, this.k, this.l, -1);
        }

        @Override // c68.j
        public j c(int i) {
            return new m(this.e, this.f, this.g, this.k, this.l, this.i + i);
        }

        @Override // c68.j
        public String toString() {
            StringBuilder sbZ = jo.z("ReducedValue(");
            sbZ.append(this.e);
            sbZ.append(",");
            sbZ.append(this.f);
            sbZ.append(",");
            sbZ.append(this.g);
            sbZ.append(",");
            Object objValueOf = this.l;
            if (objValueOf == null) {
                objValueOf = Integer.valueOf(this.k);
            }
            sbZ.append(objValueOf);
            sbZ.append(")");
            return sbZ.toString();
        }

        public m(y68 y68Var, int i, int i2, int i3, e58 e58Var, int i4) {
            super(y68Var, i, i2, j68.NOT_NEGATIVE, i4, null);
            this.k = i3;
            this.l = e58Var;
        }
    }
}
