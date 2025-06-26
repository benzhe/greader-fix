package defpackage;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class tg0 {
    public static boolean a = Log.isLoggable("Volley", 2);
    public static final String b = tg0.class.getName();

    public static class a {
        public static final boolean c = tg0.a;
        public final List<ui0> a = new ArrayList();
        public boolean b = false;

        public final synchronized void a(String str, long j) {
            if (this.b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.a.add(new ui0(str, j, SystemClock.elapsedRealtime()));
        }

        public final synchronized void b(String str) {
            long j;
            this.b = true;
            if (this.a.size() == 0) {
                j = 0;
            } else {
                long j2 = this.a.get(0).c;
                List<ui0> list = this.a;
                j = list.get(list.size() - 1).c - j2;
            }
            if (j <= 0) {
                return;
            }
            long j3 = this.a.get(0).c;
            tg0.a("(%-4d ms) %s", Long.valueOf(j), str);
            for (ui0 ui0Var : this.a) {
                long j4 = ui0Var.c;
                tg0.a("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(ui0Var.b), ui0Var.a);
                j3 = j4;
            }
        }

        public final void finalize() throws Throwable {
            if (this.b) {
                return;
            }
            b("Request on the loose");
            tg0.b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    public static void a(String str, Object... objArr) {
        Log.d("Volley", d(str, objArr));
    }

    public static void b(String str, Object... objArr) {
        Log.e("Volley", d(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        if (a) {
            Log.v("Volley", d(str, objArr));
        }
    }

    public static String d(String str, Object... objArr) {
        String strC;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                strC = "<unknown>";
                break;
            }
            if (!stackTrace[i].getClassName().equals(b)) {
                String className = stackTrace[i].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                strC = jo.c(jo.x(methodName, jo.x(strSubstring2, 1)), strSubstring2, ".", methodName);
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), strC, str);
    }
}
