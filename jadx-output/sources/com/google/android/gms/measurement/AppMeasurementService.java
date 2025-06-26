package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import defpackage.j25;
import defpackage.ky4;
import defpackage.l15;
import defpackage.m15;
import defpackage.n15;
import defpackage.qw4;
import defpackage.rx4;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements m15 {
    public n15<AppMeasurementService> e;

    @Override // defpackage.m15
    public final void a(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    public final n15<AppMeasurementService> b() {
        if (this.e == null) {
            this.e = new n15<>(this);
        }
        return this.e;
    }

    @Override // defpackage.m15
    public final boolean c(int i) {
        return stopSelfResult(i);
    }

    @Override // defpackage.m15
    public final void f0(@RecentlyNonNull Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = WakefulBroadcastReceiver.a;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray<PowerManager.WakeLock> sparseArray2 = WakefulBroadcastReceiver.a;
        synchronized (sparseArray2) {
            PowerManager.WakeLock wakeLock = sparseArray2.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray2.remove(intExtra);
            } else {
                Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            }
        }
    }

    @Override // android.app.Service
    @RecentlyNonNull
    public IBinder onBind(@RecentlyNonNull Intent intent) {
        n15<AppMeasurementService> n15VarB = b();
        Objects.requireNonNull(n15VarB);
        if (intent == null) {
            n15VarB.c().f.a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new ky4(j25.v(n15VarB.a));
        }
        n15VarB.c().i.b("onBind received unknown action", action);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        rx4.d(b().a, null, null).a().n.a("Local AppMeasurementService is starting up");
    }

    @Override // android.app.Service
    public void onDestroy() {
        rx4.d(b().a, null, null).a().n.a("Local AppMeasurementService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(@RecentlyNonNull Intent intent) {
        b().b(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(@RecentlyNonNull final Intent intent, int i, final int i2) throws IllegalStateException {
        final n15<AppMeasurementService> n15VarB = b();
        final qw4 qw4VarA = rx4.d(n15VarB.a, null, null).a();
        if (intent == null) {
            qw4VarA.i.a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        qw4VarA.n.c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        Runnable runnable = new Runnable(n15VarB, i2, qw4VarA, intent) { // from class: j15
            public final n15 e;
            public final int f;
            public final qw4 g;
            public final Intent h;

            {
                this.e = n15VarB;
                this.f = i2;
                this.g = qw4VarA;
                this.h = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                n15 n15Var = this.e;
                int i3 = this.f;
                qw4 qw4Var = this.g;
                Intent intent2 = this.h;
                if (n15Var.a.c(i3)) {
                    qw4Var.n.b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i3));
                    n15Var.c().n.a("Completed wakeful intent.");
                    n15Var.a.f0(intent2);
                }
            }
        };
        j25 j25VarV = j25.v(n15VarB.a);
        j25VarV.m().q(new l15(j25VarV, runnable));
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        b().a(intent);
        return true;
    }
}
