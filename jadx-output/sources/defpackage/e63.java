package defpackage;

import defpackage.s63;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public class e63 {
    public static volatile e63 b;
    public static volatile e63 c;
    public static final e63 d = new e63(true);
    public final Map<a, s63.f<?, ?>> a;

    public static final class a {
        public final Object a;
        public final int b;

        public a(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.b;
        }
    }

    public e63() {
        this.a = new HashMap();
    }

    public static e63 a() {
        e63 e63Var = b;
        if (e63Var == null) {
            synchronized (e63.class) {
                e63Var = b;
                if (e63Var == null) {
                    e63Var = d;
                    b = e63Var;
                }
            }
        }
        return e63Var;
    }

    public static e63 b() {
        e63 e63Var = c;
        if (e63Var != null) {
            return e63Var;
        }
        synchronized (e63.class) {
            e63 e63Var2 = c;
            if (e63Var2 != null) {
                return e63Var2;
            }
            e63 e63VarB = p63.b(e63.class);
            c = e63VarB;
            return e63VarB;
        }
    }

    public e63(boolean z) {
        this.a = Collections.emptyMap();
    }
}
