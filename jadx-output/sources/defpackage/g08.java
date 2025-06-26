package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* loaded from: classes2.dex */
public class g08 {
    public static <T> T a(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(g08.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
