package defpackage;

import com.google.android.gms.ads.internal.util.zza;
import java.util.Objects;

/* loaded from: classes.dex */
public final class qw implements Runnable {
    public final /* synthetic */ zza e;

    public qw(zza zzaVar) {
        this.e = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zza zzaVar = this.e;
        Thread.currentThread();
        Objects.requireNonNull(zzaVar);
        this.e.zzwp();
    }
}
