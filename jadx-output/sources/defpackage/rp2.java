package defpackage;

import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class rp2 implements pp2 {
    public final pp2 a;
    public final Queue<qp2> b = new LinkedBlockingQueue();
    public final int c = ((Integer) os3.j.f.a(y40.h5)).intValue();
    public final AtomicBoolean d = new AtomicBoolean(false);

    public rp2(pp2 pp2Var, ScheduledExecutorService scheduledExecutorService) {
        this.a = pp2Var;
        long jIntValue = ((Integer) os3.j.f.a(y40.g5)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: vp2
            public final rp2 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rp2 rp2Var = this.e;
                while (!rp2Var.b.isEmpty()) {
                    rp2Var.a.b(rp2Var.b.remove());
                }
            }
        }, jIntValue, jIntValue, TimeUnit.MILLISECONDS);
    }

    @Override // defpackage.pp2
    public final String a(qp2 qp2Var) {
        return this.a.a(qp2Var);
    }

    @Override // defpackage.pp2
    public final void b(qp2 qp2Var) {
        if (this.b.size() < this.c) {
            this.b.offer(qp2Var);
            return;
        }
        if (this.d.getAndSet(true)) {
            return;
        }
        Queue<qp2> queue = this.b;
        qp2 qp2VarC = qp2.c("dropped_event");
        HashMap map = (HashMap) qp2Var.e();
        if (map.containsKey("action")) {
            qp2VarC.a.put("dropped_action", (String) map.get("action"));
        }
        queue.offer(qp2VarC);
    }
}
