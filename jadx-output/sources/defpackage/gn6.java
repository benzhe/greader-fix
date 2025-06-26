package defpackage;

import java.io.IOException;
import java.lang.Thread;
import java.net.SocketException;

/* loaded from: classes2.dex */
public final class gn6<T> implements tc7<Throwable> {
    public static final gn6 e = new gn6();

    @Override // defpackage.tc7
    public void accept(Throwable th) {
        Throwable cause = th;
        im7.e(cause, "throwable");
        if (cause instanceof oc7) {
            cause = cause.getCause();
        }
        if ((cause instanceof IOException) || (cause instanceof SocketException) || (cause instanceof InterruptedException)) {
            return;
        }
        if ((cause instanceof NullPointerException) || (cause instanceof IllegalArgumentException)) {
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), cause);
                return;
            }
            return;
        }
        if (!(cause instanceof IllegalStateException)) {
            p07.e("Undeliverable exception received, not sure what to do", cause);
            return;
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        im7.d(threadCurrentThread2, "Thread.currentThread()");
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = threadCurrentThread2.getUncaughtExceptionHandler();
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(Thread.currentThread(), cause);
        }
    }
}
