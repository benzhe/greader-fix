package defpackage;

import java.util.Locale;

/* loaded from: classes2.dex */
public final class e68 {
    public u68 a;
    public Locale b;
    public g68 c;
    public int d;

    /* JADX WARN: Removed duplicated region for block: B:42:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e68(defpackage.u68 r11, defpackage.b68 r12) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e68.<init>(u68, b68):void");
    }

    public void a() {
        this.d--;
    }

    public Long b(y68 y68Var) {
        try {
            return Long.valueOf(this.a.D(y68Var));
        } catch (l48 e) {
            if (this.d > 0) {
                return null;
            }
            throw e;
        }
    }

    public <R> R c(a78<R> a78Var) {
        R r = (R) this.a.w(a78Var);
        if (r != null || this.d != 0) {
            return r;
        }
        StringBuilder sbZ = jo.z("Unable to extract value: ");
        sbZ.append(this.a.getClass());
        throw new l48(sbZ.toString());
    }

    public String toString() {
        return this.a.toString();
    }
}
