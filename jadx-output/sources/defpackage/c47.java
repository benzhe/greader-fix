package defpackage;

import defpackage.e37;
import defpackage.v27;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class c47 {

    @Deprecated
    public static final v27.c<Map<String, ?>> a = new v27.c<>("io.grpc.LoadBalancer.loadBalancingConfig");

    public static final class b {
        public final List<q37> a;
        public final v27 b;
        public final Object[][] c;

        public static final class a {
            public List<q37> a;
            public v27 b = v27.b;
            public Object[][] c = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        }

        public b(List list, v27 v27Var, Object[][] objArr, a aVar) {
            c50.A(list, "addresses are not set");
            this.a = list;
            c50.A(v27Var, "attrs");
            this.b = v27Var;
            c50.A(objArr, "customOptions");
            this.c = objArr;
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("addrs", this.a);
            nd5VarK0.d("attrs", this.b);
            nd5VarK0.d("customOptions", Arrays.deepToString(this.c));
            return nd5VarK0.toString();
        }
    }

    public static abstract class c {
        public abstract c47 a(d dVar);
    }

    public static abstract class d {
        public h a(b bVar) {
            throw new UnsupportedOperationException();
        }

        public z27 b() {
            throw new UnsupportedOperationException();
        }

        public b57 c() {
            throw new UnsupportedOperationException();
        }

        public abstract void d(i37 i37Var, i iVar);
    }

    public static final class e {
        public static final e e = new e(null, null, x47.f, false);
        public final h a;
        public final e37.a b;
        public final x47 c;
        public final boolean d;

        public e(h hVar, e37.a aVar, x47 x47Var, boolean z) {
            this.a = hVar;
            this.b = aVar;
            c50.A(x47Var, "status");
            this.c = x47Var;
            this.d = z;
        }

        public static e a(x47 x47Var) {
            c50.t(!x47Var.f(), "error status shouldn't be OK");
            return new e(null, null, x47Var, false);
        }

        public static e b(h hVar) {
            c50.A(hVar, "subchannel");
            return new e(hVar, null, x47.f, false);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return c50.T(this.a, eVar.a) && c50.T(this.c, eVar.c) && c50.T(this.b, eVar.b) && this.d == eVar.d;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.c, this.b, Boolean.valueOf(this.d)});
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("subchannel", this.a);
            nd5VarK0.d("streamTracerFactory", this.b);
            nd5VarK0.d("status", this.c);
            nd5VarK0.c("drop", this.d);
            return nd5VarK0.toString();
        }
    }

    public static abstract class f {
    }

    public static final class g {
        public final List<q37> a;
        public final v27 b;
        public final Object c;

        public g(List list, v27 v27Var, Object obj, a aVar) {
            c50.A(list, "addresses");
            this.a = Collections.unmodifiableList(new ArrayList(list));
            c50.A(v27Var, "attributes");
            this.b = v27Var;
            this.c = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof g)) {
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
            nd5VarK0.d("addresses", this.a);
            nd5VarK0.d("attributes", this.b);
            nd5VarK0.d("loadBalancingPolicyConfig", this.c);
            return nd5VarK0.toString();
        }
    }

    public static abstract class h {
        public List<q37> a() {
            throw new UnsupportedOperationException();
        }

        public abstract v27 b();

        public Object c() {
            throw new UnsupportedOperationException();
        }

        public abstract void d();

        public abstract void e();

        public void f(j jVar) {
            throw new UnsupportedOperationException("Not implemented");
        }

        public void g(List<q37> list) {
            throw new UnsupportedOperationException();
        }
    }

    public static abstract class i {
        public abstract e a(f fVar);
    }

    public interface j {
        void a(j37 j37Var);
    }

    public abstract void a(x47 x47Var);

    public abstract void b(g gVar);

    public void c() {
    }

    public abstract void d();
}
