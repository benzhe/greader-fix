package defpackage;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import defpackage.sj;
import defpackage.yj;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class mm implements Runnable {
    public static final String g = vj.e("EnqueueRunnable");
    public final kk e;
    public final gk f = new gk();

    public mm(kk kkVar) {
        this.e = kkVar;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x027b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(defpackage.kk r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mm.a(kk):boolean");
    }

    public static void b(dm dmVar) {
        qj qjVar = dmVar.j;
        if (qjVar.d || qjVar.e) {
            String str = dmVar.c;
            sj.a aVar = new sj.a();
            aVar.b(dmVar.e.a);
            aVar.a.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            dmVar.c = ConstraintTrackingWorker.class.getName();
            dmVar.e = aVar.a();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            kk kkVar = this.e;
            Objects.requireNonNull(kkVar);
            if (kk.a(kkVar, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.e));
            }
            WorkDatabase workDatabase = this.e.a.c;
            workDatabase.c();
            try {
                boolean zA = a(this.e);
                workDatabase.j();
                if (zA) {
                    om.a(this.e.a.a, RescheduleReceiver.class, true);
                    nk nkVar = this.e.a;
                    jk.a(nkVar.b, nkVar.c, nkVar.e);
                }
                this.f.a(yj.a);
            } finally {
                workDatabase.g();
            }
        } catch (Throwable th) {
            this.f.a(new yj.b.a(th));
        }
    }
}
