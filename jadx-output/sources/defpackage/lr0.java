package defpackage;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;

/* loaded from: classes.dex */
public final class lr0 implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ xs0 f;

    public lr0(Context context, xs0 xs0Var) {
        this.e = context;
        this.f = xs0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f.a(AdvertisingIdClient.getAdvertisingIdInfo(this.e));
        } catch (hy | iy | IOException | IllegalStateException e) {
            this.f.b(e);
            is0.zzc("Exception while getting advertising Id info", e);
        }
    }
}
