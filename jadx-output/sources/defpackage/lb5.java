package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class lb5 {
    public static lb5 e;
    public final Object a = new Object();
    public final Handler b = new Handler(Looper.getMainLooper(), new a());
    public c c;
    public c d;

    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            lb5 lb5Var = lb5.this;
            c cVar = (c) message.obj;
            synchronized (lb5Var.a) {
                if (lb5Var.c == cVar || lb5Var.d == cVar) {
                    lb5Var.a(cVar, 2);
                }
            }
            return true;
        }
    }

    public interface b {
        void a(int i);

        void show();
    }

    public static class c {
        public final WeakReference<b> a;
        public int b;
        public boolean c;

        public c(int i, b bVar) {
            this.a = new WeakReference<>(bVar);
            this.b = i;
        }
    }

    public static lb5 b() {
        if (e == null) {
            e = new lb5();
        }
        return e;
    }

    public final boolean a(c cVar, int i) {
        b bVar = cVar.a.get();
        if (bVar == null) {
            return false;
        }
        this.b.removeCallbacksAndMessages(cVar);
        bVar.a(i);
        return true;
    }

    public final boolean c(b bVar) {
        c cVar = this.c;
        if (cVar != null) {
            return bVar != null && cVar.a.get() == bVar;
        }
        return false;
    }

    public final boolean d(b bVar) {
        c cVar = this.d;
        if (cVar != null) {
            return bVar != null && cVar.a.get() == bVar;
        }
        return false;
    }

    public void e(b bVar) {
        synchronized (this.a) {
            if (c(bVar)) {
                c cVar = this.c;
                if (!cVar.c) {
                    cVar.c = true;
                    this.b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public void f(b bVar) {
        synchronized (this.a) {
            if (c(bVar)) {
                c cVar = this.c;
                if (cVar.c) {
                    cVar.c = false;
                    g(cVar);
                }
            }
        }
    }

    public final void g(c cVar) {
        int i = cVar.b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        this.b.removeCallbacksAndMessages(cVar);
        Handler handler = this.b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }

    public final void h() {
        c cVar = this.d;
        if (cVar != null) {
            this.c = cVar;
            this.d = null;
            b bVar = cVar.a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.c = null;
            }
        }
    }
}
