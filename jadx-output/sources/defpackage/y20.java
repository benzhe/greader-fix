package defpackage;

import android.os.IBinder;
import defpackage.x20;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class y20<T> extends x20.a {
    public final T e;

    public y20(T t) {
        this.e = t;
    }

    public static <T> T l0(x20 x20Var) {
        if (x20Var instanceof y20) {
            return ((y20) x20Var).e;
        }
        IBinder iBinderAsBinder = x20Var.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException(jo.M(64, "Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }
}
