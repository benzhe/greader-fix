package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public class gk4 {
    public static volatile gk4 a;
    public static final gk4 b = new gk4(true);

    public gk4() {
        new HashMap();
    }

    public static gk4 a() {
        gk4 gk4Var = a;
        if (gk4Var == null) {
            synchronized (gk4.class) {
                gk4Var = a;
                if (gk4Var == null) {
                    gk4Var = b;
                    a = gk4Var;
                }
            }
        }
        return gk4Var;
    }

    public gk4(boolean z) {
        Collections.emptyMap();
    }
}
