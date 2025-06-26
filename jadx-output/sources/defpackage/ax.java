package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzj;

/* loaded from: classes.dex */
public final class ax extends BroadcastReceiver {
    public final /* synthetic */ zzj a;

    public ax(zzj zzjVar, uw uwVar) {
        this.a = zzjVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.a.c = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.a.c = false;
        }
    }
}
