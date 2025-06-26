package butterknife;

import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import android.view.View;
import defpackage.jo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ButterKnife {
    public static final Map<Class<?>, Constructor<? extends Unbinder>> BINDINGS = new LinkedHashMap();
    private static final String TAG = "ButterKnife";
    private static boolean debug = false;

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    public static Unbinder bind(Activity activity) {
        return bind(activity, activity.getWindow().getDecorView());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Constructor<? extends Unbinder> findBindingConstructorForClass(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Constructor<? extends Unbinder> constructorFindBindingConstructorForClass;
        Map<Class<?>, Constructor<? extends Unbinder>> map = BINDINGS;
        Constructor<? extends Unbinder> constructor = map.get(cls);
        if (constructor != null || map.containsKey(cls)) {
            if (debug) {
                Log.d(TAG, "HIT: Cached in binding map.");
            }
            return constructor;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            if (!debug) {
                return null;
            }
            Log.d(TAG, "MISS: Reached framework class. Abandoning search.");
            return null;
        }
        try {
            constructorFindBindingConstructorForClass = cls.getClassLoader().loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
            if (debug) {
                Log.d(TAG, "HIT: Loaded binding class and constructor.");
            }
        } catch (ClassNotFoundException unused) {
            if (debug) {
                StringBuilder sbZ = jo.z("Not found. Trying superclass ");
                sbZ.append(cls.getSuperclass().getName());
                Log.d(TAG, sbZ.toString());
            }
            constructorFindBindingConstructorForClass = findBindingConstructorForClass(cls.getSuperclass());
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(jo.n("Unable to find binding constructor for ", name), e);
        }
        BINDINGS.put(cls, constructorFindBindingConstructorForClass);
        return constructorFindBindingConstructorForClass;
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public static Unbinder bind(View view) {
        return bind(view, view);
    }

    public static Unbinder bind(Dialog dialog) {
        return bind(dialog, dialog.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, Activity activity) {
        return bind(obj, activity.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, Dialog dialog) {
        return bind(obj, dialog.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, View view) throws NoSuchMethodException, SecurityException {
        Class<?> cls = obj.getClass();
        if (debug) {
            StringBuilder sbZ = jo.z("Looking up binding for ");
            sbZ.append(cls.getName());
            Log.d(TAG, sbZ.toString());
        }
        Constructor<? extends Unbinder> constructorFindBindingConstructorForClass = findBindingConstructorForClass(cls);
        if (constructorFindBindingConstructorForClass == null) {
            return Unbinder.EMPTY;
        }
        try {
            return constructorFindBindingConstructorForClass.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + constructorFindBindingConstructorForClass, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + constructorFindBindingConstructorForClass, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }
}
