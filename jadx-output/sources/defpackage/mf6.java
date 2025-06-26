package defpackage;

import defpackage.eg6;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;

/* loaded from: classes.dex */
public final class mf6 implements ee6 {
    public final ne6 e;
    public final boolean f;

    public final class a<K, V> extends de6<Map<K, V>> {
        public final de6<K> a;
        public final de6<V> b;
        public final af6<? extends Map<K, V>> c;

        public a(od6 od6Var, Type type, de6<K> de6Var, Type type2, de6<V> de6Var2, af6<? extends Map<K, V>> af6Var) {
            this.a = new tf6(od6Var, de6Var, type);
            this.b = new tf6(od6Var, de6Var2, type2);
            this.c = af6Var;
        }

        @Override // defpackage.de6
        public Object a(eg6 eg6Var) throws IOException {
            fg6 fg6VarQ = eg6Var.Q();
            if (fg6VarQ == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            Map<K, V> mapA = this.c.a();
            if (fg6VarQ == fg6.BEGIN_ARRAY) {
                eg6Var.a();
                while (eg6Var.m()) {
                    eg6Var.a();
                    K kA = this.a.a(eg6Var);
                    if (mapA.put(kA, this.b.a(eg6Var)) != null) {
                        throw new be6("duplicate key: " + kA);
                    }
                    eg6Var.f();
                }
                eg6Var.f();
            } else {
                eg6Var.b();
                while (eg6Var.m()) {
                    Objects.requireNonNull((eg6.a) xe6.a);
                    if (eg6Var instanceof kf6) {
                        kf6 kf6Var = (kf6) eg6Var;
                        kf6Var.j0(fg6.NAME);
                        Map.Entry entry = (Map.Entry) ((Iterator) kf6Var.k0()).next();
                        kf6Var.p0(entry.getValue());
                        kf6Var.p0(new yd6((String) entry.getKey()));
                    } else {
                        int iE = eg6Var.l;
                        if (iE == 0) {
                            iE = eg6Var.e();
                        }
                        if (iE == 13) {
                            eg6Var.l = 9;
                        } else if (iE == 12) {
                            eg6Var.l = 8;
                        } else {
                            if (iE != 14) {
                                StringBuilder sbZ = jo.z("Expected a name but was ");
                                sbZ.append(eg6Var.Q());
                                sbZ.append(eg6Var.q());
                                throw new IllegalStateException(sbZ.toString());
                            }
                            eg6Var.l = 10;
                        }
                    }
                    K kA2 = this.a.a(eg6Var);
                    if (mapA.put(kA2, this.b.a(eg6Var)) != null) {
                        throw new be6("duplicate key: " + kA2);
                    }
                }
                eg6Var.g();
            }
            return mapA;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Object obj) throws IOException {
            String strL;
            Map map = (Map) obj;
            if (map == null) {
                gg6Var.m();
                return;
            }
            if (!mf6.this.f) {
                gg6Var.c();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    gg6Var.i(String.valueOf(entry.getKey()));
                    this.b.b(gg6Var, entry.getValue());
                }
                gg6Var.g();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                de6<K> de6Var = this.a;
                K key = entry2.getKey();
                Objects.requireNonNull(de6Var);
                try {
                    lf6 lf6Var = new lf6();
                    de6Var.b(lf6Var, key);
                    if (!lf6Var.p.isEmpty()) {
                        throw new IllegalStateException("Expected one JSON element but was " + lf6Var.p);
                    }
                    td6 td6Var = lf6Var.r;
                    arrayList.add(td6Var);
                    arrayList2.add(entry2.getValue());
                    Objects.requireNonNull(td6Var);
                    z |= (td6Var instanceof qd6) || (td6Var instanceof wd6);
                } catch (IOException e) {
                    throw new ud6(e);
                }
            }
            if (z) {
                gg6Var.b();
                int size = arrayList.size();
                while (i < size) {
                    gg6Var.b();
                    uf6.X.b(gg6Var, (td6) arrayList.get(i));
                    this.b.b(gg6Var, arrayList2.get(i));
                    gg6Var.f();
                    i++;
                }
                gg6Var.f();
                return;
            }
            gg6Var.c();
            int size2 = arrayList.size();
            while (i < size2) {
                td6 td6Var2 = (td6) arrayList.get(i);
                Objects.requireNonNull(td6Var2);
                if (td6Var2 instanceof yd6) {
                    yd6 yd6VarD = td6Var2.d();
                    Object obj2 = yd6VarD.a;
                    if (obj2 instanceof Number) {
                        strL = String.valueOf(yd6VarD.j());
                    } else if (obj2 instanceof Boolean) {
                        strL = Boolean.toString(yd6VarD.h());
                    } else {
                        if (!(obj2 instanceof String)) {
                            throw new AssertionError();
                        }
                        strL = yd6VarD.l();
                    }
                } else {
                    if (!(td6Var2 instanceof vd6)) {
                        throw new AssertionError();
                    }
                    strL = "null";
                }
                gg6Var.i(strL);
                this.b.b(gg6Var, arrayList2.get(i));
                i++;
            }
            gg6Var.g();
        }
    }

    public mf6(ne6 ne6Var, boolean z) {
        this.e = ne6Var;
        this.f = z;
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        Type[] actualTypeArguments;
        Type type = dg6Var.b;
        if (!Map.class.isAssignableFrom(dg6Var.a)) {
            return null;
        }
        Class<?> clsE = he6.e(type);
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeF = he6.f(type, clsE, Map.class);
            actualTypeArguments = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new a(od6Var, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? uf6.f : od6Var.d(new dg6<>(type2)), actualTypeArguments[1], od6Var.d(new dg6<>(actualTypeArguments[1])), this.e.a(dg6Var));
    }
}
