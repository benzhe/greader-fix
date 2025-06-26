package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import defpackage.nk;
import defpackage.om;
import defpackage.vj;
import defpackage.ym;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {
    public static final String a = vj.e("ConstrntProxyUpdtRecvr");

    public class a implements Runnable {
        public final /* synthetic */ Intent e;
        public final /* synthetic */ Context f;
        public final /* synthetic */ BroadcastReceiver.PendingResult g;

        public a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.e = intent;
            this.f = context;
            this.g = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.e.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.e.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.e.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.e.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                vj.c().a(ConstraintProxyUpdateReceiver.a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                om.a(this.f, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                om.a(this.f, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                om.a(this.f, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                om.a(this.f, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.g.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            vj.c().a(a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            ((ym) nk.b(context).d).a.execute(new a(this, intent, context, goAsync()));
        }
    }
}
