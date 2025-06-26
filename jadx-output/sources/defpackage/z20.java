package defpackage;

import android.content.Context;
import android.os.IBinder;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class z20<T> {
    public final String a;
    public T b;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    public z20(String str) {
        this.a = str;
    }

    public abstract T a(IBinder iBinder);

    public final T b(Context context) throws a {
        if (this.b == null) {
            Objects.requireNonNull(context, "null reference");
            Context contextA = ky.a(context);
            if (contextA == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.b = a((IBinder) contextA.getClassLoader().loadClass(this.a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new a("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new a("Could not instantiate creator.", e3);
            }
        }
        return this.b;
    }
}
