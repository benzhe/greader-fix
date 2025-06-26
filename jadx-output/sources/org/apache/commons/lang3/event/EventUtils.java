package org.apache.commons.lang3.event;

import defpackage.jo;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.reflect.MethodUtils;

/* loaded from: classes2.dex */
public class EventUtils {

    public static class EventBindingInvocationHandler implements InvocationHandler {
        private final Set<String> eventTypes;
        private final String methodName;
        private final Object target;

        public EventBindingInvocationHandler(Object obj, String str, String[] strArr) {
            this.target = obj;
            this.methodName = str;
            this.eventTypes = new HashSet(Arrays.asList(strArr));
        }

        private boolean hasMatchingParametersMethod(Method method) {
            return MethodUtils.getAccessibleMethod(this.target.getClass(), this.methodName, method.getParameterTypes()) != null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (this.eventTypes.isEmpty() || this.eventTypes.contains(method.getName())) {
                return hasMatchingParametersMethod(method) ? MethodUtils.invokeMethod(this.target, this.methodName, objArr) : MethodUtils.invokeMethod(this.target, this.methodName);
            }
            return null;
        }
    }

    public static <L> void addEventListener(Object obj, Class<L> cls, L l) {
        try {
            MethodUtils.invokeMethod(obj, "add" + cls.getSimpleName(), l);
        } catch (IllegalAccessException unused) {
            StringBuilder sbZ = jo.z("Class ");
            sbZ.append(obj.getClass().getName());
            sbZ.append(" does not have an accessible add");
            sbZ.append(cls.getSimpleName());
            sbZ.append(" method which takes a parameter of type ");
            sbZ.append(cls.getName());
            sbZ.append(".");
            throw new IllegalArgumentException(sbZ.toString());
        } catch (NoSuchMethodException unused2) {
            StringBuilder sbZ2 = jo.z("Class ");
            sbZ2.append(obj.getClass().getName());
            sbZ2.append(" does not have a public add");
            sbZ2.append(cls.getSimpleName());
            sbZ2.append(" method which takes a parameter of type ");
            sbZ2.append(cls.getName());
            sbZ2.append(".");
            throw new IllegalArgumentException(sbZ2.toString());
        } catch (InvocationTargetException e) {
            throw new RuntimeException("Unable to add listener.", e.getCause());
        }
    }

    public static <L> void bindEventsToMethod(Object obj, String str, Object obj2, Class<L> cls, String... strArr) {
        addEventListener(obj2, cls, cls.cast(Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{cls}, new EventBindingInvocationHandler(obj, str, strArr))));
    }
}
