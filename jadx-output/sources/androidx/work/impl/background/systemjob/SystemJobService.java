package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import defpackage.fk;
import defpackage.hk;
import defpackage.nk;
import defpackage.rm;
import defpackage.vj;
import defpackage.ym;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements fk {
    public static final String g = vj.e("SystemJobService");
    public nk e;
    public final Map<String, JobParameters> f = new HashMap();

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        JobParameters jobParametersRemove;
        vj.c().a(g, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f) {
            jobParametersRemove = this.f.remove(str);
        }
        if (jobParametersRemove != null) {
            jobFinished(jobParametersRemove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            nk nkVarB = nk.b(getApplicationContext());
            this.e = nkVarB;
            nkVarB.f.a(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            vj.c().f(g, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        nk nkVar = this.e;
        if (nkVar != null) {
            hk hkVar = nkVar.f;
            synchronized (hkVar.m) {
                hkVar.l.remove(this);
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.e == null) {
            vj.c().a(g, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        PersistableBundle extras = jobParameters.getExtras();
        if (extras == null) {
            vj.c().b(g, "No extras in JobParameters.", new Throwable[0]);
            return false;
        }
        String string = extras.getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            vj.c().b(g, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f) {
            if (this.f.containsKey(string)) {
                vj.c().a(g, String.format("Job is already being executed by SystemJobService: %s", string), new Throwable[0]);
                return false;
            }
            vj.c().a(g, String.format("onStartJob for %s", string), new Throwable[0]);
            this.f.put(string, jobParameters);
            WorkerParameters.a aVar = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                aVar = new WorkerParameters.a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    aVar.b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    aVar.a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                if (i >= 28) {
                    aVar.c = jobParameters.getNetwork();
                }
            }
            nk nkVar = this.e;
            ((ym) nkVar.d).a.execute(new rm(nkVar, string, aVar));
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        boolean zContains;
        if (this.e == null) {
            vj.c().a(g, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        PersistableBundle extras = jobParameters.getExtras();
        if (extras == null) {
            vj.c().b(g, "No extras in JobParameters.", new Throwable[0]);
            return false;
        }
        String string = extras.getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            vj.c().b(g, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        vj.c().a(g, String.format("onStopJob for %s", string), new Throwable[0]);
        synchronized (this.f) {
            this.f.remove(string);
        }
        this.e.e(string);
        hk hkVar = this.e.f;
        synchronized (hkVar.m) {
            zContains = hkVar.k.contains(string);
        }
        return !zContains;
    }
}
