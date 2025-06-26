package defpackage;

import java.util.List;
import java.util.Objects;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class p08<T> {
    public final k18 a;
    public final hn7<?> b;
    public final k18 c;
    public final tl7<o18, j18, T> d;
    public final q08 e;
    public List<? extends hn7<?>> f;
    public final r08 g;

    public static final class a extends jm7 implements pl7<hn7<?>, CharSequence> {
        public static final a e = new a();

        public a() {
            super(1);
        }

        @Override // defpackage.pl7
        public CharSequence invoke(hn7<?> hn7Var) {
            hn7<?> hn7Var2 = hn7Var;
            im7.e(hn7Var2, "it");
            return q18.a(hn7Var2);
        }
    }

    public p08(k18 k18Var, hn7 hn7Var, k18 k18Var2, tl7 tl7Var, q08 q08Var, List list, r08 r08Var, s08 s08Var, int i) {
        int i2 = i & 4;
        list = (i & 32) != 0 ? hk7.e : list;
        r08Var = (i & 64) != 0 ? new r08(false, false, false, 7) : r08Var;
        s08 s08Var2 = (i & 128) != 0 ? new s08(null, 1) : null;
        im7.e(k18Var, "scopeQualifier");
        im7.e(hn7Var, "primaryType");
        im7.e(tl7Var, "definition");
        im7.e(q08Var, "kind");
        im7.e(list, "secondaryTypes");
        im7.e(r08Var, "options");
        im7.e(s08Var2, StringLookupFactory.KEY_PROPERTIES);
        this.a = k18Var;
        this.b = hn7Var;
        this.c = null;
        this.d = tl7Var;
        this.e = q08Var;
        this.f = list;
        this.g = r08Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>");
        p08 p08Var = (p08) obj;
        return ((im7.a(this.b, p08Var.b) ^ true) || (im7.a(this.c, p08Var.c) ^ true) || (im7.a(this.a, p08Var.a) ^ true)) ? false : true;
    }

    public int hashCode() {
        k18 k18Var = this.c;
        return this.a.hashCode() + ((this.b.hashCode() + ((k18Var != null ? k18Var.hashCode() : 0) * 31)) * 31);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r14 = this;
            q08 r0 = r14.e
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 39
            r1.append(r2)
            hn7<?> r3 = r14.b
            java.lang.String r3 = defpackage.q18.a(r3)
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            k18 r2 = r14.c
            java.lang.String r3 = ""
            if (r2 == 0) goto L38
            java.lang.String r2 = ",qualifier:"
            java.lang.StringBuilder r2 = defpackage.jo.z(r2)
            k18 r4 = r14.c
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            if (r2 == 0) goto L38
            goto L39
        L38:
            r2 = r3
        L39:
            k18 r4 = r14.a
            p18 r5 = defpackage.p18.e
            l18 r5 = defpackage.p18.d
            boolean r4 = defpackage.im7.a(r4, r5)
            if (r4 == 0) goto L47
            r4 = r3
            goto L56
        L47:
            java.lang.String r4 = ",scope:"
            java.lang.StringBuilder r4 = defpackage.jo.z(r4)
            k18 r5 = r14.a
            r4.append(r5)
            java.lang.String r4 = r4.toString()
        L56:
            java.util.List<? extends hn7<?>> r5 = r14.f
            boolean r5 = r5.isEmpty()
            r5 = r5 ^ 1
            if (r5 == 0) goto L76
            java.util.List<? extends hn7<?>> r6 = r14.f
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            p08$a r12 = p08.a.e
            r13 = 30
            java.lang.String r7 = ","
            java.lang.String r3 = defpackage.ek7.k(r6, r7, r8, r9, r10, r11, r12, r13)
            java.lang.String r5 = ",binds:"
            java.lang.String r3 = defpackage.jo.n(r5, r3)
        L76:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 91
            r5.append(r6)
            r5.append(r0)
            r0 = 58
            r5.append(r0)
            r5.append(r1)
            r5.append(r2)
            r5.append(r4)
            r5.append(r3)
            r0 = 93
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p08.toString():java.lang.String");
    }
}
