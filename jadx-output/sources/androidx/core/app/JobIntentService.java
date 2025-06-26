package androidx.core.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    public static final HashMap<ComponentName, g> j = new HashMap<>();
    public b e;
    public g f;
    public a g;
    public boolean h = false;
    public final ArrayList<d> i;

    public final class a extends AsyncTask<Void, Void, Void> {
        public a() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            d dVarRemove;
            while (true) {
                JobIntentService jobIntentService = JobIntentService.this;
                b bVar = jobIntentService.e;
                if (bVar != null) {
                    f fVar = (f) bVar;
                    synchronized (fVar.b) {
                        JobParameters jobParameters = fVar.c;
                        if (jobParameters != null) {
                            JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                            if (jobWorkItemDequeueWork != null) {
                                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(fVar.a.getClassLoader());
                                dVarRemove = fVar.new a(jobWorkItemDequeueWork);
                            }
                        }
                    }
                } else {
                    synchronized (jobIntentService.i) {
                        dVarRemove = jobIntentService.i.size() > 0 ? jobIntentService.i.remove(0) : null;
                    }
                }
                if (dVarRemove == null) {
                    return null;
                }
                JobIntentService.this.b(dVarRemove.getIntent());
                dVarRemove.d();
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Void r1) {
            JobIntentService.this.c();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            JobIntentService.this.c();
        }
    }

    public interface b {
    }

    public static final class c extends g {
        public final PowerManager.WakeLock b;
        public final PowerManager.WakeLock c;
        public boolean d;

        public c(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.b = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.c = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.g
        public void a() {
            synchronized (this) {
                if (this.d) {
                    this.d = false;
                    this.c.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.g
        public void b() {
            synchronized (this) {
                if (!this.d) {
                    this.d = true;
                    this.c.acquire(600000L);
                    this.b.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.g
        public void c() {
            synchronized (this) {
            }
        }
    }

    public final class d implements e {
        public final Intent a;
        public final int b;

        public d(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void d() {
            JobIntentService.this.stopSelf(this.b);
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.a;
        }
    }

    public interface e {
        void d();

        Intent getIntent();
    }

    public static final class f extends JobServiceEngine implements b {
        public final JobIntentService a;
        public final Object b;
        public JobParameters c;

        public final class a implements e {
            public final JobWorkItem a;

            public a(JobWorkItem jobWorkItem) {
                this.a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public void d() {
                synchronized (f.this.b) {
                    JobParameters jobParameters = f.this.c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.a.getIntent();
            }
        }

        public f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.b = new Object();
            this.a = jobIntentService;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.a.a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            a aVar = this.a.g;
            if (aVar != null) {
                aVar.cancel(false);
            }
            synchronized (this.b) {
                this.c = null;
            }
            return true;
        }
    }

    public static abstract class g {
        public final ComponentName a;

        public g(ComponentName componentName) {
            this.a = componentName;
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.i = null;
        } else {
            this.i = new ArrayList<>();
        }
    }

    public void a(boolean z) {
        if (this.g == null) {
            this.g = new a();
            g gVar = this.f;
            if (gVar != null && z) {
                gVar.b();
            }
            this.g.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public abstract void b(Intent intent);

    public void c() {
        ArrayList<d> arrayList = this.i;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.g = null;
                ArrayList<d> arrayList2 = this.i;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    a(false);
                } else if (!this.h) {
                    this.f.a();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.e;
        if (bVar != null) {
            return ((f) bVar).getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.e = new f(this);
            this.f = null;
            return;
        }
        this.e = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap<ComponentName, g> map = j;
        g cVar = map.get(componentName);
        if (cVar == null) {
            if (i >= 26) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new c(this, componentName);
            map.put(componentName, cVar);
        }
        this.f = cVar;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.i;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.h = true;
                this.f.a();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.i == null) {
            return 2;
        }
        this.f.c();
        synchronized (this.i) {
            ArrayList<d> arrayList = this.i;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i2));
            a(true);
        }
        return 3;
    }
}
