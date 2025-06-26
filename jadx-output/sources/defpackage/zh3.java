package defpackage;

import android.os.Process;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class zh3 extends Thread {
    public static final boolean k = tg0.a;
    public final BlockingQueue<j40<?>> e;
    public final BlockingQueue<j40<?>> f;
    public final hg3 g;
    public final jl3 h;
    public volatile boolean i = false;
    public final pk0 j;

    public zh3(BlockingQueue<j40<?>> blockingQueue, BlockingQueue<j40<?>> blockingQueue2, hg3 hg3Var, jl3 jl3Var) {
        this.e = blockingQueue;
        this.f = blockingQueue2;
        this.g = hg3Var;
        this.h = jl3Var;
        this.j = new pk0(this, blockingQueue2, jl3Var);
    }

    public final void a() throws InterruptedException {
        j40<?> j40VarTake = this.e.take();
        j40VarTake.zzc("cache-queue-take");
        j40VarTake.t(1);
        try {
            j40VarTake.isCanceled();
            ui3 ui3VarL = ((dn0) this.g).l(j40VarTake.zze());
            if (ui3VarL == null) {
                j40VarTake.zzc("cache-miss");
                if (!this.j.b(j40VarTake)) {
                    this.f.put(j40VarTake);
                }
                return;
            }
            if (ui3VarL.e < System.currentTimeMillis()) {
                j40VarTake.zzc("cache-hit-expired");
                j40VarTake.zza(ui3VarL);
                if (!this.j.b(j40VarTake)) {
                    this.f.put(j40VarTake);
                }
                return;
            }
            j40VarTake.zzc("cache-hit");
            c90<?> c90VarI = j40VarTake.i(new pu3(200, ui3VarL.a, ui3VarL.g, false, 0L));
            j40VarTake.zzc("cache-hit-parsed");
            if (c90VarI.c == null) {
                if (ui3VarL.f < System.currentTimeMillis()) {
                    j40VarTake.zzc("cache-hit-refresh-needed");
                    j40VarTake.zza(ui3VarL);
                    c90VarI.d = true;
                    if (this.j.b(j40VarTake)) {
                        this.h.a(j40VarTake, c90VarI);
                    } else {
                        jl3 jl3Var = this.h;
                        pk3 pk3Var = new pk3(this, j40VarTake);
                        Objects.requireNonNull(jl3Var);
                        j40VarTake.zzk();
                        j40VarTake.zzc("post-response");
                        jl3Var.a.execute(new jn3(j40VarTake, c90VarI, pk3Var));
                    }
                } else {
                    this.h.a(j40VarTake, c90VarI);
                }
                return;
            }
            j40VarTake.zzc("cache-parsing-failed");
            hg3 hg3Var = this.g;
            String strZze = j40VarTake.zze();
            dn0 dn0Var = (dn0) hg3Var;
            synchronized (dn0Var) {
                ui3 ui3VarL2 = dn0Var.l(strZze);
                if (ui3VarL2 != null) {
                    ui3VarL2.f = 0L;
                    ui3VarL2.e = 0L;
                    dn0Var.i(strZze, ui3VarL2);
                }
            }
            j40VarTake.zza((ui3) null);
            if (!this.j.b(j40VarTake)) {
                this.f.put(j40VarTake);
            }
        } finally {
            j40VarTake.t(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        if (k) {
            tg0.c("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        ((dn0) this.g).a();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.i) {
                    Thread.currentThread().interrupt();
                    return;
                }
                tg0.b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
