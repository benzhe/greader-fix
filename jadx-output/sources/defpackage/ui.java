package defpackage;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class ui {
    public final f4<String, Method> a;
    public final f4<String, Method> b;
    public final f4<String, Class> c;

    public ui(f4<String, Method> f4Var, f4<String, Method> f4Var2, f4<String, Class> f4Var3) {
        this.a = f4Var;
        this.b = f4Var2;
        this.c = f4Var3;
    }

    public abstract void a();

    public abstract ui b();

    public final Class c(Class<? extends wi> cls) throws ClassNotFoundException {
        Class orDefault = this.c.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        Class<?> cls2 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.c.put(cls.getName(), cls2);
        return cls2;
    }

    public final Method d(String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException {
        Method orDefault = this.a.getOrDefault(str, null);
        if (orDefault != null) {
            return orDefault;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, ui.class.getClassLoader()).getDeclaredMethod("read", ui.class);
        this.a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method orDefault = this.b.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        Class clsC = c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsC.getDeclaredMethod("write", cls, ui.class);
        this.b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean f();

    public abstract byte[] g();

    public abstract CharSequence h();

    public abstract boolean i(int i);

    public abstract int j();

    public int k(int i, int i2) {
        return !i(i2) ? i : j();
    }

    public abstract <T extends Parcelable> T l();

    public <T extends Parcelable> T m(T t, int i) {
        return !i(i) ? t : (T) l();
    }

    public abstract String n();

    public <T extends wi> T o() {
        String strN = n();
        if (strN == null) {
            return null;
        }
        try {
            return (T) d(strN).invoke(null, b());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    public abstract void p(int i);

    public abstract void q(boolean z);

    public abstract void r(byte[] bArr);

    public abstract void s(CharSequence charSequence);

    public abstract void t(int i);

    public abstract void u(Parcelable parcelable);

    public abstract void v(String str);

    /* JADX WARN: Multi-variable type inference failed */
    public void w(wi wiVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (wiVar == null) {
            v(null);
            return;
        }
        try {
            v(c(wiVar.getClass()).getName());
            ui uiVarB = b();
            try {
                e(wiVar.getClass()).invoke(null, wiVar, uiVarB);
                uiVarB.a();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(wiVar.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }
}
