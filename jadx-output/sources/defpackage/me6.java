package defpackage;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public class me6<T> implements af6<T> {
    public final ff6 a;
    public final /* synthetic */ Class b;
    public final /* synthetic */ Type c;

    public me6(ne6 ne6Var, Class cls, Type type) throws NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        ff6 ef6Var;
        this.b = cls;
        this.c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            ef6Var = new bf6(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    ef6Var = new cf6(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    ef6Var = new df6(declaredMethod3);
                }
            } catch (Exception unused3) {
                ef6Var = new ef6();
            }
        }
        this.a = ef6Var;
    }

    @Override // defpackage.af6
    public T a() {
        try {
            return (T) this.a.b(this.b);
        } catch (Exception e) {
            StringBuilder sbZ = jo.z("Unable to invoke no-args constructor for ");
            sbZ.append(this.c);
            sbZ.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
            throw new RuntimeException(sbZ.toString(), e);
        }
    }
}
