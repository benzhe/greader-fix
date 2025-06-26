package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public class ql0 {
    public static zq0 a;

    public static zq0 a(Context context) {
        zq0 zq0Var;
        synchronized (ql0.class) {
            if (a == null) {
                wr3 wr3Var = os3.j.b;
                eg0 eg0Var = new eg0();
                Objects.requireNonNull(wr3Var);
                a = new as3(context, eg0Var).b(context, false);
            }
            zq0Var = a;
        }
        return zq0Var;
    }
}
