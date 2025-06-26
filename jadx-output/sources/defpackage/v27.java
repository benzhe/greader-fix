package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class v27 {
    public static final v27 b = new v27(Collections.emptyMap());
    public final Map<c<?>, Object> a;

    public static final class b {
        public v27 a;
        public Map<c<?>, Object> b;

        public b(v27 v27Var, a aVar) {
            this.a = v27Var;
        }

        public v27 a() {
            if (this.b != null) {
                for (Map.Entry<c<?>, Object> entry : this.a.a.entrySet()) {
                    if (!this.b.containsKey(entry.getKey())) {
                        this.b.put(entry.getKey(), entry.getValue());
                    }
                }
                this.a = new v27(this.b, null);
                this.b = null;
            }
            return this.a;
        }

        public <T> b b(c<T> cVar, T t) {
            if (this.b == null) {
                this.b = new IdentityHashMap(1);
            }
            this.b.put(cVar, t);
            return this;
        }
    }

    public static final class c<T> {
        public final String a;

        public c(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    public v27(Map<c<?>, Object> map) {
        this.a = map;
    }

    public static b a() {
        return new b(b, null);
    }

    public b b() {
        return new b(this, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v27.class != obj.getClass()) {
            return false;
        }
        v27 v27Var = (v27) obj;
        if (this.a.size() != v27Var.a.size()) {
            return false;
        }
        for (Map.Entry<c<?>, Object> entry : this.a.entrySet()) {
            if (!v27Var.a.containsKey(entry.getKey()) || !c50.T(entry.getValue(), v27Var.a.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 0;
        for (Map.Entry<c<?>, Object> entry : this.a.entrySet()) {
            iHashCode += Arrays.hashCode(new Object[]{entry.getKey(), entry.getValue()});
        }
        return iHashCode;
    }

    public String toString() {
        return this.a.toString();
    }

    public v27(Map map, a aVar) {
        this.a = map;
    }
}
