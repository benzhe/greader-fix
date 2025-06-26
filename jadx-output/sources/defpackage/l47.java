package defpackage;

import defpackage.v27;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public abstract class l47 {

    public static final class a {
        public final int a;
        public final t47 b;
        public final b57 c;
        public final g d;
        public final ScheduledExecutorService e;
        public final z27 f;
        public final Executor g;

        public a(Integer num, t47 t47Var, b57 b57Var, g gVar, ScheduledExecutorService scheduledExecutorService, z27 z27Var, Executor executor, k47 k47Var) {
            c50.A(num, "defaultPort not set");
            this.a = num.intValue();
            c50.A(t47Var, "proxyDetector not set");
            this.b = t47Var;
            c50.A(b57Var, "syncContext not set");
            this.c = b57Var;
            c50.A(gVar, "serviceConfigParser not set");
            this.d = gVar;
            this.e = scheduledExecutorService;
            this.f = z27Var;
            this.g = executor;
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.a("defaultPort", this.a);
            nd5VarK0.d("proxyDetector", this.b);
            nd5VarK0.d("syncContext", this.c);
            nd5VarK0.d("serviceConfigParser", this.d);
            nd5VarK0.d("scheduledExecutorService", this.e);
            nd5VarK0.d("channelLogger", this.f);
            nd5VarK0.d("executor", this.g);
            return nd5VarK0.toString();
        }
    }

    public static abstract class c {

        @Deprecated
        public static final v27.c<Integer> a = new v27.c<>("params-default-port");

        @Deprecated
        public static final v27.c<t47> b = new v27.c<>("params-proxy-detector");

        @Deprecated
        public static final v27.c<b57> c = new v27.c<>("params-sync-context");

        @Deprecated
        public static final v27.c<g> d = new v27.c<>("params-parser");

        public class a extends d {
            public final /* synthetic */ a a;

            public a(c cVar, a aVar) {
                this.a = aVar;
            }
        }

        public abstract String a();

        public l47 b(URI uri, a aVar) {
            a aVar2 = new a(this, aVar);
            v27.b bVarA = v27.a();
            v27.c<Integer> cVar = a;
            bVarA.b(cVar, Integer.valueOf(aVar2.a.a));
            v27.c<t47> cVar2 = b;
            bVarA.b(cVar2, aVar2.a.b);
            v27.c<b57> cVar3 = c;
            bVarA.b(cVar3, aVar2.a.c);
            v27.c<g> cVar4 = d;
            bVarA.b(cVar4, new m47(this, aVar2));
            v27 v27VarA = bVarA.a();
            Integer numValueOf = Integer.valueOf(((Integer) v27VarA.a.get(cVar)).intValue());
            t47 t47Var = (t47) v27VarA.a.get(cVar2);
            Objects.requireNonNull(t47Var);
            b57 b57Var = (b57) v27VarA.a.get(cVar3);
            Objects.requireNonNull(b57Var);
            g gVar = (g) v27VarA.a.get(cVar4);
            Objects.requireNonNull(gVar);
            return b(uri, new a(numValueOf, t47Var, b57Var, gVar, null, null, null, null));
        }
    }

    @Deprecated
    public static abstract class d {
    }

    public static abstract class e {
        public abstract void a(x47 x47Var);

        public abstract void b(f fVar);
    }

    public static final class f {
        public final List<q37> a;
        public final v27 b;
        public final b c;

        public f(List<q37> list, v27 v27Var, b bVar) {
            this.a = Collections.unmodifiableList(new ArrayList(list));
            c50.A(v27Var, "attributes");
            this.b = v27Var;
            this.c = bVar;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return c50.T(this.a, fVar.a) && c50.T(this.b, fVar.b) && c50.T(this.c, fVar.c);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("addresses", this.a);
            nd5VarK0.d("attributes", this.b);
            nd5VarK0.d("serviceConfig", this.c);
            return nd5VarK0.toString();
        }
    }

    public static abstract class g {
        public abstract b a(Map<String, ?> map);
    }

    public abstract String a();

    public abstract void b();

    public abstract void c();

    public abstract void d(e eVar);

    public static final class b {
        public final x47 a;
        public final Object b;

        public b(Object obj) {
            c50.A(obj, "config");
            this.b = obj;
            this.a = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return c50.T(this.a, bVar.a) && c50.T(this.b, bVar.b);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }

        public String toString() {
            if (this.b != null) {
                nd5 nd5VarK0 = c50.K0(this);
                nd5VarK0.d("config", this.b);
                return nd5VarK0.toString();
            }
            nd5 nd5VarK02 = c50.K0(this);
            nd5VarK02.d("error", this.a);
            return nd5VarK02.toString();
        }

        public b(x47 x47Var) {
            this.b = null;
            c50.A(x47Var, "status");
            this.a = x47Var;
            c50.o(!x47Var.f(), "cannot use OK status: %s", x47Var);
        }
    }
}
