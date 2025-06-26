package defpackage;

import defpackage.e83;
import defpackage.g23;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zw2<KeyProtoT extends e83> {
    public final Class<KeyProtoT> a;
    public final Map<Class<?>, ax2<?, KeyProtoT>> b;
    public final Class<?> c;

    @SafeVarargs
    public zw2(Class<KeyProtoT> cls, ax2<?, KeyProtoT>... ax2VarArr) {
        this.a = cls;
        HashMap map = new HashMap();
        for (ax2<?, KeyProtoT> ax2Var : ax2VarArr) {
            if (map.containsKey(ax2Var.a)) {
                String strValueOf = String.valueOf(ax2Var.a.getCanonicalName());
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(strValueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            map.put(ax2Var.a, ax2Var);
        }
        if (ax2VarArr.length > 0) {
            this.c = ax2VarArr[0].a;
        } else {
            this.c = Void.class;
        }
        this.b = Collections.unmodifiableMap(map);
    }

    public abstract String a();

    public final <P> P b(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        ax2<?, KeyProtoT> ax2Var = this.b.get(cls);
        if (ax2Var != null) {
            return (P) ax2Var.a(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalArgumentException(jo.c(jo.x(canonicalName, 41), "Requested primitive class ", canonicalName, " not supported."));
    }

    public abstract g23.a c();

    public final Set<Class<?>> d() {
        return this.b.keySet();
    }

    public bx2<?, KeyProtoT> e() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract void f(KeyProtoT keyprotot) throws GeneralSecurityException;

    public abstract KeyProtoT g(k53 k53Var) throws e73;
}
