package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.Socket;
import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedActionException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public class ga7 {
    public static final Logger b = Logger.getLogger(ga7.class.getName());
    public static final String[] c = {"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};
    public static final ga7 d;
    public final Provider a;

    public static class a extends ga7 {
        public final ca7<Socket> e;
        public final ca7<Socket> f;
        public final ca7<Socket> g;
        public final ca7<Socket> h;
        public final e i;

        public a(ca7<Socket> ca7Var, ca7<Socket> ca7Var2, Method method, Method method2, ca7<Socket> ca7Var3, ca7<Socket> ca7Var4, Provider provider, e eVar) {
            super(provider);
            this.e = ca7Var;
            this.f = ca7Var2;
            this.g = ca7Var3;
            this.h = ca7Var4;
            this.i = eVar;
        }

        @Override // defpackage.ga7
        public void c(SSLSocket sSLSocket, String str, List<ha7> list) throws NoSuchMethodException, SecurityException {
            if (str != null) {
                this.e.d(sSLSocket, Boolean.TRUE);
                this.f.d(sSLSocket, str);
            }
            ca7<Socket> ca7Var = this.h;
            Objects.requireNonNull(ca7Var);
            if (ca7Var.a(sSLSocket.getClass()) != null) {
                this.h.e(sSLSocket, ga7.b(list));
            }
        }

        @Override // defpackage.ga7
        public String d(SSLSocket sSLSocket) {
            byte[] bArr;
            ca7<Socket> ca7Var = this.g;
            Objects.requireNonNull(ca7Var);
            if ((ca7Var.a(sSLSocket.getClass()) != null) && (bArr = (byte[]) this.g.e(sSLSocket, new Object[0])) != null) {
                return new String(bArr, ja7.b);
            }
            return null;
        }

        @Override // defpackage.ga7
        public e e() {
            return this.i;
        }
    }

    public static class b extends ga7 {
        public final Method e;
        public final Method f;

        public b(Provider provider, Method method, Method method2, da7 da7Var) {
            super(provider);
            this.e = method;
            this.f = method2;
        }

        @Override // defpackage.ga7
        public void c(SSLSocket sSLSocket, String str, List<ha7> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = new ArrayList(list.size());
            for (ha7 ha7Var : list) {
                if (ha7Var != ha7.HTTP_1_0) {
                    arrayList.add(ha7Var.e);
                }
            }
            try {
                this.e.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
                sSLSocket.setSSLParameters(sSLParameters);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }

        @Override // defpackage.ga7
        public String d(SSLSocket sSLSocket) {
            try {
                return (String) this.f.invoke(sSLSocket, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }

        @Override // defpackage.ga7
        public e e() {
            return e.ALPN_AND_NPN;
        }
    }

    public static class c extends ga7 {
        public final Method e;
        public final Method f;
        public final Method g;
        public final Class<?> h;
        public final Class<?> i;

        public c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2, Provider provider) {
            super(provider);
            this.e = method;
            this.f = method2;
            this.g = method3;
            this.h = cls;
            this.i = cls2;
        }

        @Override // defpackage.ga7
        public void a(SSLSocket sSLSocket) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                this.g.invoke(null, sSLSocket);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException unused2) {
            }
        }

        @Override // defpackage.ga7
        public void c(SSLSocket sSLSocket, String str, List<ha7> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ha7 ha7Var = list.get(i);
                if (ha7Var != ha7.HTTP_1_0) {
                    arrayList.add(ha7Var.e);
                }
            }
            try {
                this.e.invoke(null, sSLSocket, Proxy.newProxyInstance(ga7.class.getClassLoader(), new Class[]{this.h, this.i}, new d(arrayList)));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // defpackage.ga7
        public String d(SSLSocket sSLSocket) {
            try {
                d dVar = (d) Proxy.getInvocationHandler(this.f.invoke(null, sSLSocket));
                boolean z = dVar.b;
                if (!z && dVar.c == null) {
                    ga7.b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                }
                if (z) {
                    return null;
                }
                return dVar.c;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException unused2) {
                throw new AssertionError();
            }
        }

        @Override // defpackage.ga7
        public e e() {
            return e.ALPN_AND_NPN;
        }
    }

    public static class d implements InvocationHandler {
        public final List<String> a;
        public boolean b;
        public String c;

        public d(List<String> list) {
            this.a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = ja7.a;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.c = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (this.a.contains(list.get(i))) {
                    String str = (String) list.get(i);
                    this.c = str;
                    return str;
                }
            }
            String str2 = this.a.get(0);
            this.c = str2;
            return str2;
        }
    }

    public enum e {
        ALPN_AND_NPN,
        NPN,
        NONE
    }

    static {
        Method method;
        Provider provider;
        ga7 ga7Var;
        ga7 bVar;
        Method method2;
        Method method3;
        boolean z;
        e eVar = e.ALPN_AND_NPN;
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        boolean z2 = false;
        int i = 0;
        loop0: while (true) {
            method = null;
            if (i >= length) {
                b.log(Level.WARNING, "Unable to find Conscrypt");
                provider = null;
                break;
            }
            Provider provider2 = providers[i];
            for (String str : c) {
                if (str.equals(provider2.getClass().getName())) {
                    b.log(Level.FINE, "Found registered provider {0}", str);
                    provider = provider2;
                    break loop0;
                }
            }
            i++;
        }
        if (provider != null) {
            ca7 ca7Var = new ca7(null, "setUseSessionTickets", Boolean.TYPE);
            ca7 ca7Var2 = new ca7(null, "setHostname", String.class);
            ca7 ca7Var3 = new ca7(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            ca7 ca7Var4 = new ca7(null, "setAlpnProtocols", byte[].class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                Method method4 = cls.getMethod("tagSocket", Socket.class);
                try {
                    method = cls.getMethod("untagSocket", Socket.class);
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                }
                method2 = method4;
                method3 = method;
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                method2 = null;
                method3 = null;
            }
            if (!provider.getName().equals("GmsCore_OpenSSL") && !provider.getName().equals("Conscrypt") && !provider.getName().equals("Ssl_Guard")) {
                try {
                    ga7.class.getClassLoader().loadClass("android.net.Network");
                    z = true;
                } catch (ClassNotFoundException e2) {
                    b.log(Level.FINE, "Can't find class", (Throwable) e2);
                    z = false;
                }
                if (!z) {
                    try {
                        ga7.class.getClassLoader().loadClass("android.app.ActivityOptions");
                        z2 = true;
                    } catch (ClassNotFoundException e3) {
                        b.log(Level.FINE, "Can't find class", (Throwable) e3);
                    }
                    eVar = z2 ? e.NPN : e.NONE;
                }
            }
            bVar = new a(ca7Var, ca7Var2, method2, method3, ca7Var3, ca7Var4, provider, eVar);
        } else {
            try {
                Provider provider3 = SSLContext.getDefault().getProvider();
                try {
                    SSLContext sSLContext = SSLContext.getInstance("TLS", provider3);
                    sSLContext.init(null, null, null);
                    ((Method) AccessController.doPrivileged(new da7())).invoke(sSLContext.createSSLEngine(), new Object[0]);
                    bVar = new b(provider3, (Method) AccessController.doPrivileged(new ea7()), (Method) AccessController.doPrivileged(new fa7()), null);
                } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException unused3) {
                    try {
                        Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                        ga7Var = new c(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider3);
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                        ga7Var = new ga7(provider3);
                    }
                    bVar = ga7Var;
                }
            } catch (NoSuchAlgorithmException e4) {
                throw new RuntimeException(e4);
            }
        }
        d = bVar;
    }

    public ga7(Provider provider) {
        this.a = provider;
    }

    public static byte[] b(List<ha7> list) {
        xs7 xs7Var = new xs7();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ha7 ha7Var = list.get(i);
            if (ha7Var != ha7.HTTP_1_0) {
                xs7Var.Q(ha7Var.e.length());
                xs7Var.k0(ha7Var.e);
            }
        }
        return xs7Var.G();
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List<ha7> list) {
    }

    public String d(SSLSocket sSLSocket) {
        return null;
    }

    public e e() {
        return e.NONE;
    }
}
