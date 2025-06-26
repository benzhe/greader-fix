package defpackage;

import android.content.Context;
import android.os.Binder;

/* loaded from: classes.dex */
public final class to3 {
    public oo3 a;
    public boolean b;
    public final Context c;
    public final Object d = new Object();

    public to3(Context context) {
        this.c = context;
    }

    public static void a(to3 to3Var) {
        synchronized (to3Var.d) {
            oo3 oo3Var = to3Var.a;
            if (oo3Var == null) {
                return;
            }
            oo3Var.disconnect();
            to3Var.a = null;
            Binder.flushPendingCommands();
        }
    }
}
