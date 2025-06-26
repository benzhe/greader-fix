package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import defpackage.pi3;
import java.io.IOException;

/* loaded from: classes.dex */
public final class rk3<T extends pi3> extends Handler implements Runnable {
    public final T e;
    public final mi3<T> f;
    public final int g;
    public final long h;
    public IOException i;
    public int j;
    public volatile Thread k;
    public volatile boolean l;
    public final /* synthetic */ qk3 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rk3(qk3 qk3Var, Looper looper, T t, mi3<T> mi3Var, int i, long j) {
        super(looper);
        this.m = qk3Var;
        this.e = t;
        this.f = mi3Var;
        this.g = i;
        this.h = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(long j) {
        c50.D(this.m.b == null);
        qk3 qk3Var = this.m;
        qk3Var.b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            this.i = null;
            qk3Var.a.execute(this);
        }
    }

    public final void b(boolean z) {
        this.l = z;
        this.i = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.e.f = true;
            if (this.k != null) {
                this.k.interrupt();
            }
        }
        if (z) {
            this.m.b = null;
            SystemClock.elapsedRealtime();
            this.f.n(this.e, true);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        mg3 mg3Var;
        if (this.l) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            this.i = null;
            qk3 qk3Var = this.m;
            qk3Var.a.execute(qk3Var.b);
            return;
        }
        if (i == 4) {
            throw ((Error) message.obj);
        }
        this.m.b = null;
        SystemClock.elapsedRealtime();
        char c = 0;
        if (this.e.f) {
            this.f.n(this.e, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 1) {
            this.f.n(this.e, false);
            return;
        }
        if (i2 == 2) {
            mi3<T> mi3Var = this.f;
            mi3Var.m(this.e);
            mi3Var.J = true;
            if (mi3Var.B == -9223372036854775807L) {
                long jR = mi3Var.r();
                mi3Var.B = jR != Long.MIN_VALUE ? 10000 + jR : 0L;
                mi3Var.j.f(new lj3(mi3Var.B, mi3Var.u.b()), null);
            }
            mi3Var.t.e(mi3Var);
            return;
        }
        if (i2 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.i = iOException;
        mi3<T> mi3Var2 = this.f;
        T t = this.e;
        mi3Var2.m(t);
        Handler handler = mi3Var2.h;
        if (handler != null && mi3Var2.i != null) {
            handler.post(new qi3(mi3Var2, iOException));
        }
        if (iOException instanceof mj3) {
            c = 3;
        } else {
            boolean z = mi3Var2.q() > mi3Var2.I;
            if (mi3Var2.F == -1 && ((mg3Var = mi3Var2.u) == null || mg3Var.g() == -9223372036854775807L)) {
                mi3Var2.G = 0L;
                mi3Var2.y = mi3Var2.w;
                int size = mi3Var2.s.size();
                for (int i3 = 0; i3 < size; i3++) {
                    mi3Var2.s.valueAt(i3).o(!mi3Var2.w || mi3Var2.C[i3]);
                }
                t.e.a = 0L;
                t.h = 0L;
                t.g = true;
            }
            mi3Var2.I = mi3Var2.q();
            if (z) {
                c = 1;
            }
        }
        if (c == 3) {
            this.m.c = this.i;
        } else if (c != 2) {
            this.j = c == 1 ? 1 : this.j + 1;
            a(Math.min((r1 - 1) * 1000, 5000));
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.k = Thread.currentThread();
            if (!this.e.f) {
                String simpleName = this.e.getClass().getSimpleName();
                c50.g(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.e.a();
                    c50.R();
                } catch (Throwable th) {
                    c50.R();
                    throw th;
                }
            }
            if (this.l) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.l) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (OutOfMemoryError e2) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e2);
            if (this.l) {
                return;
            }
            obtainMessage(3, new tk3(e2)).sendToTarget();
        } catch (Error e3) {
            Log.e("LoadTask", "Unexpected error loading stream", e3);
            if (!this.l) {
                obtainMessage(4, e3).sendToTarget();
            }
            throw e3;
        } catch (InterruptedException unused) {
            c50.D(this.e.f);
            if (this.l) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.l) {
                return;
            }
            obtainMessage(3, new tk3(e4)).sendToTarget();
        }
    }
}
