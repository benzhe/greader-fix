package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class v22 {
    public final b20 a;
    public final x22 b;
    public final List<String> c = Collections.synchronizedList(new ArrayList());
    public final boolean d = ((Boolean) os3.j.f.a(y40.o4)).booleanValue();
    public final nz1 e;

    public v22(b20 b20Var, x22 x22Var, nz1 nz1Var) {
        this.a = b20Var;
        this.b = x22Var;
        this.e = nz1Var;
    }

    public static void a(v22 v22Var, String str, int i, long j, String str2) {
        Objects.requireNonNull(v22Var);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String string = sb.toString();
        if (!TextUtils.isEmpty(str2)) {
            string = jo.c(jo.x(str2, jo.x(string, 1)), string, ".", str2);
        }
        v22Var.c.add(string);
    }
}
