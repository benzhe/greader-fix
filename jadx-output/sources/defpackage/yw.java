package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zzj;

/* loaded from: classes.dex */
public final class yw extends BroadcastReceiver {
    public yw(zzj zzjVar) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        synchronized (ds0.b) {
            ds0.c = false;
            ds0.d = false;
            is0.zzez("Ad debug logging enablement is out of date.");
        }
        zzb.zzam(context);
    }
}
