package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import defpackage.j25;
import defpackage.l15;
import defpackage.m15;
import defpackage.n15;
import defpackage.qw4;
import defpackage.rx4;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements m15 {
    public n15<AppMeasurementJobService> e;

    @Override // defpackage.m15
    public final void a(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    public final n15<AppMeasurementJobService> b() {
        if (this.e == null) {
            this.e = new n15<>(this);
        }
        return this.e;
    }

    @Override // defpackage.m15
    public final boolean c(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.m15
    public final void f0(@RecentlyNonNull Intent intent) {
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

    @Override // android.app.job.JobService
    public boolean onStartJob(@RecentlyNonNull final JobParameters jobParameters) throws IllegalStateException {
        final n15<AppMeasurementJobService> n15VarB = b();
        final qw4 qw4VarA = rx4.d(n15VarB.a, null, null).a();
        String string = jobParameters.getExtras().getString("action");
        qw4VarA.n.b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        Runnable runnable = new Runnable(n15VarB, qw4VarA, jobParameters) { // from class: k15
            public final n15 e;
            public final qw4 f;
            public final JobParameters g;

            {
                this.e = n15VarB;
                this.f = qw4VarA;
                this.g = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                n15 n15Var = this.e;
                qw4 qw4Var = this.f;
                JobParameters jobParameters2 = this.g;
                Objects.requireNonNull(n15Var);
                qw4Var.n.a("AppMeasurementJobService processed last upload request.");
                n15Var.a.a(jobParameters2, false);
            }
        };
        j25 j25VarV = j25.v(n15VarB.a);
        j25VarV.m().q(new l15(j25VarV, runnable));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@RecentlyNonNull JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        b().a(intent);
        return true;
    }
}
