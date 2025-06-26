package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class al implements ik {
    public static final String j = vj.e("SystemJobScheduler");
    public final Context e;
    public final JobScheduler f;
    public final nk g;
    public final nm h;
    public final zk i;

    public al(Context context, nk nkVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        zk zkVar = new zk(context);
        this.e = context;
        this.g = nkVar;
        this.f = jobScheduler;
        this.h = new nm(context);
        this.i = zkVar;
    }

    public static void b(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            vj.c().b(j, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static List<Integer> c(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> listE = e(context, jobScheduler);
        if (listE == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : listE) {
            PersistableBundle extras = jobInfo.getExtras();
            if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID") && str.equals(extras.getString("EXTRA_WORK_SPEC_ID"))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static List<JobInfo> e(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            vj.c().b(j, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // defpackage.ik
    public void a(dm... dmVarArr) {
        int iC;
        List<Integer> listC;
        int iC2;
        WorkDatabase workDatabase = this.g.c;
        for (dm dmVar : dmVarArr) {
            workDatabase.c();
            try {
                dm dmVarH = ((fm) workDatabase.n()).h(dmVar.a);
                if (dmVarH == null) {
                    vj.c().f(j, "Skipping scheduling " + dmVar.a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.j();
                } else if (dmVarH.b != ak.ENQUEUED) {
                    vj.c().f(j, "Skipping scheduling " + dmVar.a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.j();
                } else {
                    xl xlVarA = ((zl) workDatabase.l()).a(dmVar.a);
                    if (xlVarA != null) {
                        iC = xlVarA.b;
                    } else {
                        nm nmVar = this.h;
                        Objects.requireNonNull(this.g.b);
                        iC = nmVar.c(0, this.g.b.e);
                    }
                    if (xlVarA == null) {
                        ((zl) this.g.c.l()).b(new xl(dmVar.a, iC));
                    }
                    f(dmVar, iC);
                    if (Build.VERSION.SDK_INT == 23 && (listC = c(this.e, this.f, dmVar.a)) != null) {
                        int iIndexOf = listC.indexOf(Integer.valueOf(iC));
                        if (iIndexOf >= 0) {
                            listC.remove(iIndexOf);
                        }
                        if (listC.isEmpty()) {
                            nm nmVar2 = this.h;
                            Objects.requireNonNull(this.g.b);
                            iC2 = nmVar2.c(0, this.g.b.e);
                        } else {
                            iC2 = listC.get(0).intValue();
                        }
                        f(dmVar, iC2);
                    }
                    workDatabase.j();
                }
                workDatabase.g();
            } catch (Throwable th) {
                workDatabase.g();
                throw th;
            }
        }
    }

    @Override // defpackage.ik
    public void d(String str) {
        List<Integer> listC = c(this.e, this.f, str);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        Iterator<Integer> it = listC.iterator();
        while (it.hasNext()) {
            b(this.f, it.next().intValue());
        }
        ((zl) this.g.c.l()).c(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 26) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(defpackage.dm r13, int r14) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.al.f(dm, int):void");
    }
}
