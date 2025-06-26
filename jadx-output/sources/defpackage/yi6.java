package defpackage;

import defpackage.gj6;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public class yi6 {
    public static volatile yi6 b;
    public static final yi6 c = new yi6(true);
    public final Map<a, gj6.e<?, ?>> a;

    public static final class a {
        public final Object a;
        public final int b;

        public a(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.b;
        }
    }

    public yi6() {
        this.a = new HashMap();
    }

    public static yi6 a() {
        yi6 yi6Var = b;
        if (yi6Var == null) {
            synchronized (yi6.class) {
                yi6Var = b;
                if (yi6Var == null) {
                    Class<?> cls = xi6.a;
                    yi6 yi6Var2 = null;
                    if (cls != null) {
                        try {
                            yi6Var2 = (yi6) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (yi6Var2 == null) {
                        yi6Var2 = c;
                    }
                    b = yi6Var2;
                    yi6Var = yi6Var2;
                }
            }
        }
        return yi6Var;
    }

    public yi6(boolean z) {
        this.a = Collections.emptyMap();
    }
}
