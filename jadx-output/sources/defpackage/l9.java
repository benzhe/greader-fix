package defpackage;

import android.os.Handler;
import defpackage.k9;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class l9 implements Runnable {
    public final /* synthetic */ Callable e;
    public final /* synthetic */ Handler f;
    public final /* synthetic */ k9.c g;

    public class a implements Runnable {
        public final /* synthetic */ Object e;

        public a(Object obj) {
            this.e = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            l9.this.g.a(this.e);
        }
    }

    public l9(k9 k9Var, Callable callable, Handler handler, k9.c cVar) {
        this.e = callable;
        this.f = handler;
        this.g = cVar;
    }

    @Override // java.lang.Runnable
    public void run() throws Exception {
        Object objCall;
        try {
            objCall = this.e.call();
        } catch (Exception unused) {
            objCall = null;
        }
        this.f.post(new a(objCall));
    }
}
