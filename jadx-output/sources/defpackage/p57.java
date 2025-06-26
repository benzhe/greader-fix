package defpackage;

import defpackage.b67;
import defpackage.i47;
import defpackage.qx5;
import defpackage.w27;
import java.net.SocketAddress;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class p57 implements b67 {
    public final b67 e;
    public final Executor f;

    public class a extends q67 {
        public final d67 a;

        public a(d67 d67Var, String str) {
            c50.A(d67Var, "delegate");
            this.a = d67Var;
            c50.A(str, "authority");
        }

        @Override // defpackage.q67
        public d67 a() {
            return this.a;
        }

        @Override // defpackage.a67
        public y57 g(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
            y57 y57Var;
            w27 w27Var = x27Var.d;
            if (w27Var == null) {
                return this.a.g(j47Var, i47Var, x27Var);
            }
            final f87 f87Var = new f87(this.a, j47Var, i47Var, x27Var);
            try {
                Executor executor = x27Var.b;
                Executor executor2 = p57.this.f;
                if (executor == null) {
                    Objects.requireNonNull(executor2, "Both parameters are null");
                    executor = executor2;
                }
                ((vv5) w27Var).a.a().g(executor, new b45(f87Var) { // from class: tv5
                    public final w27.a a;

                    {
                        this.a = f87Var;
                    }

                    @Override // defpackage.b45
                    public void onSuccess(Object obj) {
                        w27.a aVar = this.a;
                        String str = (String) obj;
                        i47.f<String> fVar = vv5.b;
                        qx5.a(qx5.a.DEBUG, "FirestoreCallCredentials", "Successfully fetched token.", new Object[0]);
                        i47 i47Var2 = new i47();
                        if (str != null) {
                            i47Var2.h(vv5.b, "Bearer " + str);
                        }
                        aVar.a(i47Var2);
                    }
                }).e(executor, new a45(f87Var) { // from class: uv5
                    public final w27.a a;

                    {
                        this.a = f87Var;
                    }

                    @Override // defpackage.a45
                    public void c(Exception exc) {
                        w27.a aVar = this.a;
                        i47.f<String> fVar = vv5.b;
                        qx5.a(qx5.a.WARN, "FirestoreCallCredentials", "Failed to get token: %s.", exc);
                        aVar.b(x47.k.g(exc));
                    }
                });
            } catch (Throwable th) {
                f87Var.b(x47.k.h("Credentials should use fail() instead of throwing exceptions").g(th));
            }
            synchronized (f87Var.f) {
                y57 y57Var2 = f87Var.g;
                y57Var = y57Var2;
                if (y57Var2 == null) {
                    i67 i67Var = new i67();
                    f87Var.i = i67Var;
                    f87Var.g = i67Var;
                    y57Var = i67Var;
                }
            }
            return y57Var;
        }
    }

    public p57(b67 b67Var, Executor executor) {
        c50.A(b67Var, "delegate");
        this.e = b67Var;
        c50.A(executor, "appExecutor");
        this.f = executor;
    }

    @Override // defpackage.b67
    public d67 Y(SocketAddress socketAddress, b67.a aVar, z27 z27Var) {
        return new a(this.e.Y(socketAddress, aVar, z27Var), aVar.a);
    }

    @Override // defpackage.b67, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.e.close();
    }

    @Override // defpackage.b67
    public ScheduledExecutorService x0() {
        return this.e.x0();
    }
}
