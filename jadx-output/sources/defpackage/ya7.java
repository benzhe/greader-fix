package defpackage;

import defpackage.a37;
import defpackage.ge5;
import defpackage.x27;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class ya7 {
    public static final Logger a = Logger.getLogger(ya7.class.getName());
    public static final x27.a<b> b = x27.a.a("internal-stub-type");

    public static final class a<RespT> extends ge5<RespT> {
        public final a37<?, RespT> l;

        public a(a37<?, RespT> a37Var) {
            this.l = a37Var;
        }

        @Override // defpackage.ge5
        public void m() {
            this.l.a("GrpcFuture was cancelled", null);
        }

        @Override // defpackage.ge5
        public String n() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("clientCall", this.l);
            return nd5VarK0.toString();
        }

        public boolean p(Throwable th) {
            if (!ge5.j.b(this, null, new ge5.d(th))) {
                return false;
            }
            ge5.h(this);
            return true;
        }
    }

    public enum b {
        BLOCKING,
        FUTURE,
        ASYNC
    }

    public static final class c extends ConcurrentLinkedQueue<Runnable> implements Executor {
        public static final Logger f = Logger.getLogger(c.class.getName());
        public volatile Thread e;

        public void d() throws InterruptedException {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            Runnable runnablePoll = poll();
            if (runnablePoll == null) {
                this.e = Thread.currentThread();
                do {
                    try {
                        Runnable runnablePoll2 = poll();
                        if (runnablePoll2 == null) {
                            LockSupport.park(this);
                        } else {
                            this.e = null;
                            runnablePoll = runnablePoll2;
                        }
                    } catch (Throwable th) {
                        this.e = null;
                        throw th;
                    }
                } while (!Thread.interrupted());
                throw new InterruptedException();
            }
            do {
                try {
                    runnablePoll.run();
                } catch (Throwable th2) {
                    f.log(Level.WARNING, "Runnable threw exception", th2);
                }
                runnablePoll = poll();
            } while (runnablePoll != null);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            add(runnable);
            LockSupport.unpark(this.e);
        }
    }

    public static final class d<RespT> extends a37.a<RespT> {
        public final a<RespT> a;
        public RespT b;

        public d(a<RespT> aVar) {
            this.a = aVar;
        }

        @Override // a37.a
        public void a(x47 x47Var, i47 i47Var) {
            if (!x47Var.f()) {
                this.a.p(new z47(x47Var, i47Var));
                return;
            }
            if (this.b == null) {
                this.a.p(new z47(x47.m.h("No value received for unary call"), i47Var));
            }
            a<RespT> aVar = this.a;
            Object obj = this.b;
            Objects.requireNonNull(aVar);
            if (obj == null) {
                obj = ge5.k;
            }
            if (ge5.j.b(aVar, null, obj)) {
                ge5.h(aVar);
            }
        }

        @Override // a37.a
        public void b(i47 i47Var) {
        }

        @Override // a37.a
        public void c(RespT respt) {
            if (this.b != null) {
                throw x47.m.h("More than one value received for unary call").a();
            }
            this.b = respt;
        }
    }

    public static RuntimeException a(a37<?, ?> a37Var, Throwable th) {
        try {
            a37Var.a(null, th);
        } catch (Throwable th2) {
            a.log(Level.SEVERE, "RuntimeException encountered while closing call", th2);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new AssertionError(th);
    }

    public static <ReqT, RespT> ie5<RespT> b(a37<ReqT, RespT> a37Var, ReqT reqt) {
        a aVar = new a(a37Var);
        a37Var.e(new d(aVar), new i47());
        a37Var.c(2);
        try {
            a37Var.d(reqt);
            a37Var.b();
            return aVar;
        } catch (Error e) {
            a(a37Var, e);
            throw null;
        } catch (RuntimeException e2) {
            a(a37Var, e2);
            throw null;
        }
    }

    public static <V> V c(Future<V> future) {
        try {
            return (V) ((ge5) future).get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw x47.g.h("Thread interrupted").g(e).a();
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            c50.A(cause, "t");
            for (Throwable cause2 = cause; cause2 != null; cause2 = cause2.getCause()) {
                if (cause2 instanceof y47) {
                    y47 y47Var = (y47) cause2;
                    throw new z47(y47Var.e, y47Var.f);
                }
                if (cause2 instanceof z47) {
                    z47 z47Var = (z47) cause2;
                    throw new z47(z47Var.e, z47Var.f);
                }
            }
            throw x47.h.h("unexpected exception").g(cause).a();
        }
    }
}
