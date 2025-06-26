package defpackage;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class iz3 {
    public static final iz3 c = new iz3();
    public final oz3 a;
    public final ConcurrentMap<Class<?>, nz3<?>> b = new ConcurrentHashMap();

    public iz3() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        oz3 oz3Var = null;
        for (int i = 0; i <= 0; i++) {
            try {
                oz3Var = (oz3) Class.forName(strArr[0]).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
                oz3Var = null;
            }
            if (oz3Var != null) {
                break;
            }
        }
        this.a = oz3Var == null ? new ny3() : oz3Var;
    }

    public final <T> nz3<T> a(Class<T> cls) {
        Charset charset = ux3.a;
        Objects.requireNonNull(cls, "messageType");
        nz3<T> nz3Var = (nz3) this.b.get(cls);
        if (nz3Var != null) {
            return nz3Var;
        }
        nz3<T> nz3VarA = this.a.a(cls);
        Objects.requireNonNull(nz3VarA, "schema");
        nz3<T> nz3Var2 = (nz3) this.b.putIfAbsent(cls, nz3VarA);
        return nz3Var2 != null ? nz3Var2 : nz3VarA;
    }

    public final <T> nz3<T> b(T t) {
        return a(t.getClass());
    }
}
