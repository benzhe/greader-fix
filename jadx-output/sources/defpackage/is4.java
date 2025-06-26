package defpackage;

import android.os.Handler;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class is4 {
    public static volatile Handler d;
    public final ny4 a;
    public final Runnable b;
    public volatile long c;

    public is4(ny4 ny4Var) {
        Objects.requireNonNull(ny4Var, "null reference");
        this.a = ny4Var;
        this.b = new hs4(this, ny4Var);
    }

    public abstract void a();

    public final void b(long j) {
        c();
        if (j >= 0) {
            this.c = this.a.e().a();
            if (d().postDelayed(this.b, j)) {
                return;
            }
            this.a.a().f.b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final void c() {
        this.c = 0L;
        d().removeCallbacks(this.b);
    }

    public final Handler d() {
        Handler handler;
        if (d != null) {
            return d;
        }
        synchronized (is4.class) {
            if (d == null) {
                d = new cc4(this.a.j().getMainLooper());
            }
            handler = d;
        }
        return handler;
    }
}
