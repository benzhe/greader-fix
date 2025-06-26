package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import l4.b;
import l4.c;
import l4.e;

/* loaded from: classes.dex */
public class f4<K, V> extends m4<K, V> implements Map<K, V> {
    public l4<K, V> l;

    public class a extends l4<K, V> {
        public a() {
        }

        @Override // defpackage.l4
        public void a() {
            f4.this.clear();
        }

        @Override // defpackage.l4
        public Object b(int i, int i2) {
            return f4.this.f[(i << 1) + i2];
        }

        @Override // defpackage.l4
        public Map<K, V> c() {
            return f4.this;
        }

        @Override // defpackage.l4
        public int d() {
            return f4.this.g;
        }

        @Override // defpackage.l4
        public int e(Object obj) {
            return f4.this.e(obj);
        }

        @Override // defpackage.l4
        public int f(Object obj) {
            return f4.this.g(obj);
        }

        @Override // defpackage.l4
        public void g(K k, V v) {
            f4.this.put(k, v);
        }

        @Override // defpackage.l4
        public void h(int i) {
            f4.this.i(i);
        }

        @Override // defpackage.l4
        public V i(int i, V v) {
            int i2 = (i << 1) + 1;
            Object[] objArr = f4.this.f;
            V v2 = (V) objArr[i2];
            objArr[i2] = v;
            return v2;
        }
    }

    public f4() {
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        l4<K, V> l4VarL = l();
        if (l4VarL.a == null) {
            l4VarL.a = l4VarL.new b();
        }
        return l4VarL.a;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        l4<K, V> l4VarL = l();
        if (l4VarL.b == null) {
            l4VarL.b = l4VarL.new c();
        }
        return l4VarL.b;
    }

    public final l4<K, V> l() {
        if (this.l == null) {
            this.l = new a();
        }
        return this.l;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        b(map.size() + this.g);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        l4<K, V> l4VarL = l();
        if (l4VarL.c == null) {
            l4VarL.c = l4VarL.new e();
        }
        return l4VarL.c;
    }

    public f4(int i) {
        super(i);
    }

    public f4(m4 m4Var) {
        super(m4Var);
    }
}
