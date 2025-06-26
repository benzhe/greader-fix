package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import defpackage.nk;
import defpackage.tk;
import defpackage.vj;
import java.util.Objects;

/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    public static final String a = vj.e("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        vj.c().a(a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            String str = tk.h;
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_RESCHEDULE");
            context.startService(intent2);
            return;
        }
        try {
            nk nkVarB = nk.b(context);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            Objects.requireNonNull(nkVarB);
            synchronized (nk.l) {
                nkVarB.i = pendingResultGoAsync;
                if (nkVarB.h) {
                    pendingResultGoAsync.finish();
                    nkVarB.i = null;
                }
            }
        } catch (IllegalStateException unused) {
            vj.c().b(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
        }
    }
}
