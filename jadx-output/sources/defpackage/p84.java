package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class p84 {
    public static volatile p84 b;
    public static volatile p84 c;
    public static final p84 d = new p84(true);
    public final Map<o84, b94<?, ?>> a;

    public p84() {
        this.a = new HashMap();
    }

    public static p84 a() {
        p84 p84Var = b;
        if (p84Var == null) {
            synchronized (p84.class) {
                p84Var = b;
                if (p84Var == null) {
                    p84Var = d;
                    b = p84Var;
                }
            }
        }
        return p84Var;
    }

    public p84(boolean z) {
        this.a = Collections.emptyMap();
    }
}
