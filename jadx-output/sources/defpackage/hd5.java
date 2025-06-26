package defpackage;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class hd5 {

    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    public static IBinder a(Class<?> cls, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, boolean z) throws a {
        try {
            return (IBinder) cls.getConstructor(IBinder.class, IBinder.class, IBinder.class, Boolean.TYPE).newInstance(iBinder, iBinder2, iBinder3, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            String name = cls.getName();
            throw new a(name.length() != 0 ? "Unable to call the default constructor of ".concat(name) : new String("Unable to call the default constructor of "), e);
        } catch (InstantiationException e2) {
            String name2 = cls.getName();
            throw new a(name2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(name2) : new String("Unable to instantiate the dynamic class "), e2);
        } catch (NoSuchMethodException e3) {
            String name3 = cls.getName();
            throw new a(name3.length() != 0 ? "Could not find the right constructor for ".concat(name3) : new String("Could not find the right constructor for "), e3);
        } catch (InvocationTargetException e4) {
            String name4 = cls.getName();
            throw new a(name4.length() != 0 ? "Exception thrown by invoked constructor in ".concat(name4) : new String("Exception thrown by invoked constructor in "), e4);
        }
    }
}
