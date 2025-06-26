package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* loaded from: classes.dex */
public final class a25 extends b25 {
    public final AlarmManager d;
    public final is4 e;
    public Integer f;

    public a25(j25 j25Var) {
        super(j25Var);
        this.d = (AlarmManager) this.a.a.getSystemService("alarm");
        this.e = new z15(this, j25Var.j, j25Var);
    }

    @Override // defpackage.b25
    public final boolean h() {
        this.d.cancel(l());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        ((JobScheduler) this.a.a.getSystemService("jobscheduler")).cancel(k());
        return false;
    }

    public final void i() {
        f();
        this.a.a().n.a("Unscheduling upload");
        this.d.cancel(l());
        this.e.c();
        if (Build.VERSION.SDK_INT >= 24) {
            ((JobScheduler) this.a.a.getSystemService("jobscheduler")).cancel(k());
        }
    }

    public final int k() {
        if (this.f == null) {
            String strValueOf = String.valueOf(this.a.a.getPackageName());
            this.f = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.f.intValue();
    }

    public final PendingIntent l() {
        Context context = this.a.a;
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }
}
