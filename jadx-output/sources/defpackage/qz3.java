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
public class qz3<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int k = 0;
    public final int e;
    public boolean h;
    public volatile xz3 i;
    public List<vz3> f = Collections.emptyList();
    public Map<K, V> g = Collections.emptyMap();
    public Map<K, V> j = Collections.emptyMap();

    public qz3(int i, rz3 rz3Var) {
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
        g();
        int iA = a(k2);
        if (iA >= 0) {
            vz3 vz3Var = this.f.get(iA);
            vz3Var.g.g();
            V v2 = vz3Var.f;
            vz3Var.f = v;
            return v2;
        }
        g();
        if (this.f.isEmpty() && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(this.e);
        }
        int i = -(iA + 1);
        if (i >= this.e) {
            return h().put(k2, v);
        }
        int size = this.f.size();
        int i2 = this.e;
        if (size == i2) {
            vz3 vz3VarRemove = this.f.remove(i2 - 1);
            h().put(vz3VarRemove.e, vz3VarRemove.f);
        }
        this.f.add(i, new vz3(this, k2, v));
        return null;
    }

    public final Map.Entry<K, V> c(int i) {
        return this.f.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        g();
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

    public final V d(int i) {
        g();
        V v = this.f.remove(i).f;
        if (!this.g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = h().entrySet().iterator();
            this.f.add(new vz3(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final int e() {
        return this.f.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.i == null) {
            this.i = new xz3(this, null);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qz3)) {
            return super.equals(obj);
        }
        qz3 qz3Var = (qz3) obj;
        int size = size();
        if (size != qz3Var.size()) {
            return false;
        }
        int iE = e();
        if (iE != qz3Var.e()) {
            return entrySet().equals(qz3Var.entrySet());
        }
        for (int i = 0; i < iE; i++) {
            if (!c(i).equals(qz3Var.c(i))) {
                return false;
            }
        }
        if (iE != size) {
            return this.g.equals(qz3Var.g);
        }
        return true;
    }

    public final Iterable<Map.Entry<K, V>> f() {
        return this.g.isEmpty() ? (Iterable<Map.Entry<K, V>>) sz3.b : this.g.entrySet();
    }

    public final void g() {
        if (this.h) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.f.get(iA).f : this.g.get(comparable);
    }

    public final SortedMap<K, V> h() {
        g();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iE = e();
        int iHashCode = 0;
        for (int i = 0; i < iE; i++) {
            iHashCode += this.f.get(i).hashCode();
        }
        return this.g.size() > 0 ? iHashCode + this.g.hashCode() : iHashCode;
    }

    public void i() {
        if (this.h) {
            return;
        }
        this.g = this.g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.g);
        this.j = this.j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.j);
        this.h = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return d(iA);
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
