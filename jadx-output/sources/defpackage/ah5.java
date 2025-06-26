package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public class ah5 {
    public static final ah5 a = new ah5("FirebaseCrashlytics");

    public ah5(String str) {
    }

    public final boolean a(int i) {
        return 4 <= i || Log.isLoggable("FirebaseCrashlytics", i);
    }

    public void b(String str) {
        if (a(3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public void c(String str, Throwable th) {
        if (a(3)) {
            Log.d("FirebaseCrashlytics", str, th);
        }
    }

    public void d(String str) {
        if (a(6)) {
            Log.e("FirebaseCrashlytics", str, null);
        }
    }

    public void e(String str, Throwable th) {
        if (a(6)) {
            Log.e("FirebaseCrashlytics", str, th);
        }
    }

    public void f(String str) {
        if (a(5)) {
            Log.w("FirebaseCrashlytics", str, null);
        }
    }
}
