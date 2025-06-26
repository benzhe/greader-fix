package defpackage;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class xa4<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int k = 0;
    public final int e;
    public boolean h;
    public volatile wa4 i;
    public List<ua4> f = Collections.emptyList();
    public Map<K, V> g = Collections.emptyMap();
    public Map<K, V> j = Collections.emptyMap();

    public void a() {
        if (this.h) {
            return;
        }
        this.g = this.g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.g);
        this.j = this.j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.j);
        this.h = true;
    }

    public final int b() {
        return this.f.size();
    }

    public final Map.Entry<K, V> c(int i) {
        return this.f.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
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
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.g.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final V put(K k2, V v) {
        g();
        int iF = f(k2);
        if (iF >= 0) {
            ua4 ua4Var = this.f.get(iF);
            ua4Var.g.g();
            V v2 = (V) ua4Var.f;
            ua4Var.f = v;
            return v2;
        }
        g();
        if (this.f.isEmpty() && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(this.e);
        }
        int i = -(iF + 1);
        if (i >= this.e) {
            return h().put(k2, v);
        }
        int size = this.f.size();
        int i2 = this.e;
        if (size == i2) {
            ua4 ua4VarRemove = this.f.remove(i2 - 1);
            h().put(ua4VarRemove.e, ua4VarRemove.f);
        }
        this.f.add(i, new ua4(this, k2, v));
        return null;
    }

    public final V e(int i) {
        g();
        V v = (V) this.f.remove(i).f;
        if (!this.g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = h().entrySet().iterator();
            List<ua4> list = this.f;
            Map.Entry<K, V> next = it.next();
            list.add(new ua4(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.i == null) {
            this.i = new wa4(this);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa4)) {
            return super.equals(obj);
        }
        xa4 xa4Var = (xa4) obj;
        int size = size();
        if (size != xa4Var.size()) {
            return false;
        }
        int iB = b();
        if (iB != xa4Var.b()) {
            return ((AbstractSet) entrySet()).equals(xa4Var.entrySet());
        }
        for (int i = 0; i < iB; i++) {
            if (!c(i).equals(xa4Var.c(i))) {
                return false;
            }
        }
        if (iB != size) {
            return this.g.equals(xa4Var.g);
        }
        return true;
    }

    public final int f(K k2) {
        int size = this.f.size() - 1;
        int i = 0;
        if (size >= 0) {
            int iCompareTo = k2.compareTo(this.f.get(size).e);
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
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

    public final void g() {
        if (this.h) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        return iF >= 0 ? (V) this.f.get(iF).f : this.g.get(comparable);
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
    public final int hashCode() {
        int iB = b();
        int iHashCode = 0;
        for (int i = 0; i < iB; i++) {
            iHashCode += this.f.get(i).hashCode();
        }
        return this.g.size() > 0 ? this.g.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        if (iF >= 0) {
            return e(iF);
        }
        if (this.g.isEmpty()) {
            return null;
        }
        return this.g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g.size() + this.f.size();
    }
}
