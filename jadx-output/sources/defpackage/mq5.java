package defpackage;

import android.content.Context;
import defpackage.js5;
import defpackage.qx5;
import defpackage.zp5;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import uq5.b;

/* loaded from: classes.dex */
public final class mq5 {
    public final aq5 a;
    public final op5 b;
    public final ex5 c;
    public fs5 d;
    public cr5 e;
    public dq5 f;
    public final jw5 g;
    public rr5 h;

    public mq5(final Context context, aq5 aq5Var, final ap5 ap5Var, op5 op5Var, ex5 ex5Var, jw5 jw5Var) {
        this.a = aq5Var;
        this.b = op5Var;
        this.c = ex5Var;
        this.g = jw5Var;
        final f45 f45Var = new f45();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ex5Var.a(new cx5(new Runnable(this, f45Var, context, ap5Var) { // from class: iq5
            public final mq5 e;
            public final f45 f;
            public final Context g;
            public final ap5 h;

            {
                this.e = this;
                this.f = f45Var;
                this.g = context;
                this.h = ap5Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                mq5 mq5Var = this.e;
                f45 f45Var2 = this.f;
                try {
                    mq5Var.a(this.g, (tp5) c50.d(f45Var2.a), this.h);
                } catch (InterruptedException | ExecutionException e) {
                    throw new RuntimeException(e);
                }
            }
        }));
        op5Var.c(new jq5(this, atomicBoolean, f45Var, ex5Var));
    }

    public final void a(Context context, tp5 tp5Var, ap5 ap5Var) {
        qx5.a(qx5.a.DEBUG, "FirestoreClient", "Initializing. user=%s", tp5Var.a);
        zp5.a aVar = new zp5.a(context, this.c, this.a, new qv5(this.a, this.c, this.b, context, this.g), tp5Var, 100, ap5Var);
        uq5 br5Var = ap5Var.c ? new br5() : new uq5();
        ts5 ts5VarB = br5Var.b(aVar);
        br5Var.a = ts5VarB;
        ts5VarB.i();
        br5Var.b = new fs5(br5Var.a, new nr5(), aVar.e);
        ov5 ov5Var = new ov5(aVar.a);
        br5Var.f = ov5Var;
        br5Var.d = new sw5(br5Var.new b(null), br5Var.b, aVar.d, aVar.b, ov5Var);
        cr5 cr5Var = new cr5(br5Var.b, br5Var.d, aVar.e, 100);
        br5Var.c = cr5Var;
        br5Var.e = new dq5(cr5Var);
        fs5 fs5Var = br5Var.b;
        fs5Var.a.h("Start MutationQueue", new wr5(fs5Var));
        br5Var.d.b();
        rr5 rr5VarA = br5Var.a(aVar);
        br5Var.g = rr5VarA;
        this.h = rr5VarA;
        this.d = br5Var.b;
        this.e = br5Var.c;
        this.f = br5Var.e;
        if (rr5VarA != null) {
            js5.d dVar = (js5.d) rr5VarA;
            if (js5.this.b.a != -1) {
                dVar.a();
            }
        }
    }

    public final void b() {
        synchronized (this.c.a) {
        }
    }
}
