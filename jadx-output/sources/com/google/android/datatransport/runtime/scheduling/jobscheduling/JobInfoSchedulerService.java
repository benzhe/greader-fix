package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import defpackage.ds;
import defpackage.is;
import defpackage.iv;
import defpackage.ot;
import defpackage.tt;
import defpackage.wr;

/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    public static final /* synthetic */ int e = 0;

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        is.b(getApplicationContext());
        ds.a aVarA = ds.a();
        aVarA.b(string);
        aVarA.c(iv.b(i));
        if (string2 != null) {
            ((wr.b) aVarA).b = Base64.decode(string2, 0);
        }
        tt ttVar = is.a().d;
        ttVar.e.execute(new ot(ttVar, aVarA.a(), i2, new Runnable(this, jobParameters) { // from class: mt
            public final JobInfoSchedulerService e;
            public final JobParameters f;

            {
                this.e = this;
                this.f = jobParameters;
            }

            @Override // java.lang.Runnable
            public void run() {
                JobInfoSchedulerService jobInfoSchedulerService = this.e;
                JobParameters jobParameters2 = this.f;
                int i3 = JobInfoSchedulerService.e;
                jobInfoSchedulerService.jobFinished(jobParameters2, false);
            }
        }));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
