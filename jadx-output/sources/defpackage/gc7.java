package defpackage;

import android.os.Handler;
import android.os.Message;
import defpackage.zb7;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class gc7 extends zb7 {
    public final Handler a;

    public static final class a extends zb7.b {
        public final Handler e;
        public final boolean f;
        public volatile boolean g;

        public a(Handler handler, boolean z) {
            this.e = handler;
            this.f = z;
        }

        @Override // zb7.b
        public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
            zc7 zc7Var = zc7.INSTANCE;
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.g) {
                return zc7Var;
            }
            Handler handler = this.e;
            b bVar = new b(handler, runnable);
            Message messageObtain = Message.obtain(handler, bVar);
            messageObtain.obj = this;
            if (this.f) {
                messageObtain.setAsynchronous(true);
            }
            this.e.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
            if (!this.g) {
                return bVar;
            }
            this.e.removeCallbacks(bVar);
            return zc7Var;
        }

        @Override // defpackage.ic7
        public void k() {
            this.g = true;
            this.e.removeCallbacksAndMessages(this);
        }
    }

    public static final class b implements Runnable, ic7 {
        public final Handler e;
        public final Runnable f;
        public volatile boolean g;

        public b(Handler handler, Runnable runnable) {
            this.e = handler;
            this.f = runnable;
        }

        @Override // defpackage.ic7
        public void k() {
            this.e.removeCallbacks(this);
            this.g = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f.run();
            } catch (Throwable th) {
                n56.z1(th);
            }
        }
    }

    public gc7(Handler handler, boolean z) {
        this.a = handler;
    }

    @Override // defpackage.zb7
    public zb7.b a() {
        return new a(this.a, false);
    }

    @Override // defpackage.zb7
    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        Handler handler = this.a;
        b bVar = new b(handler, runnable);
        this.a.sendMessageDelayed(Message.obtain(handler, bVar), timeUnit.toMillis(j));
        return bVar;
    }
}
