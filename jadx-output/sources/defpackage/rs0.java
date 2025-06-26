package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class rs0 implements Executor {
    public final Handler e = new zzg(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.e.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            zzr.zzkv();
            zzj.zza(zzr.zzkz().e, th);
            throw th;
        }
    }
}
