package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public class i20 {
    public static i20 b = new i20();
    public h20 a = null;

    public static h20 a(Context context) {
        h20 h20Var;
        i20 i20Var = b;
        synchronized (i20Var) {
            if (i20Var.a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                i20Var.a = new h20(context);
            }
            h20Var = i20Var.a;
        }
        return h20Var;
    }
}
