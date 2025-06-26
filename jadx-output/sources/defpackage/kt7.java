package defpackage;

import android.content.ComponentCallbacks;
import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.TimeUnit;
import org.apache.commons.text.lookup.PropertiesStringLookup;

/* loaded from: classes2.dex */
public final /* synthetic */ class kt7 {
    public static Context a;

    public static final void a(HashSet<p08<?>> hashSet, p08<?> p08Var) throws u08 {
        im7.e(hashSet, "$this$addDefinition");
        im7.e(p08Var, "bean");
        boolean zAdd = hashSet.add(p08Var);
        if (!zAdd && !p08Var.g.b) {
            throw new u08("Definition '" + p08Var + "' try to override existing definition. Please use override option to fix it");
        }
        if (zAdd || !p08Var.g.b) {
            return;
        }
        hashSet.remove(p08Var);
        hashSet.add(p08Var);
    }

    public static final Context b(o18 o18Var) throws h08 {
        im7.e(o18Var, "$this$androidContext");
        try {
            return (Context) o18Var.a(sm7.a(Context.class), null, null);
        } catch (Exception unused) {
            throw new h08("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }

    public static int c(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int d(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static long f(long j, long j2) {
        return j >= 0 ? j / j2 : ((j + 1) / j2) - 1;
    }

    public static int g(int i, int i2) {
        return ((i % i2) + i2) % i2;
    }

    public static int h(long j, int i) {
        long j2 = i;
        return (int) (((j % j2) + j2) % j2);
    }

    public static long i(long j, long j2) {
        return ((j % j2) + j2) % j2;
    }

    public static final k08 j(ComponentCallbacks componentCallbacks) {
        im7.e(componentCallbacks, "$this$getKoin");
        if (componentCallbacks instanceof n08) {
            return ((n08) componentCallbacks).a();
        }
        k08 k08Var = o08.a;
        if (k08Var != null) {
            return k08Var;
        }
        throw new IllegalStateException("KoinApplication has not been started".toString());
    }

    public static final String k(hn7<?> hn7Var, k18 k18Var) {
        im7.e(hn7Var, "clazz");
        if ((k18Var != null ? k18Var.getValue() : null) == null) {
            return q18.a(hn7Var);
        }
        return q18.a(hn7Var) + PropertiesStringLookup.SEPARATOR + k18Var.getValue();
    }

    public static void l(Context context, String str) {
        try {
            System.loadLibrary(str);
        } catch (UnsatisfiedLinkError unused) {
            if ("pl_droidsonroids_gif_surface".equals(str)) {
                l(context, "pl_droidsonroids_gif");
            }
            if (context == null) {
                if (a == null) {
                    try {
                        a = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
                    } catch (Exception e) {
                        throw new RuntimeException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e);
                    }
                }
                context = a;
            }
            String strMapLibraryName = System.mapLibraryName(str);
            synchronized (x78.class) {
                System.load(x78.c(context, strMapLibraryName).getAbsolutePath());
            }
        }
    }

    public static final double m(el7<yj7> el7Var) {
        im7.e(el7Var, "code");
        jo7 jo7VarA = ko7.b.a();
        el7Var.invoke();
        return ho7.i(jo7VarA.a(), TimeUnit.MILLISECONDS);
    }

    public static i18 n(boolean z, boolean z2, pl7 pl7Var, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        im7.e(pl7Var, "moduleDeclaration");
        i18 i18Var = new i18(z, z2);
        pl7Var.invoke(i18Var);
        return i18Var;
    }

    public static <T> T o(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(jo.n(str, " must not be null"));
    }

    public static int p(int i, int i2) {
        int i3 = i + i2;
        if ((i ^ i3) >= 0 || (i ^ i2) < 0) {
            return i3;
        }
        throw new ArithmeticException(jo.i("Addition overflows an int: ", i, " + ", i2));
    }

    public static long q(long j, long j2) {
        long j3 = j + j2;
        if ((j ^ j3) >= 0 || (j ^ j2) < 0) {
            return j3;
        }
        throw new ArithmeticException("Addition overflows a long: " + j + " + " + j2);
    }

    public static long r(long j, int i) {
        if (i == -1) {
            if (j != Long.MIN_VALUE) {
                return -j;
            }
            throw new ArithmeticException("Multiplication overflows a long: " + j + " * " + i);
        }
        if (i == 0) {
            return 0L;
        }
        if (i == 1) {
            return j;
        }
        long j2 = i;
        long j3 = j * j2;
        if (j3 / j2 == j) {
            return j3;
        }
        throw new ArithmeticException("Multiplication overflows a long: " + j + " * " + i);
    }

    public static int s(long j) {
        if (j > 2147483647L || j < -2147483648L) {
            throw new ArithmeticException(jo.j("Calculation overflows an int: ", j));
        }
        return (int) j;
    }

    public static final int t(st7 st7Var, int i) {
        int i2;
        im7.e(st7Var, "$this$segment");
        int[] iArr = st7Var.k;
        int i3 = i + 1;
        int length = st7Var.j.length;
        im7.e(iArr, "$this$binarySearch");
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 >= i3) {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                } else {
                    i5 = i2 + 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }
}
