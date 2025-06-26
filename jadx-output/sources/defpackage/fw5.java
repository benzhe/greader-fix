package defpackage;

import android.content.Context;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.ex5;
import defpackage.h47;
import defpackage.qx5;
import defpackage.tc6;
import defpackage.ya7;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class fw5 implements Callable {
    public final iw5 e;

    public fw5(iw5 iw5Var) {
        this.e = iw5Var;
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        final iw5 iw5Var = this.e;
        Context context = iw5Var.e;
        aq5 aq5Var = iw5Var.f;
        try {
            g35.a(context);
        } catch (hy | iy | IllegalStateException e) {
            qx5.a(qx5.a.WARN, "GrpcCallProvider", "Failed to update ssl context: %s", e);
        }
        String str = aq5Var.c;
        h47 h47Var = h47.b;
        if (h47Var == null) {
            throw new h47.c("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
        }
        g47<?> g47VarA = h47Var.a(str);
        if (!aq5Var.d) {
            g47VarA.c();
        }
        g47VarA.b(30L, TimeUnit.SECONDS);
        d57 d57Var = new d57(g47VarA);
        d57Var.b = context;
        final f47 f47VarA = d57Var.a();
        iw5Var.b.a(new cx5(new Runnable(iw5Var, f47VarA) { // from class: gw5
            public final iw5 e;
            public final f47 f;

            {
                this.e = iw5Var;
                this.f = f47VarA;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.e.b(this.f);
            }
        }));
        x27 x27VarE = x27.k.e(ya7.b, ya7.b.ASYNC);
        c50.A(f47VarA, NSRSS20.CHANNEL);
        c50.A(x27VarE, "callOptions");
        w27 w27Var = iw5Var.g;
        x27 x27Var = new x27(x27VarE);
        x27Var.d = w27Var;
        c50.A(f47VarA, NSRSS20.CHANNEL);
        c50.A(x27Var, "callOptions");
        ex5.c cVar = iw5Var.b.a;
        Objects.requireNonNull(x27Var);
        x27 x27Var2 = new x27(x27Var);
        x27Var2.b = cVar;
        iw5Var.c = new tc6.a(f47VarA, x27Var2).b;
        qx5.a(qx5.a.DEBUG, "GrpcCallProvider", "Channel successfully reset.", new Object[0]);
        return f47VarA;
    }
}
