package defpackage;

import defpackage.yk7;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public abstract class tk7 implements pk7<Object>, wk7, Serializable {
    private final pk7<Object> completion;

    public tk7(pk7<Object> pk7Var) {
        this.completion = pk7Var;
    }

    public pk7<yj7> create(pk7<?> pk7Var) {
        im7.e(pk7Var, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // defpackage.wk7
    public wk7 getCallerFrame() {
        pk7<Object> pk7Var = this.completion;
        if (!(pk7Var instanceof wk7)) {
            pk7Var = null;
        }
        return (wk7) pk7Var;
    }

    public final pk7<Object> getCompletion() {
        return this.completion;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.wk7
    public StackTraceElement getStackTraceElement() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        im7.e(this, "$this$getStackTraceElementImpl");
        xk7 xk7Var = (xk7) getClass().getAnnotation(xk7.class);
        if (xk7Var == null) {
            return null;
        }
        int iV = xk7Var.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            im7.d(declaredField, "field");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i = iIntValue >= 0 ? xk7Var.l()[iIntValue] : -1;
        im7.e(this, "continuation");
        yk7.a aVar = yk7.b;
        if (aVar == null) {
            try {
                yk7.a aVar2 = new yk7.a(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(InetAddressKeys.KEY_NAME, new Class[0]));
                yk7.b = aVar2;
                aVar = aVar2;
            } catch (Exception unused2) {
                aVar = yk7.a;
                yk7.b = aVar;
            }
        }
        if (aVar != yk7.a && (method = aVar.a) != null && (objInvoke = method.invoke(getClass(), new Object[0])) != null && (method2 = aVar.b) != null && (objInvoke2 = method2.invoke(objInvoke, new Object[0])) != null) {
            Method method3 = aVar.c;
            String strInvoke = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
            str = strInvoke instanceof String ? strInvoke : null;
        }
        if (str == null) {
            strC = xk7Var.c();
        } else {
            strC = str + '/' + xk7Var.c();
        }
        return new StackTraceElement(strC, xk7Var.m(), xk7Var.f(), i);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    @Override // defpackage.pk7
    public final void resumeWith(Object obj) {
        tk7 tk7Var = this;
        while (true) {
            im7.e(tk7Var, "frame");
            pk7<Object> pk7Var = tk7Var.completion;
            im7.c(pk7Var);
            try {
                obj = tk7Var.invokeSuspend(obj);
                if (obj == sk7.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = n56.K(th);
            }
            tk7Var.releaseIntercepted();
            if (!(pk7Var instanceof tk7)) {
                pk7Var.resumeWith(obj);
                return;
            }
            tk7Var = (tk7) pk7Var;
        }
    }

    public String toString() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        StringBuilder sbZ = jo.z("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sbZ.append(stackTraceElement);
        return sbZ.toString();
    }

    public pk7<yj7> create(Object obj, pk7<?> pk7Var) {
        im7.e(pk7Var, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
