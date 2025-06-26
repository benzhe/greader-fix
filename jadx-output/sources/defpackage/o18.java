package defpackage;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class o18 {
    public final ArrayList<o18> a;
    public final m18 b;
    public Object c;
    public j18 d;
    public final String e;
    public final p18 f;
    public final k08 g;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> extends jm7 implements el7<T> {
        public final /* synthetic */ k18 f;
        public final /* synthetic */ hn7 g;
        public final /* synthetic */ el7 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k18 k18Var, hn7 hn7Var, el7 el7Var) {
            super(0);
            this.f = k18Var;
            this.g = hn7Var;
            this.h = el7Var;
        }

        @Override // defpackage.el7
        public final T invoke() {
            return (T) o18.this.b(this.f, this.g, this.h);
        }
    }

    public o18(String str, p18 p18Var, k08 k08Var) {
        im7.e(str, "id");
        im7.e(p18Var, "_scopeDefinition");
        im7.e(k08Var, "_koin");
        this.e = str;
        this.f = p18Var;
        this.g = k08Var;
        this.a = new ArrayList<>();
        this.b = new m18(k08Var, this);
        new ArrayList();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T a(defpackage.hn7<T> r6, defpackage.k18 r7, defpackage.el7<? extends defpackage.j18> r8) {
        /*
            r5 = this;
            java.lang.String r0 = "clazz"
            defpackage.im7.e(r6, r0)
            k08 r0 = r5.g
            h18 r0 = r0.b
            g18 r1 = defpackage.g18.DEBUG
            boolean r0 = r0.c(r1)
            if (r0 == 0) goto L98
            r0 = 39
            if (r7 == 0) goto L2c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " with qualifier '"
            r1.append(r2)
            r1.append(r7)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            if (r1 == 0) goto L2c
            goto L2e
        L2c:
            java.lang.String r1 = ""
        L2e:
            k08 r2 = r5.g
            h18 r2 = r2.b
            java.lang.String r3 = "+- '"
            java.lang.StringBuilder r3 = defpackage.jo.z(r3)
            java.lang.String r4 = defpackage.q18.a(r6)
            r3.append(r4)
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.a(r0)
            o18$a r0 = new o18$a
            r0.<init>(r7, r6, r8)
            java.lang.String r7 = "code"
            defpackage.im7.e(r0, r7)
            ko7 r7 = defpackage.ko7.b
            jo7 r7 = r7.a()
            java.lang.Object r8 = r0.invoke()
            double r0 = r7.a()
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.MILLISECONDS
            double r0 = defpackage.ho7.i(r0, r7)
            java.lang.Double r7 = java.lang.Double.valueOf(r0)
            double r0 = r7.doubleValue()
            k08 r7 = r5.g
            h18 r7 = r7.b
            java.lang.String r2 = "|- '"
            java.lang.StringBuilder r2 = defpackage.jo.z(r2)
            java.lang.String r6 = defpackage.q18.a(r6)
            r2.append(r6)
            java.lang.String r6 = "' in "
            r2.append(r6)
            r2.append(r0)
            java.lang.String r6 = " ms"
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            r7.a(r6)
            return r8
        L98:
            java.lang.Object r6 = r5.b(r7, r6, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o18.a(hn7, k18, el7):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b2 A[EDGE_INSN: B:77:0x01b2->B:54:0x01b2 BREAK  A[LOOP:2: B:45:0x0151->B:81:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[LOOP:2: B:45:0x0151->B:81:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T b(defpackage.k18 r11, defpackage.hn7<T> r12, defpackage.el7<? extends defpackage.j18> r13) throws defpackage.y08, defpackage.v08 {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o18.b(k18, hn7, el7):java.lang.Object");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o18)) {
            return false;
        }
        o18 o18Var = (o18) obj;
        return im7.a(this.e, o18Var.e) && im7.a(this.f, o18Var.f) && im7.a(this.g, o18Var.g);
    }

    public int hashCode() {
        String str = this.e;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        p18 p18Var = this.f;
        int iHashCode2 = (iHashCode + (p18Var != null ? p18Var.hashCode() : 0)) * 31;
        k08 k08Var = this.g;
        return iHashCode2 + (k08Var != null ? k08Var.hashCode() : 0);
    }

    public String toString() {
        return jo.s(jo.z("['"), this.e, "']");
    }
}
