package defpackage;

import defpackage.qx5;
import defpackage.zo5;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class jq5 {
    public final mq5 a;
    public final AtomicBoolean b;
    public final f45 c;
    public final ex5 d;

    public jq5(mq5 mq5Var, AtomicBoolean atomicBoolean, f45 f45Var, ex5 ex5Var) {
        this.a = mq5Var;
        this.b = atomicBoolean;
        this.c = f45Var;
        this.d = ex5Var;
    }

    public void a(Object obj) {
        final mq5 mq5Var = this.a;
        AtomicBoolean atomicBoolean = this.b;
        f45 f45Var = this.c;
        ex5 ex5Var = this.d;
        final tp5 tp5Var = (tp5) obj;
        if (!atomicBoolean.compareAndSet(false, true)) {
            ex5Var.a(new cx5(new Runnable(mq5Var, tp5Var) { // from class: hq5
                public final mq5 e;
                public final tp5 f;

                {
                    this.e = mq5Var;
                    this.f = tp5Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    mq5 mq5Var2 = this.e;
                    tp5 tp5Var2 = this.f;
                    qx5.a aVar = qx5.a.DEBUG;
                    bx5.c(mq5Var2.e != null, "SyncEngine not yet initialized", new Object[0]);
                    qx5.a(aVar, "FirestoreClient", "Credential changed. Current user: %s", tp5Var2.a);
                    cr5 cr5Var = mq5Var2.e;
                    boolean z = !cr5Var.m.equals(tp5Var2);
                    cr5Var.m = tp5Var2;
                    if (z) {
                        Iterator<Map.Entry<Integer, List<f45<Void>>>> it = cr5Var.k.entrySet().iterator();
                        while (it.hasNext()) {
                            Iterator<f45<Void>> it2 = it.next().getValue().iterator();
                            while (it2.hasNext()) {
                                it2.next().a.r(new zo5("'waitForPendingWrites' task is cancelled due to User change.", zo5.a.CANCELLED));
                            }
                        }
                        cr5Var.k.clear();
                        fs5 fs5Var = cr5Var.a;
                        List<ru5> listL = fs5Var.b.l();
                        fs5Var.b = fs5Var.a.b(tp5Var2);
                        fs5Var.a.h("Start MutationQueue", new wr5(fs5Var));
                        List<ru5> listL2 = fs5Var.b.l();
                        tr5 tr5Var = new tr5(fs5Var.c, fs5Var.b, fs5Var.a.a());
                        fs5Var.d = tr5Var;
                        ((nr5) fs5Var.e).a = tr5Var;
                        ln5<bu5> ln5VarD = bu5.f;
                        Iterator it3 = Arrays.asList(listL, listL2).iterator();
                        while (it3.hasNext()) {
                            Iterator it4 = ((List) it3.next()).iterator();
                            while (it4.hasNext()) {
                                Iterator<qu5> it5 = ((ru5) it4.next()).d.iterator();
                                while (it5.hasNext()) {
                                    ln5VarD = ln5VarD.d(it5.next().a);
                                }
                            }
                        }
                        cr5Var.h(fs5Var.d.b(ln5VarD), null);
                    }
                    sw5 sw5Var = cr5Var.b;
                    if (sw5Var.e) {
                        qx5.a(aVar, "RemoteStore", "Restarting streams for new credential.", new Object[0]);
                        sw5Var.e();
                    }
                }
            }));
        } else {
            bx5.c(!f45Var.a.n(), "Already fulfilled first user task", new Object[0]);
            f45Var.a.s(tp5Var);
        }
    }
}
