package defpackage;

import defpackage.c68;
import defpackage.s68;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.commons.text.lookup.AbstractStringLookup;

/* loaded from: classes2.dex */
public final class b68 {
    public static final b68 h;
    public static final b68 i;
    public static final b68 j;
    public static final b68 k;
    public static final b68 l;
    public final c68.d a;
    public final Locale b;
    public final g68 c;
    public final i68 d;
    public final Set<y68> e;
    public final j58 f;
    public final z48 g;

    static {
        c68 c68Var = new c68();
        q68 q68Var = q68.I;
        j68 j68Var = j68.EXCEEDS_PAD;
        c68 c68VarL = c68Var.l(q68Var, 4, 10, j68Var);
        c68VarL.c('-');
        q68 q68Var2 = q68.F;
        c68VarL.k(q68Var2, 2);
        c68VarL.c('-');
        q68 q68Var3 = q68.A;
        c68VarL.k(q68Var3, 2);
        i68 i68Var = i68.STRICT;
        b68 b68VarQ = c68VarL.q(i68Var);
        o58 o58Var = o58.g;
        b68 b68VarB = b68VarQ.b(o58Var);
        h = b68VarB;
        c68 c68Var2 = new c68();
        c68.n nVar = c68.n.INSENSITIVE;
        c68Var2.b(nVar);
        c68Var2.a(b68VarB);
        c68.k kVar = c68.k.h;
        c68Var2.b(kVar);
        c68Var2.q(i68Var).b(o58Var);
        c68 c68Var3 = new c68();
        c68Var3.b(nVar);
        c68Var3.a(b68VarB);
        c68Var3.n();
        c68Var3.b(kVar);
        c68Var3.q(i68Var).b(o58Var);
        c68 c68Var4 = new c68();
        q68 q68Var4 = q68.u;
        c68Var4.k(q68Var4, 2);
        c68Var4.c(AbstractStringLookup.SPLIT_CH);
        q68 q68Var5 = q68.q;
        c68Var4.k(q68Var5, 2);
        c68Var4.n();
        c68Var4.c(AbstractStringLookup.SPLIT_CH);
        q68 q68Var6 = q68.o;
        c68Var4.k(q68Var6, 2);
        c68Var4.n();
        c68Var4.b(new c68.f(q68.i, 0, 9, true));
        b68 b68VarQ2 = c68Var4.q(i68Var);
        i = b68VarQ2;
        c68 c68Var5 = new c68();
        c68Var5.b(nVar);
        c68Var5.a(b68VarQ2);
        c68Var5.b(kVar);
        c68Var5.q(i68Var);
        c68 c68Var6 = new c68();
        c68Var6.b(nVar);
        c68Var6.a(b68VarQ2);
        c68Var6.n();
        c68Var6.b(kVar);
        c68Var6.q(i68Var);
        c68 c68Var7 = new c68();
        c68Var7.b(nVar);
        c68Var7.a(b68VarB);
        c68Var7.c('T');
        c68Var7.a(b68VarQ2);
        b68 b68VarB2 = c68Var7.q(i68Var).b(o58Var);
        j = b68VarB2;
        c68 c68Var8 = new c68();
        c68Var8.b(nVar);
        c68Var8.a(b68VarB2);
        c68Var8.b(kVar);
        b68 b68VarB3 = c68Var8.q(i68Var).b(o58Var);
        k = b68VarB3;
        c68 c68Var9 = new c68();
        c68Var9.a(b68VarB3);
        c68Var9.n();
        c68Var9.c('[');
        c68.n nVar2 = c68.n.SENSITIVE;
        c68Var9.b(nVar2);
        a78<z48> a78Var = c68.h;
        c68Var9.b(new c68.r(a78Var, "ZoneRegionId()"));
        c68Var9.c(']');
        c68Var9.q(i68Var).b(o58Var);
        c68 c68Var10 = new c68();
        c68Var10.a(b68VarB2);
        c68Var10.n();
        c68Var10.b(kVar);
        c68Var10.n();
        c68Var10.c('[');
        c68Var10.b(nVar2);
        c68Var10.b(new c68.r(a78Var, "ZoneRegionId()"));
        c68Var10.c(']');
        c68Var10.q(i68Var).b(o58Var);
        c68 c68Var11 = new c68();
        c68Var11.b(nVar);
        c68 c68VarL2 = c68Var11.l(q68Var, 4, 10, j68Var);
        c68VarL2.c('-');
        c68VarL2.k(q68.B, 3);
        c68VarL2.n();
        c68VarL2.b(kVar);
        c68VarL2.q(i68Var).b(o58Var);
        c68 c68Var12 = new c68();
        c68Var12.b(nVar);
        b78 b78Var = s68.a;
        c68 c68VarL3 = c68Var12.l(s68.b.h, 4, 10, j68Var);
        c68VarL3.d("-W");
        c68VarL3.k(s68.b.g, 2);
        c68VarL3.c('-');
        q68 q68Var7 = q68.x;
        c68VarL3.k(q68Var7, 1);
        c68VarL3.n();
        c68VarL3.b(kVar);
        c68VarL3.q(i68Var).b(o58Var);
        c68 c68Var13 = new c68();
        c68Var13.b(nVar);
        c68Var13.b(new c68.g(-2));
        l = c68Var13.q(i68Var);
        c68 c68Var14 = new c68();
        c68Var14.b(nVar);
        c68Var14.k(q68Var, 4);
        c68Var14.k(q68Var2, 2);
        c68Var14.k(q68Var3, 2);
        c68Var14.n();
        c68Var14.f("+HHMMss", "Z");
        c68Var14.q(i68Var).b(o58Var);
        HashMap map = new HashMap();
        map.put(1L, "Mon");
        map.put(2L, "Tue");
        map.put(3L, "Wed");
        map.put(4L, "Thu");
        map.put(5L, "Fri");
        map.put(6L, "Sat");
        map.put(7L, "Sun");
        HashMap map2 = new HashMap();
        map2.put(1L, "Jan");
        map2.put(2L, "Feb");
        map2.put(3L, "Mar");
        map2.put(4L, "Apr");
        map2.put(5L, "May");
        map2.put(6L, "Jun");
        map2.put(7L, "Jul");
        map2.put(8L, "Aug");
        map2.put(9L, "Sep");
        map2.put(10L, "Oct");
        map2.put(11L, "Nov");
        map2.put(12L, "Dec");
        c68 c68Var15 = new c68();
        c68Var15.b(nVar);
        c68Var15.b(c68.n.LENIENT);
        c68Var15.n();
        c68Var15.g(q68Var7, map);
        c68Var15.d(", ");
        c68Var15.m();
        c68 c68VarL4 = c68Var15.l(q68Var3, 1, 2, j68.NOT_NEGATIVE);
        c68VarL4.c(' ');
        c68VarL4.g(q68Var2, map2);
        c68VarL4.c(' ');
        c68VarL4.k(q68Var, 4);
        c68VarL4.c(' ');
        c68VarL4.k(q68Var4, 2);
        c68VarL4.c(AbstractStringLookup.SPLIT_CH);
        c68VarL4.k(q68Var5, 2);
        c68VarL4.n();
        c68VarL4.c(AbstractStringLookup.SPLIT_CH);
        c68VarL4.k(q68Var6, 2);
        c68VarL4.m();
        c68VarL4.c(' ');
        c68VarL4.f("+HHMM", TimeZones.GMT_ID);
        c68VarL4.q(i68.SMART).b(o58Var);
    }

    public b68(c68.d dVar, Locale locale, g68 g68Var, i68 i68Var, Set<y68> set, j58 j58Var, z48 z48Var) {
        kt7.o(dVar, "printerParser");
        this.a = dVar;
        kt7.o(locale, "locale");
        this.b = locale;
        kt7.o(g68Var, "decimalStyle");
        this.c = g68Var;
        kt7.o(i68Var, "resolverStyle");
        this.d = i68Var;
        this.e = set;
        this.f = j58Var;
        this.g = z48Var;
    }

    public String a(u68 u68Var) {
        StringBuilder sb = new StringBuilder(32);
        kt7.o(u68Var, "temporal");
        kt7.o(sb, "appendable");
        try {
            this.a.i(new e68(u68Var, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new l48(e.getMessage(), e);
        }
    }

    public b68 b(j58 j58Var) {
        return kt7.e(this.f, j58Var) ? this : new b68(this.a, this.b, this.c, this.d, this.e, j58Var, this.g);
    }

    public String toString() {
        String string = this.a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
