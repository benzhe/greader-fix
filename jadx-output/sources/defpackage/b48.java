package defpackage;

import defpackage.k48;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.impl.StaticLoggerBinder;

/* loaded from: classes2.dex */
public final class b48 {
    public static volatile int a;
    public static final j48 b = new j48();
    public static final h48 c = new h48();
    public static boolean d;
    public static final String[] e;
    public static String f;

    static {
        String property = null;
        try {
            property = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
        }
        d = property == null ? false : property.equalsIgnoreCase("true");
        e = new String[]{"1.6", "1.7"};
        f = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    public static final void a() {
        Set<URL> setB;
        try {
            if (g()) {
                setB = null;
            } else {
                setB = b();
                j(setB);
            }
            StaticLoggerBinder.getSingleton();
            a = 3;
            i(setB);
            c();
            h();
            j48 j48Var = b;
            j48Var.b.clear();
            j48Var.c.clear();
        } catch (Exception e2) {
            a = 2;
            k48.b("Failed to instantiate SLF4J LoggerFactory", e2);
            throw new IllegalStateException("Unexpected initialization failure", e2);
        } catch (NoClassDefFoundError e3) {
            String message = e3.getMessage();
            boolean z = false;
            if (message != null && (message.contains("org/slf4j/impl/StaticLoggerBinder") || message.contains("org.slf4j.impl.StaticLoggerBinder"))) {
                z = true;
            }
            if (!z) {
                a = 2;
                k48.b("Failed to instantiate SLF4J LoggerFactory", e3);
                throw e3;
            }
            a = 4;
            k48.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            k48.a("Defaulting to no-operation (NOP) logger implementation");
            k48.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError e4) {
            String message2 = e4.getMessage();
            if (message2 != null && message2.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                a = 2;
                k48.a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                k48.a("Your binding is version 1.5.5 or earlier.");
                k48.a("Upgrade your binding to version 1.6.x.");
            }
            throw e4;
        }
    }

    public static Set<URL> b() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = b48.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(f) : classLoader.getResources(f);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e2) {
            k48.b("Error getting resources from path", e2);
        }
        return linkedHashSet;
    }

    public static void c() {
        j48 j48Var = b;
        synchronized (j48Var) {
            j48Var.a = true;
            Objects.requireNonNull(j48Var);
            Iterator it = new ArrayList(j48Var.b.values()).iterator();
            while (it.hasNext()) {
                i48 i48Var = (i48) it.next();
                i48Var.f = f(i48Var.e);
            }
        }
    }

    public static z38 d() {
        if (a == 0) {
            synchronized (b48.class) {
                if (a == 0) {
                    a = 1;
                    a();
                    if (a == 3) {
                        k();
                    }
                }
            }
        }
        int i = a;
        if (i == 1) {
            return b;
        }
        if (i == 2) {
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        if (i == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i == 4) {
            return c;
        }
        throw new IllegalStateException("Unreachable code");
    }

    public static a48 e(Class<?> cls) {
        int i;
        a48 a48VarA = d().a(cls.getName());
        if (d) {
            k48.b bVar = k48.a;
            Class<?> cls2 = null;
            if (bVar == null) {
                if (k48.b) {
                    bVar = null;
                } else {
                    try {
                        bVar = new k48.b(null);
                    } catch (SecurityException unused) {
                        bVar = null;
                    }
                    k48.a = bVar;
                    k48.b = true;
                }
            }
            if (bVar != null) {
                Class<?>[] classContext = bVar.getClassContext();
                String name = k48.class.getName();
                int i2 = 0;
                while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
                    i2++;
                }
                if (i2 >= classContext.length || (i = i2 + 2) >= classContext.length) {
                    throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                }
                cls2 = classContext[i];
            }
            if (cls2 != null && (!cls2.isAssignableFrom(cls))) {
                k48.a(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", a48VarA.c(), cls2.getName()));
                k48.a("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        return a48VarA;
    }

    public static a48 f(String str) {
        return d().a(str);
    }

    public static boolean g() {
        String property;
        try {
            property = System.getProperty("java.vendor.url");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return false;
        }
        return property.toLowerCase().contains("android");
    }

    public static void h() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        LinkedBlockingQueue<e48> linkedBlockingQueue = b.c;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, 128) != 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                e48 e48Var = (e48) it.next();
                if (e48Var != null) {
                    i48 i48Var = e48Var.a;
                    String str = i48Var.e;
                    if (i48Var.f == null) {
                        throw new IllegalStateException("Delegate logger cannot be null at this state.");
                    }
                    if (!(i48Var.f instanceof g48)) {
                        if (!i48Var.g()) {
                            k48.a(str);
                        } else if (i48Var.g()) {
                            try {
                                i48Var.h.invoke(i48Var.f, e48Var);
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i2 = i + 1;
                if (i == 0) {
                    if (e48Var.a.g()) {
                        k48.a("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        k48.a("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        k48.a("See also http://www.slf4j.org/codes.html#replay");
                    } else if (!(e48Var.a.f instanceof g48)) {
                        k48.a("The following set of substitute loggers may have been accessed");
                        k48.a("during the initialization phase. Logging calls during this");
                        k48.a("phase were not honored. However, subsequent logging calls to these");
                        k48.a("loggers will work as normally expected.");
                        k48.a("See also http://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i2;
            }
            arrayList.clear();
        }
    }

    public static void i(Set<URL> set) {
        if (set != null) {
            if (set.size() > 1) {
                StringBuilder sbZ = jo.z("Actual binding is of type [");
                sbZ.append(StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr());
                sbZ.append("]");
                k48.a(sbZ.toString());
            }
        }
    }

    public static void j(Set<URL> set) {
        if (set.size() > 1) {
            k48.a("Class path contains multiple SLF4J bindings.");
            Iterator<URL> it = set.iterator();
            while (it.hasNext()) {
                k48.a("Found binding in [" + it.next() + "]");
            }
            k48.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    public static final void k() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : e) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            k48.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(e).toString());
            k48.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            k48.b("Unexpected problem occured during version sanity check", th);
        }
    }
}
