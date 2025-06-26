package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public class oe6<T> implements af6<T> {
    public final /* synthetic */ Constructor a;

    public oe6(ne6 ne6Var, Constructor constructor) {
        this.a = constructor;
    }

    @Override // defpackage.af6
    public T a() {
        try {
            return (T) this.a.newInstance(null);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InstantiationException e2) {
            StringBuilder sbZ = jo.z("Failed to invoke ");
            sbZ.append(this.a);
            sbZ.append(" with no args");
            throw new RuntimeException(sbZ.toString(), e2);
        } catch (InvocationTargetException e3) {
            StringBuilder sbZ2 = jo.z("Failed to invoke ");
            sbZ2.append(this.a);
            sbZ2.append(" with no args");
            throw new RuntimeException(sbZ2.toString(), e3.getTargetException());
        }
    }
}
