package defpackage;

import java.lang.Thread;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* loaded from: classes2.dex */
public final class dp7 {
    public static final List<CoroutineExceptionHandler> a;

    static {
        Iterator it = ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator();
        im7.e(it, "$this$asSequence");
        sn7 tn7Var = new tn7(it);
        im7.e(tn7Var, "$this$constrainOnce");
        if (!(tn7Var instanceof pn7)) {
            tn7Var = new pn7(tn7Var);
        }
        a = n56.u2(tn7Var);
    }

    public static final void a(rk7 rk7Var, Throwable th) {
        Throwable runtimeException;
        Iterator<CoroutineExceptionHandler> it = a.iterator();
        while (it.hasNext()) {
            try {
                it.next().n(rk7Var, th);
            } catch (Throwable th2) {
                Thread threadCurrentThread = Thread.currentThread();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    n56.i(runtimeException, th);
                }
                uncaughtExceptionHandler.uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
