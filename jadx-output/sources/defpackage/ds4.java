package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ds4 {
    public static final ds4 c = new ds4(null, null);
    public final Boolean a;
    public final Boolean b;

    public ds4(Boolean bool, Boolean bool2) {
        this.a = bool;
        this.b = bool2;
    }

    public static ds4 a(Bundle bundle) {
        return bundle == null ? c : new ds4(k(bundle.getString("ad_storage")), k(bundle.getString("analytics_storage")));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.ds4 b(java.lang.String r7) {
        /*
            r0 = 0
            if (r7 == 0) goto L38
            int r1 = r7.length()
            r2 = 49
            r3 = 48
            r4 = 3
            if (r1 < r4) goto L1e
            r1 = 2
            char r1 = r7.charAt(r1)
            if (r1 == r3) goto L1b
            if (r1 == r2) goto L18
            goto L1e
        L18:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            goto L1f
        L1b:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L1f
        L1e:
            r1 = r0
        L1f:
            int r5 = r7.length()
            r6 = 4
            if (r5 < r6) goto L35
            char r7 = r7.charAt(r4)
            if (r7 == r3) goto L32
            if (r7 == r2) goto L2f
            goto L35
        L2f:
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            goto L34
        L32:
            java.lang.Boolean r7 = java.lang.Boolean.FALSE
        L34:
            r0 = r7
        L35:
            r7 = r0
            r0 = r1
            goto L39
        L38:
            r7 = r0
        L39:
            ds4 r1 = new ds4
            r1.<init>(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ds4.b(java.lang.String):ds4");
    }

    public static Boolean g(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue() && bool2.booleanValue()) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static boolean i(int i, int i2) {
        return i <= i2;
    }

    public static final int j(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public static Boolean k(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final String c() {
        StringBuilder sb = new StringBuilder("G1");
        Boolean bool = this.a;
        char c2 = '0';
        sb.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        Boolean bool2 = this.b;
        if (bool2 == null) {
            c2 = '-';
        } else if (bool2.booleanValue()) {
            c2 = '1';
        }
        sb.append(c2);
        return sb.toString();
    }

    public final boolean d() {
        Boolean bool = this.a;
        return bool == null || bool.booleanValue();
    }

    public final boolean e() {
        Boolean bool = this.b;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ds4)) {
            return false;
        }
        ds4 ds4Var = (ds4) obj;
        return j(this.a) == j(ds4Var.a) && j(this.b) == j(ds4Var.b);
    }

    public final boolean f(ds4 ds4Var) {
        Boolean bool = this.a;
        Boolean bool2 = Boolean.FALSE;
        if (bool != bool2 || ds4Var.a == bool2) {
            return this.b == bool2 && ds4Var.b != bool2;
        }
        return true;
    }

    public final ds4 h(ds4 ds4Var) {
        return new ds4(g(this.a, ds4Var.a), g(this.b, ds4Var.b));
    }

    public final int hashCode() {
        return j(this.b) + ((j(this.a) + 527) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.a;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true == bool2.booleanValue() ? "granted" : "denied");
        }
        return sb.toString();
    }
}
