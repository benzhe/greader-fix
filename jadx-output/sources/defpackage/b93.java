package defpackage;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class b93<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int k = 0;
    public final int e;
    public boolean h;
    public volatile g93 i;
    public List<e93> f = Collections.emptyList();
    public Map<K, V> g = Collections.emptyMap();
    public Map<K, V> j = Collections.emptyMap();

    public b93(int i, a93 a93Var) {
        this.e = i;
    }

    public final int a(K k2) {
        int size = this.f.size() - 1;
        if (size >= 0) {
            int iCompareTo = k2.compareTo(this.f.get(size).e);
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k2.compareTo(this.f.get(i2).e);
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final V put(K k2, V v) {
        f();
        int iA = a(k2);
        if (iA >= 0) {
            e93 e93Var = this.f.get(iA);
            e93Var.g.f();
            V v2 = e93Var.f;
            e93Var.f = v;
            return v2;
        }
        f();
        if (this.f.isEmpty() && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(this.e);
        }
        int i = -(iA + 1);
        if (i >= this.e) {
            return g().put(k2, v);
        }
        int size = this.f.size();
        int i2 = this.e;
        if (size == i2) {
            e93 e93VarRemove = this.f.remove(i2 - 1);
            g().put(e93VarRemove.e, e93VarRemove.f);
        }
        this.f.add(i, new e93(this, k2, v));
        return null;
    }

    public void c() {
        if (this.h) {
            return;
        }
        this.g = this.g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.g);
        this.j = this.j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.j);
        this.h = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f.isEmpty()) {
            this.f.clear();
        }
        if (this.g.isEmpty()) {
            return;
        }
        this.g.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.g.containsKey(comparable);
    }

    public final int d() {
        return this.f.size();
    }

    public final Iterable<Map.Entry<K, V>> e() {
        return this.g.isEmpty() ? (Iterable<Map.Entry<K, V>>) d93.b : this.g.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.i == null) {
            this.i = new g93(this, null);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b93)) {
            return super.equals(obj);
        }
        b93 b93Var = (b93) obj;
        int size = size();
        if (size != b93Var.size()) {
            return false;
        }
        int iD = d();
        if (iD != b93Var.d()) {
            return entrySet().equals(b93Var.entrySet());
        }
        for (int i = 0; i < iD; i++) {
            if (!h(i).equals(b93Var.h(i))) {
                return false;
            }
        }
        if (iD != size) {
            return this.g.equals(b93Var.g);
        }
        return true;
    }

    public final void f() {
        if (this.h) {
            throw new UnsupportedOperationException();
        }
    }

    public final SortedMap<K, V> g() {
        f();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.f.get(iA).f : this.g.get(comparable);
    }

    public final Map.Entry<K, V> h(int i) {
        return this.f.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iD = d();
        int iHashCode = 0;
        for (int i = 0; i < iD; i++) {
            iHashCode += this.f.get(i).hashCode();
        }
        return this.g.size() > 0 ? iHashCode + this.g.hashCode() : iHashCode;
    }

    public final V i(int i) {
        f();
        V v = this.f.remove(i).f;
        if (!this.g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f.add(new e93(this, it.next()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return i(iA);
        }
        if (this.g.isEmpty()) {
            return null;
        }
        return this.g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.g.size() + this.f.size();
    }
}
