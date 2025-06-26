package defpackage;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class aj5 implements Thread.UncaughtExceptionHandler {
    public final a a;
    public final km5 b;
    public final Thread.UncaughtExceptionHandler c;
    public final AtomicBoolean d = new AtomicBoolean(false);

    public interface a {
    }

    public aj5(a aVar, km5 km5Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = aVar;
        this.b = km5Var;
        this.c = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.d.set(true);
        try {
            try {
                if (thread == null) {
                    ah5.a.d("Could not handle uncaught exception; null thread");
                } else if (th == null) {
                    ah5.a.d("Could not handle uncaught exception; null throwable");
                } else {
                    ((mi5) this.a).a(this.b, thread, th);
                }
                ah5.a.b("Crashlytics completed exception processing. Invoking default exception handler.");
            } catch (Exception e) {
                ah5 ah5Var = ah5.a;
                if (ah5Var.a(6)) {
                    Log.e("FirebaseCrashlytics", "An error occurred in the uncaught exception handler", e);
                }
                ah5Var.b("Crashlytics completed exception processing. Invoking default exception handler.");
            }
            this.c.uncaughtException(thread, th);
            this.d.set(false);
        } catch (Throwable th2) {
            ah5.a.b("Crashlytics completed exception processing. Invoking default exception handler.");
            this.c.uncaughtException(thread, th);
            this.d.set(false);
            throw th2;
        }
    }
}
