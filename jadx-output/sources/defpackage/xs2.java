package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class xs2 {
    public final String a;
    public final zs2 b;
    public zs2 c;

    public xs2(String str, ys2 ys2Var) {
        zs2 zs2Var = new zs2(null);
        this.b = zs2Var;
        this.c = zs2Var;
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        zs2 zs2Var = this.b.b;
        String str = "";
        while (zs2Var != null) {
            Object obj = zs2Var.a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            zs2Var = zs2Var.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
