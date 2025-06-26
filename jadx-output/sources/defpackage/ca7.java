package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class ca7<T> {
    public final Class<?> a;
    public final String b;
    public final Class[] c;

    public ca7(Class<?> cls, String str, Class... clsArr) {
        this.a = cls;
        this.b = str;
        this.c = clsArr;
    }

    public static Method b(Class<?> cls, String str, Class[] clsArr) throws NoSuchMethodException, SecurityException {
        if (cls == null) {
            return null;
        }
        try {
            if ((cls.getModifiers() & 1) == 0) {
                return b(cls.getSuperclass(), str, clsArr);
            }
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public final Method a(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Class<?> cls2;
        String str = this.b;
        if (str == null) {
            return null;
        }
        Method methodB = b(cls, str, this.c);
        if (methodB == null || (cls2 = this.a) == null || cls2.isAssignableFrom(methodB.getReturnType())) {
            return methodB;
        }
        return null;
    }

    public Object c(T t, Object... objArr) throws NoSuchMethodException, SecurityException, InvocationTargetException {
        Method methodA = a(t.getClass());
        if (methodA == null) {
            StringBuilder sbZ = jo.z("Method ");
            sbZ.append(this.b);
            sbZ.append(" not supported for object ");
            sbZ.append(t);
            throw new AssertionError(sbZ.toString());
        }
        try {
            return methodA.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    public Object d(T t, Object... objArr) throws NoSuchMethodException, SecurityException {
        try {
            Method methodA = a(t.getClass());
            if (methodA == null) {
                return null;
            }
            try {
                return methodA.invoke(t, objArr);
            } catch (IllegalAccessException unused) {
                return null;
            }
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object e(T t, Object... objArr) {
        try {
            return c(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
