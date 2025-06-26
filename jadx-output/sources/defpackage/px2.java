package defpackage;

import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class px2 {
    public static final Logger a = Logger.getLogger(px2.class.getName());
    public static final ConcurrentMap<String, a> b = new ConcurrentHashMap();
    public static final ConcurrentMap<String, Object> c = new ConcurrentHashMap();
    public static final ConcurrentMap<String, Boolean> d = new ConcurrentHashMap();
    public static final ConcurrentMap<String, rw2<?>> e = new ConcurrentHashMap();
    public static final ConcurrentMap<Class<?>, kx2<?, ?>> f = new ConcurrentHashMap();

    public interface a {
        <P> yw2<P> b(Class<P> cls) throws GeneralSecurityException;

        yw2<?> c();

        Class<?> d();

        Class<?> e();

        Set<Class<?>> f();
    }

    public static <P> yw2<P> a(String str, Class<P> cls) throws GeneralSecurityException {
        a aVarJ = j(str);
        if (aVarJ.f().contains(cls)) {
            return aVarJ.b(cls);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(aVarJ.d());
        Set<Class<?>> setF = aVarJ.f();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : setF) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String string = sb.toString();
        throw new GeneralSecurityException(jo.s(jo.y(jo.x(string, strValueOf.length() + name.length() + 77), "Primitive type ", name, " not supported by key manager of type ", strValueOf), ", supported primitives: ", string));
    }

    public static <P> P b(String str, k53 k53Var, Class<P> cls) throws GeneralSecurityException {
        Objects.requireNonNull(cls);
        xw2 xw2Var = (xw2) a(str, cls);
        Objects.requireNonNull(xw2Var);
        try {
            return (P) xw2Var.a(xw2Var.a.g(k53Var));
        } catch (e73 e2) {
            String name = xw2Var.a.a.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e2);
        }
    }

    public static <P> P c(String str, e83 e83Var, Class<P> cls) throws GeneralSecurityException {
        xw2 xw2Var = (xw2) a(str, cls);
        String name = xw2Var.a.a.getName();
        String strConcat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (xw2Var.a.a.isInstance(e83Var)) {
            return (P) xw2Var.a(e83Var);
        }
        throw new GeneralSecurityException(strConcat);
    }

    public static synchronized <P> void d(yw2<P> yw2Var, boolean z) throws GeneralSecurityException {
        if (yw2Var == null) {
            throw new IllegalArgumentException("key manager must be non-null.");
        }
        String strA = ((xw2) yw2Var).a.a();
        h(strA, yw2Var.getClass(), z);
        b.putIfAbsent(strA, new ox2(yw2Var));
        d.put(strA, Boolean.valueOf(z));
    }

    public static synchronized void e(zw2 zw2Var) throws GeneralSecurityException {
        String strA = zw2Var.a();
        h(strA, zw2Var.getClass(), true);
        ConcurrentMap<String, a> concurrentMap = b;
        if (!concurrentMap.containsKey(strA)) {
            concurrentMap.put(strA, new rx2(zw2Var));
            c.put(strA, new sx2(zw2Var));
        }
        d.put(strA, Boolean.TRUE);
    }

    public static synchronized <B, P> void f(kx2<B, P> kx2Var) throws GeneralSecurityException {
        if (kx2Var == null) {
            throw new IllegalArgumentException("wrapper must be non-null");
        }
        Class<P> clsA = kx2Var.a();
        ConcurrentMap<Class<?>, kx2<?, ?>> concurrentMap = f;
        if (concurrentMap.containsKey(clsA)) {
            kx2<?, ?> kx2Var2 = concurrentMap.get(clsA);
            if (!kx2Var.getClass().equals(kx2Var2.getClass())) {
                Logger logger = a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(clsA);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 56);
                sb.append("Attempted overwrite of a registered SetWrapper for type ");
                sb.append(strValueOf);
                logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", clsA.getName(), kx2Var2.getClass().getName(), kx2Var.getClass().getName()));
            }
        }
        concurrentMap.put(clsA, kx2Var);
    }

    public static synchronized void g(mx2 mx2Var, zw2 zw2Var) throws GeneralSecurityException {
        Class<?> clsE;
        h("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", mx2Var.getClass(), true);
        h("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", zw2Var.getClass(), false);
        ConcurrentMap<String, a> concurrentMap = b;
        if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (clsE = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").e()) != null && !clsE.equals(zw2Var.getClass())) {
            Logger logger = a;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder(158 + "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey".length());
            sb.append("Attempted overwrite of a registered key manager for key type ");
            sb.append("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
            sb.append(" with inconsistent public key type ");
            sb.append("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
            logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
            throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", mx2Var.getClass().getName(), clsE.getName(), zw2Var.getClass().getName()));
        }
        if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").e() == null) {
            concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new qx2(mx2Var, zw2Var));
            c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new sx2(mx2Var));
        }
        ConcurrentMap<String, Boolean> concurrentMap2 = d;
        concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
        if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
            concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new rx2(zw2Var));
        }
        concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
    }

    public static synchronized void h(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        ConcurrentMap<String, a> concurrentMap = b;
        if (concurrentMap.containsKey(str)) {
            a aVar = concurrentMap.get(str);
            if (aVar.d().equals(cls)) {
                if (!z || d.get(str).booleanValue()) {
                    return;
                }
                String strValueOf = String.valueOf(str);
                throw new GeneralSecurityException(strValueOf.length() != 0 ? "New keys are already disallowed for key type ".concat(strValueOf) : new String("New keys are already disallowed for key type "));
            }
            Logger logger = a;
            Level level = Level.WARNING;
            String strValueOf2 = String.valueOf(str);
            logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", strValueOf2.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(strValueOf2) : new String("Attempted overwrite of a registered key manager for key type "));
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, aVar.d().getName(), cls.getName()));
        }
    }

    public static synchronized e83 i(i23 i23Var) throws GeneralSecurityException {
        yw2<?> yw2VarC;
        yw2VarC = j(i23Var.x()).c();
        if (!d.get(i23Var.x()).booleanValue()) {
            String strValueOf = String.valueOf(i23Var.x());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return ((xw2) yw2VarC).b(i23Var.y());
    }

    public static synchronized a j(String str) throws GeneralSecurityException {
        ConcurrentMap<String, a> concurrentMap;
        concurrentMap = b;
        if (!concurrentMap.containsKey(str)) {
            String strValueOf = String.valueOf(str);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "No key manager found for key type ".concat(strValueOf) : new String("No key manager found for key type "));
        }
        return concurrentMap.get(str);
    }

    @Deprecated
    public static rw2<?> k(String str) throws GeneralSecurityException {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        ConcurrentMap<String, rw2<?>> concurrentMap = e;
        Locale locale = Locale.US;
        rw2<?> rw2Var = concurrentMap.get(str.toLowerCase(locale));
        if (rw2Var != null) {
            return rw2Var;
        }
        String strConcat = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase(locale).startsWith("tinkaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call DeterministicAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call StreamingAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call HybridConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call MacConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call SignatureConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tink")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call TinkConfig.register().");
        }
        throw new GeneralSecurityException(strConcat);
    }
}
