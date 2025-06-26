package defpackage;

import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public abstract class ff6 {
    public static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder sbZ = jo.z("Interface can't be instantiated! Interface name: ");
            sbZ.append(cls.getName());
            throw new UnsupportedOperationException(sbZ.toString());
        }
        if (Modifier.isAbstract(modifiers)) {
            StringBuilder sbZ2 = jo.z("Abstract class can't be instantiated! Class name: ");
            sbZ2.append(cls.getName());
            throw new UnsupportedOperationException(sbZ2.toString());
        }
    }

    public abstract <T> T b(Class<T> cls) throws Exception;
}
