package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import defpackage.dl;
import defpackage.dm;
import defpackage.el;
import defpackage.fm;
import defpackage.ie5;
import defpackage.nk;
import defpackage.vj;
import defpackage.wm;
import defpackage.xm;
import defpackage.zm;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements dl {
    public static final String n = vj.e("ConstraintTrkngWrkr");
    public WorkerParameters i;
    public final Object j;
    public volatile boolean k;
    public wm<ListenableWorker.a> l;
    public ListenableWorker m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            String strB = constraintTrackingWorker.getInputData().b("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            if (TextUtils.isEmpty(strB)) {
                vj.c().b(ConstraintTrackingWorker.n, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.a();
                return;
            }
            ListenableWorker listenableWorkerA = constraintTrackingWorker.getWorkerFactory().a(constraintTrackingWorker.getApplicationContext(), strB, constraintTrackingWorker.i);
            constraintTrackingWorker.m = listenableWorkerA;
            if (listenableWorkerA == null) {
                vj.c().a(ConstraintTrackingWorker.n, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.a();
                return;
            }
            dm dmVarH = ((fm) nk.b(constraintTrackingWorker.getApplicationContext()).c.n()).h(constraintTrackingWorker.getId().toString());
            if (dmVarH == null) {
                constraintTrackingWorker.a();
                return;
            }
            el elVar = new el(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
            elVar.b(Collections.singletonList(dmVarH));
            if (!elVar.a(constraintTrackingWorker.getId().toString())) {
                vj.c().a(ConstraintTrackingWorker.n, String.format("Constraints not met for delegate %s. Requesting retry.", strB), new Throwable[0]);
                constraintTrackingWorker.c();
                return;
            }
            vj.c().a(ConstraintTrackingWorker.n, String.format("Constraints met for delegate %s", strB), new Throwable[0]);
            try {
                ie5<ListenableWorker.a> ie5VarStartWork = constraintTrackingWorker.m.startWork();
                ie5VarStartWork.i(new zm(constraintTrackingWorker, ie5VarStartWork), constraintTrackingWorker.getBackgroundExecutor());
            } catch (Throwable th) {
                vj vjVarC = vj.c();
                String str = ConstraintTrackingWorker.n;
                vjVarC.a(str, String.format("Delegated worker %s threw exception in startWork.", strB), th);
                synchronized (constraintTrackingWorker.j) {
                    if (constraintTrackingWorker.k) {
                        vj.c().a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                        constraintTrackingWorker.c();
                    } else {
                        constraintTrackingWorker.a();
                    }
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.i = workerParameters;
        this.j = new Object();
        this.k = false;
        this.l = new wm<>();
    }

    public void a() {
        this.l.j(new ListenableWorker.a.C0002a());
    }

    @Override // defpackage.dl
    public void b(List<String> list) {
        vj.c().a(n, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.j) {
            this.k = true;
        }
    }

    public void c() {
        this.l.j(new ListenableWorker.a.b());
    }

    @Override // defpackage.dl
    public void e(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public xm getTaskExecutor() {
        return nk.b(getApplicationContext()).d;
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.m;
        if (listenableWorker != null) {
            listenableWorker.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    public ie5<ListenableWorker.a> startWork() {
        getBackgroundExecutor().execute(new a());
        return this.l;
    }
}
