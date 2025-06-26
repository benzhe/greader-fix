package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ex3 {
    public static final ex3 a;

    static {
        try {
            Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
        }
        a = new ex3(true);
    }

    public ex3() {
        new HashMap();
    }

    public ex3(boolean z) {
        Collections.emptyMap();
    }

    public static ex3 a() {
        Class<?> cls = dx3.a;
        if (cls != null) {
            try {
                return (ex3) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return a;
    }
}
