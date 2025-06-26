package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class fc7 {
    public static final zb7 a;

    public static final class a {
        public static final zb7 a = new gc7(new Handler(Looper.getMainLooper()), false);
    }

    static {
        try {
            zb7 zb7Var = a.a;
            if (zb7Var == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            a = zb7Var;
        } catch (Throwable th) {
            throw vi7.d(th);
        }
    }

    public static zb7 a() {
        zb7 zb7Var = a;
        Objects.requireNonNull(zb7Var, "scheduler == null");
        return zb7Var;
    }
}
