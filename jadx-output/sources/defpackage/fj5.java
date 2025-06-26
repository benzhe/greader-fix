package defpackage;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class fj5 extends sh5 {
    public final /* synthetic */ String e;
    public final /* synthetic */ ExecutorService f;
    public final /* synthetic */ long g;
    public final /* synthetic */ TimeUnit h;

    public fj5(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.e = str;
        this.f = executorService;
        this.g = j;
        this.h = timeUnit;
    }

    @Override // defpackage.sh5
    public void a() {
        try {
            ah5 ah5Var = ah5.a;
            ah5Var.b("Executing shutdown hook for " + this.e);
            this.f.shutdown();
            if (this.f.awaitTermination(this.g, this.h)) {
                return;
            }
            ah5Var.b(this.e + " did not shut down in the allocated time. Requesting immediate shutdown.");
            this.f.shutdownNow();
        } catch (InterruptedException unused) {
            ah5.a.b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.e));
            this.f.shutdownNow();
        }
    }
}
