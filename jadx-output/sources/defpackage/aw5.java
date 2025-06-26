package defpackage;

import android.content.Context;
import defpackage.i47;

/* loaded from: classes.dex */
public class aw5 {
    public static final i47.f<String> f;
    public static final i47.f<String> g;
    public static volatile String h;
    public final ex5 a;
    public final op5 b;
    public final iw5 c;
    public final String d;
    public final jw5 e;

    static {
        i47.d<String> dVar = i47.c;
        f = i47.f.a("x-goog-api-client", dVar);
        g = i47.f.a("google-cloud-resource-prefix", dVar);
        h = "gl-java/";
    }

    public aw5(ex5 ex5Var, Context context, op5 op5Var, aq5 aq5Var, jw5 jw5Var) {
        this.a = ex5Var;
        this.e = jw5Var;
        this.b = op5Var;
        this.c = new iw5(ex5Var, context, aq5Var, new vv5(op5Var));
        wt5 wt5Var = aq5Var.a;
        this.d = String.format("projects/%s/databases/%s", wt5Var.e, wt5Var.f);
    }
}
