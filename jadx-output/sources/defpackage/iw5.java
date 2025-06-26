package defpackage;

import android.content.Context;
import defpackage.ex5;
import defpackage.qx5;
import java.util.Objects;

/* loaded from: classes.dex */
public class iw5 {
    public e45<f47> a = c50.i(nx5.c, new fw5(this));
    public final ex5 b;
    public x27 c;
    public ex5.b d;
    public final Context e;
    public final aq5 f;
    public final w27 g;

    public iw5(ex5 ex5Var, Context context, aq5 aq5Var, w27 w27Var) {
        this.b = ex5Var;
        this.e = context;
        this.f = aq5Var;
        this.g = w27Var;
    }

    public final void a() {
        if (this.d != null) {
            qx5.a(qx5.a.DEBUG, "GrpcCallProvider", "Clearing the connectivityAttemptTimer", new Object[0]);
            this.d.a();
            this.d = null;
        }
    }

    public final void b(final f47 f47Var) {
        i37 i37VarJ = f47Var.j(true);
        qx5.a aVar = qx5.a.DEBUG;
        qx5.a(aVar, "GrpcCallProvider", "Current gRPC connectivity state: " + i37VarJ, new Object[0]);
        a();
        if (i37VarJ == i37.CONNECTING) {
            qx5.a(aVar, "GrpcCallProvider", "Setting the connectivityAttemptTimer", new Object[0]);
            this.d = this.b.b(ex5.d.CONNECTIVITY_ATTEMPT_TIMER, 15000L, new Runnable(this, f47Var) { // from class: cw5
                public final iw5 e;
                public final f47 f;

                {
                    this.e = this;
                    this.f = f47Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    final iw5 iw5Var = this.e;
                    final f47 f47Var2 = this.f;
                    qx5.a(qx5.a.DEBUG, "GrpcCallProvider", "connectivityAttemptTimer elapsed. Resetting the channel.", new Object[0]);
                    iw5Var.a();
                    iw5Var.b.a(new cx5(new Runnable(iw5Var, f47Var2) { // from class: ew5
                        public final iw5 e;
                        public final f47 f;

                        {
                            this.e = iw5Var;
                            this.f = f47Var2;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            iw5 iw5Var2 = this.e;
                            this.f.m();
                            Objects.requireNonNull(iw5Var2);
                            iw5Var2.a = c50.i(nx5.c, new fw5(iw5Var2));
                        }
                    }));
                }
            });
        }
        f47Var.k(i37VarJ, new Runnable(this, f47Var) { // from class: dw5
            public final iw5 e;
            public final f47 f;

            {
                this.e = this;
                this.f = f47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                final iw5 iw5Var = this.e;
                final f47 f47Var2 = this.f;
                iw5Var.b.a(new cx5(new Runnable(iw5Var, f47Var2) { // from class: hw5
                    public final iw5 e;
                    public final f47 f;

                    {
                        this.e = iw5Var;
                        this.f = f47Var2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.e.b(this.f);
                    }
                }));
            }
        });
    }
}
