package defpackage;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.apache.commons.io.FileUtils;

/* loaded from: classes.dex */
public abstract class rt2<K, V> implements Serializable, Map<K, V> {
    public transient qt2<Map.Entry<K, V>> e;
    public transient qt2<K> f;
    public transient it2<V> g;

    public static <K, V> rt2<K, V> a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        c50.h3(k, v);
        c50.h3(k2, v2);
        c50.h3(k3, v3);
        c50.h3(k4, v4);
        c50.h3(k5, v5);
        return zt2.d(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static <K, V> rt2<K, V> b(K k, V v) {
        c50.h3(k, v);
        return zt2.d(1, new Object[]{k, v});
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return ((it2) values()).contains(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        qt2<Map.Entry<K, V>> qt2Var = this.e;
        if (qt2Var != null) {
            return qt2Var;
        }
        zt2 zt2Var = (zt2) this;
        cu2 cu2Var = new cu2(zt2Var, zt2Var.i, zt2Var.j);
        this.e = cu2Var;
        return cu2Var;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return c50.b4((qt2) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return ((zt2) this).size() == 0;
    }

    @Override // java.util.Map
    public Set keySet() {
        qt2<K> qt2Var = this.f;
        if (qt2Var != null) {
            return qt2Var;
        }
        zt2 zt2Var = (zt2) this;
        eu2 eu2Var = new eu2(zt2Var, new du2(zt2Var.i, 0, zt2Var.j));
        this.f = eu2Var;
        return eu2Var;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = ((zt2) this).size();
        c50.g4(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size << 3, FileUtils.ONE_GB));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection values() {
        it2<V> it2Var = this.g;
        if (it2Var != null) {
            return it2Var;
        }
        zt2 zt2Var = (zt2) this;
        du2 du2Var = new du2(zt2Var.i, 1, zt2Var.j);
        this.g = du2Var;
        return du2Var;
    }
}
