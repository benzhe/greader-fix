package defpackage;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class ss3 extends Thread {
    public final BlockingQueue<j40<?>> e;
    public final fp3 f;
    public final hg3 g;
    public final jl3 h;
    public volatile boolean i = false;

    public ss3(BlockingQueue<j40<?>> blockingQueue, fp3 fp3Var, hg3 hg3Var, jl3 jl3Var) {
        this.e = blockingQueue;
        this.f = fp3Var;
        this.g = hg3Var;
        this.h = jl3Var;
    }

    public final void a() throws InterruptedException {
        j40<?> j40VarTake = this.e.take();
        SystemClock.elapsedRealtime();
        j40VarTake.t(3);
        try {
            j40VarTake.zzc("network-queue-take");
            j40VarTake.isCanceled();
            TrafficStats.setThreadStatsTag(j40VarTake.zzd());
            pu3 pu3VarZza = this.f.zza(j40VarTake);
            j40VarTake.zzc("network-http-complete");
            if (pu3VarZza.e && j40VarTake.zzl()) {
                j40VarTake.w("not-modified");
                j40VarTake.x();
                return;
            }
            c90<?> c90VarI = j40VarTake.i(pu3VarZza);
            j40VarTake.zzc("network-parse-complete");
            if (j40VarTake.zzh() && c90VarI.b != null) {
                ((dn0) this.g).i(j40VarTake.zze(), c90VarI.b);
                j40VarTake.zzc("network-cache-written");
            }
            j40VarTake.zzk();
            this.h.a(j40VarTake, c90VarI);
            j40VarTake.k(c90VarI);
        } catch (uh0 e) {
            SystemClock.elapsedRealtime();
            jl3 jl3Var = this.h;
            Objects.requireNonNull(jl3Var);
            j40VarTake.zzc("post-error");
            jl3Var.a.execute(new jn3(j40VarTake, new c90(e), null));
            j40VarTake.x();
        } catch (Exception e2) {
            Log.e("Volley", tg0.d("Unhandled exception %s", e2.toString()), e2);
            uh0 uh0Var = new uh0(e2);
            SystemClock.elapsedRealtime();
            jl3 jl3Var2 = this.h;
            Objects.requireNonNull(jl3Var2);
            j40VarTake.zzc("post-error");
            jl3Var2.a.execute(new jn3(j40VarTake, new c90(uh0Var), null));
            j40VarTake.x();
        } finally {
            j40VarTake.t(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.i) {
                    Thread.currentThread().interrupt();
                    return;
                }
                tg0.b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
