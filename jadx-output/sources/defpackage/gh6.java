package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class gh6 {
    public static final Object b = new Object();
    public static gh6 c;
    public Handler a;

    public gh6(Looper looper) {
        this.a = new vg4(looper);
    }

    public static gh6 a() {
        gh6 gh6Var;
        synchronized (b) {
            if (c == null) {
                HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                handlerThread.start();
                c = new gh6(handlerThread.getLooper());
            }
            gh6Var = c;
        }
        return gh6Var;
    }

    public <ResultT> e45<ResultT> b(final Callable<ResultT> callable) {
        final f45 f45Var = new f45();
        a().a.post(new Runnable(callable, f45Var) { // from class: qh6
            public final Callable e;
            public final f45 f;

            {
                this.e = callable;
                this.f = f45Var;
            }

            @Override // java.lang.Runnable
            public final void run() throws Exception {
                Callable callable2 = this.e;
                f45 f45Var2 = this.f;
                try {
                    f45Var2.a.s(callable2.call());
                } catch (tg6 e) {
                    f45Var2.a.r(e);
                } catch (Exception e2) {
                    f45Var2.a.r(new tg6("Internal error has occurred when executing ML Kit tasks", 13, e2));
                }
            }
        });
        return f45Var.a;
    }
}
