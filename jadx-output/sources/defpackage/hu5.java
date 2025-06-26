package defpackage;

import defpackage.bd6;
import defpackage.wc6;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class hu5 {
    public static final hu5 b;
    public bd6 a;

    public static class a {
        public hu5 a;
        public Map<String, Object> b = new HashMap();

        public a(hu5 hu5Var) {
            this.a = hu5Var;
        }

        public final wc6 a(eu5 eu5Var, Map<String, Object> map) {
            bd6 bd6VarC = this.a.c(eu5Var);
            wc6.b bVarD = lu5.i(bd6VarC) ? bd6VarC.U().d() : wc6.I();
            boolean z = false;
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Map) {
                    wc6 wc6VarA = a(eu5Var.k(key), (Map) value);
                    if (wc6VarA != null) {
                        bd6.b bVarZ = bd6.Z();
                        bVarZ.o();
                        bd6.I((bd6) bVarZ.f, wc6VarA);
                        bVarD.r(key, bVarZ.l());
                        z = true;
                    }
                } else {
                    if (value instanceof bd6) {
                        bVarD.r(key, (bd6) value);
                    } else {
                        Objects.requireNonNull(bVarD);
                        key.getClass();
                        if (((wc6) bVarD.f).F().containsKey(key)) {
                            bx5.c(value == null, "Expected entry to be a Map, a Value or null", new Object[0]);
                            bVarD.o();
                            ((uj6) wc6.C((wc6) bVarD.f)).remove(key);
                        }
                    }
                    z = true;
                }
            }
            if (z) {
                return bVarD.l();
            }
            return null;
        }

        public hu5 b() {
            wc6 wc6VarA = a(eu5.g, this.b);
            if (wc6VarA == null) {
                return this.a;
            }
            bd6.b bVarZ = bd6.Z();
            bVarZ.o();
            bd6.I((bd6) bVarZ.f, wc6VarA);
            return new hu5(bVarZ.l());
        }

        public a c(eu5 eu5Var, bd6 bd6Var) {
            bx5.c(!eu5Var.C(), "Cannot set field for empty path on ObjectValue", new Object[0]);
            d(eu5Var, bd6Var);
            return this;
        }

        public final void d(eu5 eu5Var, bd6 bd6Var) {
            Map<String, Object> map;
            Map<String, Object> map2 = this.b;
            for (int i = 0; i < eu5Var.I() - 1; i++) {
                String strY = eu5Var.y(i);
                Object obj = map2.get(strY);
                if (obj instanceof Map) {
                    map = (Map) obj;
                } else {
                    if (obj instanceof bd6) {
                        bd6 bd6Var2 = (bd6) obj;
                        if (bd6Var2.Y() == bd6.c.MAP_VALUE) {
                            HashMap map3 = new HashMap(bd6Var2.U().F());
                            map2.put(strY, map3);
                            map2 = map3;
                        }
                    }
                    map = new HashMap<>();
                    map2.put(strY, map);
                }
                map2 = map;
            }
            map2.put(eu5Var.x(), bd6Var);
        }
    }

    static {
        bd6.b bVarZ = bd6.Z();
        bVarZ.v(wc6.D());
        b = new hu5(bVarZ.l());
    }

    public hu5(bd6 bd6Var) {
        bx5.c(bd6Var.Y() == bd6.c.MAP_VALUE, "ObjectValues should be backed by a MapValue", new Object[0]);
        bx5.c(!c50.o0(bd6Var), "ServerTimestamps should not be used as an ObjectValue", new Object[0]);
        this.a = bd6Var;
    }

    public static hu5 b(Map<String, bd6> map) {
        bd6.b bVarZ = bd6.Z();
        wc6.b bVarI = wc6.I();
        bVarI.o();
        ((uj6) wc6.C((wc6) bVarI.f)).putAll(map);
        bVarZ.u(bVarI);
        return new hu5(bVarZ.l());
    }

    public final ou5 a(wc6 wc6Var) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, bd6> entry : wc6Var.F().entrySet()) {
            eu5 eu5Var = new eu5(Collections.singletonList(entry.getKey()));
            if (lu5.i(entry.getValue())) {
                Set<eu5> set = a(entry.getValue().U()).a;
                if (set.isEmpty()) {
                    hashSet.add(eu5Var);
                } else {
                    Iterator<eu5> it = set.iterator();
                    while (it.hasNext()) {
                        hashSet.add(eu5Var.i(it.next()));
                    }
                }
            } else {
                hashSet.add(eu5Var);
            }
        }
        return new ou5(hashSet);
    }

    public bd6 c(eu5 eu5Var) {
        if (eu5Var.C()) {
            return this.a;
        }
        bd6 bd6VarG = this.a;
        for (int i = 0; i < eu5Var.I() - 1; i++) {
            bd6VarG = bd6VarG.U().G(eu5Var.y(i), null);
            if (!lu5.i(bd6VarG)) {
                return null;
            }
        }
        return bd6VarG.U().G(eu5Var.x(), null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof hu5) {
            return lu5.e(this.a, ((hu5) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
