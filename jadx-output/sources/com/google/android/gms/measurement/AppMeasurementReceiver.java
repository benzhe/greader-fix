package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import defpackage.ix4;
import defpackage.jx4;
import defpackage.qw4;
import defpackage.rx4;
import java.util.Objects;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements ix4 {
    public jx4 c;

    @Override // android.content.BroadcastReceiver
    public void onReceive(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
        if (this.c == null) {
            this.c = new jx4(this);
        }
        jx4 jx4Var = this.c;
        Objects.requireNonNull(jx4Var);
        qw4 qw4VarA = rx4.d(context, null, null).a();
        if (intent == null) {
            qw4VarA.i.a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        qw4VarA.n.b("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                qw4VarA.i.a("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        qw4VarA.n.a("Starting wakeful intent.");
        Objects.requireNonNull((AppMeasurementReceiver) jx4Var.a);
        SparseArray<PowerManager.WakeLock> sparseArray = WakefulBroadcastReceiver.a;
        synchronized (sparseArray) {
            int i = WakefulBroadcastReceiver.b;
            int i2 = i + 1;
            WakefulBroadcastReceiver.b = i2;
            if (i2 <= 0) {
                WakefulBroadcastReceiver.b = 1;
            }
            className.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName componentNameStartService = context.startService(className);
            if (componentNameStartService == null) {
                return;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(DateUtils.MILLIS_PER_MINUTE);
            sparseArray.put(i, wakeLockNewWakeLock);
        }
    }
}
