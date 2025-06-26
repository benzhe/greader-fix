package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class od6 {
    public static final dg6<?> i = new dg6<>(Object.class);
    public final ThreadLocal<Map<dg6<?>, a<?>>> a;
    public final Map<dg6<?>, de6<?>> b;
    public final ne6 c;
    public final jf6 d;
    public final List<ee6> e;
    public final boolean f;
    public final List<ee6> g;
    public final List<ee6> h;

    public static class a<T> extends de6<T> {
        public de6<T> a;

        @Override // defpackage.de6
        public T a(eg6 eg6Var) throws IOException {
            de6<T> de6Var = this.a;
            if (de6Var != null) {
                return de6Var.a(eg6Var);
            }
            throw new IllegalStateException();
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, T t) throws IOException {
            de6<T> de6Var = this.a;
            if (de6Var == null) {
                throw new IllegalStateException();
            }
            de6Var.b(gg6Var, t);
        }
    }

    public od6() {
        ve6 ve6Var = ve6.g;
        id6 id6Var = id6.e;
        Map mapEmptyMap = Collections.emptyMap();
        List<ee6> listEmptyList = Collections.emptyList();
        List<ee6> listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        ne6 ne6Var = new ne6(mapEmptyMap);
        this.c = ne6Var;
        this.f = true;
        this.g = listEmptyList;
        this.h = listEmptyList2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(uf6.Y);
        arrayList.add(nf6.b);
        arrayList.add(ve6Var);
        arrayList.addAll(listEmptyList3);
        arrayList.add(uf6.D);
        arrayList.add(uf6.m);
        arrayList.add(uf6.g);
        arrayList.add(uf6.i);
        arrayList.add(uf6.k);
        de6<Number> de6Var = uf6.t;
        arrayList.add(new wf6(Long.TYPE, Long.class, de6Var));
        arrayList.add(new wf6(Double.TYPE, Double.class, new kd6(this)));
        arrayList.add(new wf6(Float.TYPE, Float.class, new ld6(this)));
        arrayList.add(uf6.x);
        arrayList.add(uf6.o);
        arrayList.add(uf6.q);
        arrayList.add(new vf6(AtomicLong.class, new ce6(new md6(de6Var))));
        arrayList.add(new vf6(AtomicLongArray.class, new ce6(new nd6(de6Var))));
        arrayList.add(uf6.s);
        arrayList.add(uf6.z);
        arrayList.add(uf6.F);
        arrayList.add(uf6.H);
        arrayList.add(new vf6(BigDecimal.class, uf6.B));
        arrayList.add(new vf6(BigInteger.class, uf6.C));
        arrayList.add(uf6.J);
        arrayList.add(uf6.L);
        arrayList.add(uf6.P);
        arrayList.add(uf6.R);
        arrayList.add(uf6.W);
        arrayList.add(uf6.N);
        arrayList.add(uf6.d);
        arrayList.add(if6.b);
        arrayList.add(uf6.U);
        arrayList.add(rf6.b);
        arrayList.add(qf6.b);
        arrayList.add(uf6.S);
        arrayList.add(gf6.c);
        arrayList.add(uf6.b);
        arrayList.add(new hf6(ne6Var));
        arrayList.add(new mf6(ne6Var, false));
        jf6 jf6Var = new jf6(ne6Var);
        this.d = jf6Var;
        arrayList.add(jf6Var);
        arrayList.add(uf6.Z);
        arrayList.add(new pf6(ne6Var, id6Var, ve6Var, jf6Var));
        this.e = Collections.unmodifiableList(arrayList);
    }

    public static void a(Object obj, eg6 eg6Var) {
        if (obj != null) {
            try {
                if (eg6Var.Q() == fg6.END_DOCUMENT) {
                } else {
                    throw new ud6("JSON document was not fully consumed.");
                }
            } catch (hg6 e) {
                throw new be6(e);
            } catch (IOException e2) {
                throw new ud6(e2);
            }
        }
    }

    public static void b(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> T c(eg6 eg6Var, Type type) throws be6, ud6 {
        boolean z = eg6Var.f;
        boolean z2 = true;
        eg6Var.f = true;
        try {
            try {
                try {
                    eg6Var.Q();
                    z2 = false;
                    T tA = d(new dg6<>(type)).a(eg6Var);
                    eg6Var.f = z;
                    return tA;
                } catch (IOException e) {
                    throw new be6(e);
                } catch (AssertionError e2) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                    assertionError.initCause(e2);
                    throw assertionError;
                }
            } catch (EOFException e3) {
                if (!z2) {
                    throw new be6(e3);
                }
                eg6Var.f = z;
                return null;
            } catch (IllegalStateException e4) {
                throw new be6(e4);
            }
        } catch (Throwable th) {
            eg6Var.f = z;
            throw th;
        }
    }

    public <T> de6<T> d(dg6<T> dg6Var) {
        de6<T> de6Var = (de6) this.b.get(dg6Var);
        if (de6Var != null) {
            return de6Var;
        }
        Map<dg6<?>, a<?>> map = this.a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.a.set(map);
            z = true;
        }
        a<?> aVar = map.get(dg6Var);
        if (aVar != null) {
            return aVar;
        }
        try {
            a<?> aVar2 = new a<>();
            map.put(dg6Var, aVar2);
            Iterator<ee6> it = this.e.iterator();
            while (it.hasNext()) {
                de6<T> de6VarB = it.next().b(this, dg6Var);
                if (de6VarB != null) {
                    if (aVar2.a != null) {
                        throw new AssertionError();
                    }
                    aVar2.a = de6VarB;
                    this.b.put(dg6Var, de6VarB);
                    return de6VarB;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + dg6Var);
        } finally {
            map.remove(dg6Var);
            if (z) {
                this.a.remove();
            }
        }
    }

    public <T> de6<T> e(ee6 ee6Var, dg6<T> dg6Var) {
        if (!this.e.contains(ee6Var)) {
            ee6Var = this.d;
        }
        boolean z = false;
        for (ee6 ee6Var2 : this.e) {
            if (z) {
                de6<T> de6VarB = ee6Var2.b(this, dg6Var);
                if (de6VarB != null) {
                    return de6VarB;
                }
            } else if (ee6Var2 == ee6Var) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + dg6Var);
    }

    public eg6 f(Reader reader) {
        eg6 eg6Var = new eg6(reader);
        eg6Var.f = false;
        return eg6Var;
    }

    public gg6 g(Writer writer) throws IOException {
        gg6 gg6Var = new gg6(writer);
        gg6Var.m = false;
        return gg6Var;
    }

    public String h(Object obj) throws ud6 {
        if (obj == null) {
            td6 td6Var = vd6.a;
            StringWriter stringWriter = new StringWriter();
            try {
                i(td6Var, g(stringWriter));
                return stringWriter.toString();
            } catch (IOException e) {
                throw new ud6(e);
            }
        }
        Type type = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            j(obj, type, g(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e2) {
            throw new ud6(e2);
        }
    }

    public void i(td6 td6Var, gg6 gg6Var) throws ud6 {
        boolean z = gg6Var.j;
        gg6Var.j = true;
        boolean z2 = gg6Var.k;
        gg6Var.k = this.f;
        boolean z3 = gg6Var.m;
        gg6Var.m = false;
        try {
            try {
                uf6.X.b(gg6Var, td6Var);
            } catch (IOException e) {
                throw new ud6(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } finally {
            gg6Var.j = z;
            gg6Var.k = z2;
            gg6Var.m = z3;
        }
    }

    public void j(Object obj, Type type, gg6 gg6Var) throws ud6 {
        de6 de6VarD = d(new dg6(type));
        boolean z = gg6Var.j;
        gg6Var.j = true;
        boolean z2 = gg6Var.k;
        gg6Var.k = this.f;
        boolean z3 = gg6Var.m;
        gg6Var.m = false;
        try {
            try {
                try {
                    de6VarD.b(gg6Var, obj);
                } catch (IOException e) {
                    throw new ud6(e);
                }
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } finally {
            gg6Var.j = z;
            gg6Var.k = z2;
            gg6Var.m = z3;
        }
    }

    public String toString() {
        return "{serializeNulls:false,factories:" + this.e + ",instanceCreators:" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
