package defpackage;

import defpackage.c47;
import defpackage.e47;
import defpackage.l47;
import defpackage.z27;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class m57 {
    public final e47 a;
    public final String b;

    public final class b {
        public final c47.d a;
        public c47 b;
        public d47 c;

        public b(c47.d dVar) {
            this.a = dVar;
            d47 d47VarA = m57.this.a.a(m57.this.b);
            this.c = d47VarA;
            if (d47VarA == null) {
                throw new IllegalStateException(jo.s(jo.z("Could not find policy '"), m57.this.b, "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."));
            }
            this.b = d47VarA.a(dVar);
        }
    }

    public static final class c extends c47.i {
        public c() {
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            return c47.e.e;
        }

        public String toString() {
            return new nd5(c.class.getSimpleName(), null).toString();
        }

        public c(a aVar) {
        }
    }

    public static final class d extends c47.i {
        public final x47 a;

        public d(x47 x47Var) {
            this.a = x47Var;
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            return c47.e.a(this.a);
        }
    }

    public static final class e extends c47 {
        public e(a aVar) {
        }

        @Override // defpackage.c47
        public void a(x47 x47Var) {
        }

        @Override // defpackage.c47
        public void b(c47.g gVar) {
        }

        @Override // defpackage.c47
        public void d() {
        }
    }

    public static final class f extends Exception {
        public f(String str, a aVar) {
            super(str);
        }
    }

    public static final class g {
        public final d47 a;
        public final Map<String, ?> b;
        public final Object c;

        public g(d47 d47Var, Map<String, ?> map, Object obj) {
            c50.A(d47Var, "provider");
            this.a = d47Var;
            this.b = map;
            this.c = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || g.class != obj.getClass()) {
                return false;
            }
            g gVar = (g) obj;
            return c50.T(this.a, gVar.a) && c50.T(this.b, gVar.b) && c50.T(this.c, gVar.c);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("provider", this.a);
            nd5VarK0.d("rawConfig", this.b);
            nd5VarK0.d("config", this.c);
            return nd5VarK0.toString();
        }
    }

    public m57(String str) {
        e47 e47Var;
        Logger logger = e47.c;
        synchronized (e47.class) {
            if (e47.d == null) {
                List<d47> listS1 = n56.s1(d47.class, e47.e, d47.class.getClassLoader(), new e47.a());
                e47.d = new e47();
                for (d47 d47Var : listS1) {
                    e47.c.fine("Service loader found " + d47Var);
                    if (d47Var.d()) {
                        e47 e47Var2 = e47.d;
                        synchronized (e47Var2) {
                            c50.t(d47Var.d(), "isAvailable() returned false");
                            e47Var2.a.add(d47Var);
                        }
                    }
                }
                e47.d.b();
            }
            e47Var = e47.d;
        }
        c50.A(e47Var, "registry");
        this.a = e47Var;
        c50.A(str, "defaultPolicy");
        this.b = str;
    }

    public static d47 a(m57 m57Var, String str, String str2) throws f {
        d47 d47VarA = m57Var.a.a(str);
        if (d47VarA != null) {
            return d47VarA;
        }
        throw new f("Trying to load '" + str + "' because " + str2 + ", but it's unavailable", null);
    }

    public l47.b b(Map<String, ?> map, z27 z27Var) {
        List<w87> listA2;
        if (map != null) {
            try {
                listA2 = n56.A2(n56.R0(map));
            } catch (RuntimeException e2) {
                return new l47.b(x47.h.h("can't parse load balancer configuration").g(e2));
            }
        } else {
            listA2 = null;
        }
        if (listA2 == null || listA2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (w87 w87Var : listA2) {
            String str = w87Var.a;
            d47 d47VarA = this.a.a(str);
            if (d47VarA != null) {
                if (!arrayList.isEmpty()) {
                    z27Var.b(z27.a.DEBUG, "{0} specified by Service Config are not available", arrayList);
                }
                l47.b bVarE = d47VarA.e(w87Var.b);
                return bVarE.a != null ? bVarE : new l47.b(new g(d47VarA, w87Var.b, bVarE.b));
            }
            arrayList.add(str);
        }
        return new l47.b(x47.h.h("None of " + arrayList + " specified by Service Config are available."));
    }
}
