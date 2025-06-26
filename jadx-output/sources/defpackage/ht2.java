package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ht2 {
    public static final Object a;

    static {
        Object objB = b();
        a = objB;
        if (objB != null) {
            a("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (objB == null) {
            return;
        }
        try {
            Method methodA = a("getStackTraceDepth", Throwable.class);
            if (methodA == null) {
                return;
            }
            methodA.invoke(b(), new Throwable());
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
        }
    }

    public static Method a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object b() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }
}
