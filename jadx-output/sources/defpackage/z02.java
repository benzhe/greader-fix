package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class z02 implements jz1<j41> {
    public final g51 a;
    public final d02 b;
    public final zv2 c;
    public final ba1 d;
    public final ScheduledExecutorService e;

    public z02(g51 g51Var, d02 d02Var, ba1 ba1Var, ScheduledExecutorService scheduledExecutorService, zv2 zv2Var) {
        this.a = g51Var;
        this.b = d02Var;
        this.d = ba1Var;
        this.e = scheduledExecutorService;
        this.c = zv2Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        return hl2Var.a.a.a() != null && this.b.a(hl2Var, sk2Var);
    }

    @Override // defpackage.jz1
    public final aw2<j41> b(final hl2 hl2Var, final sk2 sk2Var) {
        return this.c.y(new Callable(this, hl2Var, sk2Var) { // from class: c12
            public final z02 e;
            public final hl2 f;
            public final sk2 g;

            {
                this.e = this;
                this.f = hl2Var;
                this.g = sk2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                z02 z02Var = this.e;
                hl2 hl2Var2 = this.f;
                sk2 sk2Var2 = this.g;
                p51 p51Var = z02Var.a.a(new v61(hl2Var2, sk2Var2, null), new t51(hl2Var2.a.a.a(), new Runnable(z02Var, hl2Var2, sk2Var2) { // from class: b12
                    public final z02 e;
                    public final hl2 f;
                    public final sk2 g;

                    {
                        this.e = z02Var;
                        this.f = hl2Var2;
                        this.g = sk2Var2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        z02 z02Var2 = this.e;
                        aw2 aw2VarD = vt2.d(z02Var2.b.b(this.f, this.g), r2.M, TimeUnit.SECONDS, z02Var2.e);
                        aw2VarD.i(new sv2(aw2VarD, new e12(z02Var2)), z02Var2.c);
                    }
                })).m.get();
                Objects.requireNonNull(p51Var, "Cannot return null from a non-@Nullable @Provides method");
                return p51Var;
            }
        });
    }
}
