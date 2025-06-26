package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class zh2 implements rv2<Void> {
    @Override // defpackage.rv2
    public final void a(Throwable th) {
        zzd.zzed("Notification of cache hit failed.");
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(Void r1) {
        zzd.zzed("Notification of cache hit successful.");
    }
}
