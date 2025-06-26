package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes2.dex */
public class l27 {
    public final HandlerThread a;
    public final o17 b;
    public final Handler c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public int l;
    public int m;
    public int n;

    public static class a extends Handler {
        public final l27 a;

        /* renamed from: l27$a$a, reason: collision with other inner class name */
        public class RunnableC0021a implements Runnable {
            public final /* synthetic */ Message e;

            public RunnableC0021a(a aVar, Message message) {
                this.e = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder sbZ = jo.z("Unhandled stats message.");
                sbZ.append(this.e.what);
                throw new AssertionError(sbZ.toString());
            }
        }

        public a(Looper looper, l27 l27Var) {
            super(looper);
            this.a = l27Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.a.d++;
                return;
            }
            if (i == 1) {
                this.a.e++;
                return;
            }
            if (i == 2) {
                l27 l27Var = this.a;
                long j = message.arg1;
                int i2 = l27Var.m + 1;
                l27Var.m = i2;
                long j2 = l27Var.g + j;
                l27Var.g = j2;
                l27Var.j = j2 / i2;
                return;
            }
            if (i == 3) {
                l27 l27Var2 = this.a;
                long j3 = message.arg1;
                l27Var2.n++;
                long j4 = l27Var2.h + j3;
                l27Var2.h = j4;
                l27Var2.k = j4 / l27Var2.m;
                return;
            }
            if (i != 4) {
                e27.o.post(new RunnableC0021a(this, message));
                return;
            }
            l27 l27Var3 = this.a;
            Long l = (Long) message.obj;
            l27Var3.l++;
            long jLongValue = l.longValue() + l27Var3.f;
            l27Var3.f = jLongValue;
            l27Var3.i = jLongValue / l27Var3.l;
        }
    }

    public l27(o17 o17Var) {
        this.b = o17Var;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.a = handlerThread;
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        StringBuilder sb = p27.a;
        o27 o27Var = new o27(looper);
        o27Var.sendMessageDelayed(o27Var.obtainMessage(), 1000L);
        this.c = new a(handlerThread.getLooper(), this);
    }

    public m27 a() {
        return new m27(this.b.b(), this.b.size(), this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }
}
