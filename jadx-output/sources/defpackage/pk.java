package defpackage;

import androidx.work.ListenableWorker;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class pk implements Runnable {
    public final /* synthetic */ wm e;
    public final /* synthetic */ String f;
    public final /* synthetic */ qk g;

    public pk(qk qkVar, wm wmVar, String str) {
        this.g = qkVar;
        this.e = wmVar;
        this.f = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                ListenableWorker.a aVar = (ListenableWorker.a) this.e.get();
                if (aVar == null) {
                    vj.c().b(qk.w, String.format("%s returned a null result. Treating it as a failure.", this.g.i.c), new Throwable[0]);
                } else {
                    vj.c().a(qk.w, String.format("%s returned a %s result.", this.g.i.c, aVar), new Throwable[0]);
                    this.g.k = aVar;
                }
            } catch (InterruptedException e) {
                e = e;
                vj.c().b(qk.w, String.format("%s failed because it threw an exception/error", this.f), e);
            } catch (CancellationException e2) {
                vj.c().d(qk.w, String.format("%s was cancelled", this.f), e2);
            } catch (ExecutionException e3) {
                e = e3;
                vj.c().b(qk.w, String.format("%s failed because it threw an exception/error", this.f), e);
            }
        } finally {
            this.g.c();
        }
    }
}
