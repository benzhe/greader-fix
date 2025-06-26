package defpackage;

import java.lang.Thread;

/* loaded from: classes.dex */
public final class zl0 implements Thread.UncaughtExceptionHandler {
    public final /* synthetic */ Thread.UncaughtExceptionHandler a;
    public final /* synthetic */ xl0 b;

    public zl0(xl0 xl0Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.b = xl0Var;
        this.a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.b.c(th);
            } finally {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        } catch (Throwable unused) {
            is0.zzex("AdMob exception reporter failed reporting the exception.");
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.a;
            if (uncaughtExceptionHandler2 != null) {
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            }
        }
    }
}
