package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class p87 implements p77 {
    public static final Logger b = Logger.getLogger(p87.class.getName());
    public static final Constructor<?> c;
    public static final Method d;
    public static final RuntimeException e;
    public final Object a;

    static {
        Method method;
        Constructor<?> constructor;
        Class<?> cls;
        int i;
        try {
            cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            i = 0;
            method = cls.getMethod("add", Long.TYPE);
        } catch (Throwable th) {
            th = th;
            method = null;
        }
        try {
            cls.getMethod("sum", new Class[0]);
            Constructor<?>[] constructors = cls.getConstructors();
            int length = constructors.length;
            while (true) {
                if (i >= length) {
                    constructor = null;
                    break;
                }
                constructor = constructors[i];
                if (constructor.getParameterTypes().length == 0) {
                    break;
                } else {
                    i++;
                }
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
            b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
            constructor = null;
            if (th == null) {
            }
            c = null;
            d = null;
            e = new RuntimeException(th);
        }
        if (th == null || constructor == null) {
            c = null;
            d = null;
            e = new RuntimeException(th);
        } else {
            c = constructor;
            d = method;
            e = null;
        }
    }

    public p87() {
        RuntimeException runtimeException = e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.a = c.newInstance(new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // defpackage.p77
    public void a(long j) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            d.invoke(this.a, Long.valueOf(j));
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }
}
