package defpackage;

import android.util.Log;

/* loaded from: classes2.dex */
public final class p07 {
    public static volatile boolean a = false;
    public static volatile boolean b = true;

    public static void a(String str, Object... objArr) {
        if (a) {
            d(3, null, str, objArr);
        }
    }

    public static void b(String str, Object... objArr) {
        d(6, null, str, objArr);
    }

    public static void c(Throwable th) {
        d(6, th, null, new Object[0]);
    }

    public static void d(int i, Throwable th, String str, Object... objArr) {
        if (b) {
            if (objArr.length > 0) {
                str = String.format(str, objArr);
            }
            if (th != null) {
                if (str == null) {
                    str = th.getMessage();
                }
                str = String.format("%1$s\n%2$s", str, Log.getStackTraceString(th));
            }
            Log.println(i, hz6.d, str);
        }
    }

    public static void e(String str, Object... objArr) {
        d(5, null, str, objArr);
    }
}
