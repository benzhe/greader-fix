package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Log;
import androidx.work.impl.WorkDatabase;
import defpackage.ak;
import defpackage.al;
import defpackage.dm;
import defpackage.em;
import defpackage.fm;
import defpackage.jk;
import defpackage.nk;
import defpackage.vj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {
    public static final String g = vj.e("ForceStopRunnable");
    public static final long h = TimeUnit.DAYS.toMillis(3650);
    public final Context e;
    public final nk f;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        public static final String a = vj.e("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            vj vjVarC = vj.c();
            String str = a;
            if (((vj.a) vjVarC).b <= 2) {
                Log.v(str, "Rescheduling alarm that keeps track of force-stops.");
            }
            ForceStopRunnable.b(context);
        }
    }

    public ForceStopRunnable(Context context, nk nkVar) {
        this.e = context.getApplicationContext();
        this.f = nkVar;
    }

    public static PendingIntent a(Context context, int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i);
    }

    public static void b(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent pendingIntentA = a(context, 134217728);
        long jCurrentTimeMillis = System.currentTimeMillis() + h;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntentA);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        List<JobInfo> listE;
        vj.c().a(g, "Performing cleanup operations.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.e;
            String str = al.j;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (listE = al.e(context, jobScheduler)) != null && !listE.isEmpty()) {
                for (JobInfo jobInfo : listE) {
                    PersistableBundle extras = jobInfo.getExtras();
                    if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                        al.b(jobScheduler, jobInfo.getId());
                    }
                }
            }
        }
        WorkDatabase workDatabase = this.f.c;
        em emVarN = workDatabase.n();
        workDatabase.c();
        try {
            fm fmVar = (fm) emVarN;
            List<dm> listC = fmVar.c();
            boolean z2 = !((ArrayList) listC).isEmpty();
            if (z2) {
                Iterator it = ((ArrayList) listC).iterator();
                while (it.hasNext()) {
                    dm dmVar = (dm) it.next();
                    fmVar.n(ak.ENQUEUED, dmVar.a);
                    fmVar.j(dmVar.a, -1L);
                }
            }
            workDatabase.j();
            workDatabase.g();
            if (this.f.g.a().getBoolean("reschedule_needed", false)) {
                vj.c().a(g, "Rescheduling Workers.", new Throwable[0]);
                this.f.d();
                this.f.g.a().edit().putBoolean("reschedule_needed", false).apply();
            } else {
                if (a(this.e, 536870912) == null) {
                    b(this.e);
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    vj.c().a(g, "Application was force-stopped, rescheduling.", new Throwable[0]);
                    this.f.d();
                } else if (z2) {
                    vj.c().a(g, "Found unfinished work, scheduling it.", new Throwable[0]);
                    nk nkVar = this.f;
                    jk.a(nkVar.b, nkVar.c, nkVar.e);
                }
            }
            nk nkVar2 = this.f;
            Objects.requireNonNull(nkVar2);
            synchronized (nk.l) {
                nkVar2.h = true;
                BroadcastReceiver.PendingResult pendingResult = nkVar2.i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    nkVar2.i = null;
                }
            }
        } catch (Throwable th) {
            workDatabase.g();
            throw th;
        }
    }
}
