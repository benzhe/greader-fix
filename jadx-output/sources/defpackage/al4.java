package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class al4 {
    public final String a;
    public final bk4 b;
    public bk4 c;

    public al4(String str, ni4 ni4Var) {
        bk4 bk4Var = new bk4(null);
        this.b = bk4Var;
        this.c = bk4Var;
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        bk4 bk4Var = this.b.c;
        String str = "";
        while (bk4Var != null) {
            Object obj = bk4Var.b;
            sb.append(str);
            String str2 = bk4Var.a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            bk4Var = bk4Var.c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
