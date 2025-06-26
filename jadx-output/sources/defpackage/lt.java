package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import defpackage.nt;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

/* loaded from: classes.dex */
public class lt implements zt {
    public final Context a;
    public final cu b;
    public final nt c;

    public lt(Context context, cu cuVar, nt ntVar) {
        this.a = context;
        this.b = cuVar;
        this.c = ntVar;
    }

    @Override // defpackage.zt
    public void a(ds dsVar, int i) {
        boolean z;
        boolean z2;
        char c;
        ComponentName componentName = new ComponentName(this.a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.a.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(this.a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(dsVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(iv.a(dsVar.d())).array());
        if (dsVar.c() != null) {
            adler32.update(dsVar.c());
        }
        int value = (int) adler32.getValue();
        Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            JobInfo next = it.next();
            int i2 = next.getExtras().getInt("attemptNumber");
            if (next.getId() == value) {
                z = i2 >= i;
            }
        }
        if (z) {
            bi.x("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", dsVar);
            return;
        }
        long jU0 = this.b.u0(dsVar);
        nt ntVar = this.c;
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        wq wqVarD = dsVar.d();
        builder.setMinimumLatency(ntVar.b(wqVarD, jU0, i));
        Set<nt.b> setC = ntVar.c().get(wqVarD).c();
        if (setC.contains(nt.b.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
            z2 = true;
        } else {
            z2 = true;
            builder.setRequiredNetworkType(1);
        }
        if (setC.contains(nt.b.DEVICE_CHARGING)) {
            builder.setRequiresCharging(z2);
        }
        if (setC.contains(nt.b.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(z2);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", dsVar.b());
        persistableBundle.putInt("priority", iv.a(dsVar.d()));
        if (dsVar.c() != null) {
            c = 0;
            persistableBundle.putString("extras", Base64.encodeToString(dsVar.c(), 0));
        } else {
            c = 0;
        }
        builder.setExtras(persistableBundle);
        Object[] objArr = new Object[5];
        objArr[c] = dsVar;
        objArr[1] = Integer.valueOf(value);
        objArr[2] = Long.valueOf(this.c.b(dsVar.d(), jU0, i));
        objArr[3] = Long.valueOf(jU0);
        objArr[4] = Integer.valueOf(i);
        bi.y("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr);
        jobScheduler.schedule(builder.build());
    }
}
