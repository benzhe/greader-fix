package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.ads.internal.util.zzbv;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class pw extends BroadcastReceiver {
    public final /* synthetic */ zzbv a;

    public pw(zzbv zzbvVar) {
        this.a = zzbvVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzbv zzbvVar = this.a;
        synchronized (zzbvVar) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : zzbvVar.b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((BroadcastReceiver) obj).onReceive(context, intent);
            }
        }
    }
}
