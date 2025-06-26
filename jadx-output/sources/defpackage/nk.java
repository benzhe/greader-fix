package defpackage;

import android.app.ActivityManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import androidx.work.R$bool;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import defpackage.lg;
import defpackage.mk;
import defpackage.pj;
import defpackage.vj;
import defpackage.xg;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
public class nk extends bk {
    public static nk j;
    public static nk k;
    public static final Object l = new Object();
    public Context a;
    public pj b;
    public WorkDatabase c;
    public xm d;
    public List<ik> e;
    public hk f;
    public pm g;
    public boolean h;
    public BroadcastReceiver.PendingResult i;

    public nk(Context context, pj pjVar, xm xmVar) throws Resources.NotFoundException {
        lg.a aVar;
        Executor executor;
        String str;
        ik xkVar;
        char c;
        char c2;
        boolean z = context.getResources().getBoolean(R$bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        Executor executor2 = pjVar.b;
        int i = WorkDatabase.k;
        if (z) {
            aVar = new lg.a(applicationContext, WorkDatabase.class, null);
            aVar.h = true;
        } else {
            aVar = new lg.a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            aVar.e = executor2;
        }
        lk lkVar = new lk();
        if (aVar.d == null) {
            aVar.d = new ArrayList<>();
        }
        aVar.d.add(lkVar);
        aVar.a(mk.a);
        aVar.a(new mk.d(applicationContext, 2, 3));
        aVar.a(mk.b);
        aVar.a(mk.c);
        aVar.a(new mk.d(applicationContext, 5, 6));
        aVar.i = false;
        aVar.j = true;
        lg.c cVar = lg.c.WRITE_AHEAD_LOGGING;
        Context context2 = aVar.c;
        if (context2 == null) {
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
        if (aVar.a == null) {
            throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
        }
        Executor executor3 = aVar.e;
        if (executor3 == null && aVar.f == null) {
            Executor executor4 = k3.d;
            aVar.f = executor4;
            aVar.e = executor4;
        } else if (executor3 != null && aVar.f == null) {
            aVar.f = executor3;
        } else if (executor3 == null && (executor = aVar.f) != null) {
            aVar.e = executor;
        }
        if (aVar.g == null) {
            aVar.g = new ch();
        }
        String str2 = aVar.b;
        xg.b bVar = aVar.g;
        lg.d dVar = aVar.k;
        ArrayList<lg.b> arrayList = aVar.d;
        boolean z2 = aVar.h;
        ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
        gg ggVar = new gg(context2, str2, bVar, dVar, arrayList, z2, (activityManager == null || activityManager.isLowRamDevice()) ? lg.c.TRUNCATE : cVar, aVar.e, aVar.f, false, aVar.i, aVar.j, null);
        Class<T> cls = aVar.a;
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        String str3 = (name.isEmpty() ? canonicalName : canonicalName.substring(name.length() + 1)).replace(FilenameUtils.EXTENSION_SEPARATOR, '_') + "_Impl";
        try {
            if (name.isEmpty()) {
                str = str3;
            } else {
                str = name + "." + str3;
            }
            lg lgVar = (lg) Class.forName(str).newInstance();
            xg xgVarF = lgVar.f(ggVar);
            lgVar.c = xgVarF;
            boolean z3 = ggVar.g == cVar;
            ((bh) xgVarF).a.setWriteAheadLoggingEnabled(z3);
            lgVar.g = ggVar.e;
            lgVar.b = ggVar.h;
            new ArrayDeque();
            lgVar.e = ggVar.f;
            lgVar.f = z3;
            WorkDatabase workDatabase = (WorkDatabase) lgVar;
            vj.a aVar2 = new vj.a(pjVar.d);
            synchronized (vj.class) {
                vj.a = aVar2;
            }
            ik[] ikVarArr = new ik[2];
            String str4 = jk.a;
            if (Build.VERSION.SDK_INT >= 23) {
                xkVar = new al(applicationContext, this);
                om.a(applicationContext, SystemJobService.class, true);
                vj.c().a(jk.a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
                c = 1;
                c2 = 0;
            } else {
                try {
                    xkVar = (ik) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(applicationContext);
                    vj.c().a(jk.a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
                } catch (Throwable th) {
                    vj.c().a(jk.a, "Unable to create GCM Scheduler", th);
                    xkVar = null;
                }
                c = 1;
                c2 = 0;
                if (xkVar == null) {
                    xkVar = new xk(applicationContext);
                    om.a(applicationContext, SystemAlarmService.class, true);
                    vj.c().a(jk.a, "Created SystemAlarmScheduler", new Throwable[0]);
                }
            }
            ikVarArr[c2] = xkVar;
            ikVarArr[c] = new rk(applicationContext, xmVar, this);
            List<ik> listAsList = Arrays.asList(ikVarArr);
            hk hkVar = new hk(context, pjVar, xmVar, workDatabase, listAsList);
            Context applicationContext2 = context.getApplicationContext();
            this.a = applicationContext2;
            this.b = pjVar;
            this.d = xmVar;
            this.c = workDatabase;
            this.e = listAsList;
            this.f = hkVar;
            this.g = new pm(applicationContext2);
            this.h = false;
            ((ym) xmVar).a.execute(new ForceStopRunnable(applicationContext2, this));
        } catch (ClassNotFoundException unused) {
            StringBuilder sbZ = jo.z("cannot find implementation for ");
            sbZ.append(cls.getCanonicalName());
            sbZ.append(". ");
            sbZ.append(str3);
            sbZ.append(" does not exist");
            throw new RuntimeException(sbZ.toString());
        } catch (IllegalAccessException unused2) {
            StringBuilder sbZ2 = jo.z("Cannot access the constructor");
            sbZ2.append(cls.getCanonicalName());
            throw new RuntimeException(sbZ2.toString());
        } catch (InstantiationException unused3) {
            StringBuilder sbZ3 = jo.z("Failed to create an instance of ");
            sbZ3.append(cls.getCanonicalName());
            throw new RuntimeException(sbZ3.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static nk b(Context context) {
        nk nkVarB;
        Object obj = l;
        synchronized (obj) {
            synchronized (obj) {
                nkVarB = j;
                if (nkVarB == null) {
                    nkVarB = k;
                }
            }
            return nkVarB;
        }
        if (nkVarB == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof pj.b)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            c(applicationContext, ((pj.b) applicationContext).a());
            nkVarB = b(applicationContext);
        }
        return nkVarB;
    }

    public static void c(Context context, pj pjVar) {
        synchronized (l) {
            nk nkVar = j;
            if (nkVar != null && k != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information.");
            }
            if (nkVar == null) {
                Context applicationContext = context.getApplicationContext();
                if (k == null) {
                    k = new nk(applicationContext, pjVar, new ym(pjVar.b));
                }
                j = k;
            }
        }
    }

    public void d() {
        List<JobInfo> listE;
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.a;
            String str = al.j;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (listE = al.e(context, jobScheduler)) != null && !listE.isEmpty()) {
                Iterator<JobInfo> it = listE.iterator();
                while (it.hasNext()) {
                    al.b(jobScheduler, it.next().getId());
                }
            }
        }
        fm fmVar = (fm) this.c.n();
        fmVar.a.b();
        eh ehVarA = fmVar.i.a();
        fmVar.a.c();
        try {
            ehVarA.a();
            fmVar.a.j();
            fmVar.a.g();
            og ogVar = fmVar.i;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
            jk.a(this.b, this.c, this.e);
        } catch (Throwable th) {
            fmVar.a.g();
            fmVar.i.c(ehVarA);
            throw th;
        }
    }

    public void e(String str) {
        xm xmVar = this.d;
        ((ym) xmVar).a.execute(new sm(this, str));
    }
}
