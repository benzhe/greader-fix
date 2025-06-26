package defpackage;

import defpackage.sj7;
import java.lang.reflect.Modifier;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes2.dex */
public final class pq7 {
    public static final int a = a(Throwable.class, -1);
    public static final ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    public static final WeakHashMap<Class<? extends Throwable>, pl7<Throwable, Throwable>> c = new WeakHashMap<>();

    public static final int a(Class<?> cls, int i) {
        Object objK;
        im7.e(cls, "$this$kotlin");
        sm7.a(cls);
        int i2 = 0;
        do {
            try {
                int length = cls.getDeclaredFields().length;
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    if (!Modifier.isStatic(r2[i4].getModifiers())) {
                        i3++;
                    }
                }
                i2 += i3;
                cls = cls.getSuperclass();
            } catch (Throwable th) {
                objK = n56.K(th);
            }
        } while (cls != null);
        objK = Integer.valueOf(i2);
        Object objValueOf = Integer.valueOf(i);
        if (objK instanceof sj7.a) {
            objK = objValueOf;
        }
        return ((Number) objK).intValue();
    }
}
