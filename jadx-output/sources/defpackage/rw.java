package defpackage;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zza;
import java.io.IOException;

/* loaded from: classes.dex */
public final class rw extends zza {
    public Context b;

    public rw(Context context) {
        this.b = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        boolean isAdIdFakeForDebugLogging;
        try {
            isAdIdFakeForDebugLogging = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.b);
        } catch (hy | iy | IOException | IllegalStateException e) {
            is0.zzc("Fail to get isAdIdFakeForDebugLogging", e);
            isAdIdFakeForDebugLogging = false;
        }
        synchronized (ds0.b) {
            ds0.c = true;
            ds0.d = isAdIdFakeForDebugLogging;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(isAdIdFakeForDebugLogging);
        is0.zzez(sb.toString());
    }
}
