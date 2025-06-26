package defpackage;

import defpackage.a43;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class b43<T_WRAPPER extends a43<T_ENGINE>, T_ENGINE> {
    public static final Logger c = Logger.getLogger(b43.class.getName());
    public static final List<Provider> d;
    public static final b43<d43, Cipher> e;
    public static final b43<g43, Mac> f;
    public static final b43<c43, KeyAgreement> g;
    public static final b43<e43, KeyPairGenerator> h;
    public static final b43<f43, KeyFactory> i;
    public T_WRAPPER a;
    public List<Provider> b = d;

    static {
        if (c50.o3()) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                String str = strArr[i2];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    c.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            d = arrayList;
        } else {
            d = new ArrayList();
        }
        e = new b43<>(new d43());
        f = new b43<>(new g43());
        g = new b43<>(new c43());
        h = new b43<>(new e43());
        i = new b43<>(new f43());
    }

    public b43(T_WRAPPER t_wrapper) {
        this.a = t_wrapper;
    }

    public final T_ENGINE a(String str) throws GeneralSecurityException {
        Iterator<Provider> it = this.b.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return (T_ENGINE) this.a.a(str, it.next());
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        return (T_ENGINE) this.a.a(str, null);
    }
}
