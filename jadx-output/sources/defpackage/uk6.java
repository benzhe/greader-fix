package defpackage;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class uk6<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int k = 0;
    public final int e;
    public boolean h;
    public volatile uk6<K, V>.d i;
    public List<uk6<K, V>.b> f = Collections.emptyList();
    public Map<K, V> g = Collections.emptyMap();
    public Map<K, V> j = Collections.emptyMap();

    public static class a {
        public static final Iterator<Object> a = new C0052a();
        public static final Iterable<Object> b = new b();

        /* renamed from: uk6$a$a, reason: collision with other inner class name */
        public static class C0052a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public static class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return a.a;
            }
        }
    }

    public class c implements Iterator<Map.Entry<K, V>> {
        public int e = -1;
        public boolean f;
        public Iterator<Map.Entry<K, V>> g;

        public c(tk6 tk6Var) {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.g == null) {
                this.g = uk6.this.g.entrySet().iterator();
            }
            return this.g;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.e + 1 >= uk6.this.f.size()) {
                return !uk6.this.g.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            this.f = true;
            int i = this.e + 1;
            this.e = i;
            return i < uk6.this.f.size() ? uk6.this.f.get(this.e) : a().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f = false;
            uk6 uk6Var = uk6.this;
            int i = uk6.k;
            uk6Var.b();
            if (this.e >= uk6.this.f.size()) {
                a().remove();
                return;
            }
            uk6 uk6Var2 = uk6.this;
            int i2 = this.e;
            this.e = i2 - 1;
            uk6Var2.i(i2);
        }
    }

    public class d extends AbstractSet<Map.Entry<K, V>> {
        public d(tk6 tk6Var) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            uk6.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            uk6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = uk6.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new c(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            uk6.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return uk6.this.size();
        }
    }

    public uk6(int i, tk6 tk6Var) {
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

    public final void b() {
        if (this.h) {
            throw new UnsupportedOperationException();
        }
    }

    public Map.Entry<K, V> c(int i) {
        return this.f.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        b();
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

    public int d() {
        return this.f.size();
    }

    public Iterable<Map.Entry<K, V>> e() {
        return this.g.isEmpty() ? (Iterable<Map.Entry<K, V>>) a.b : this.g.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.i == null) {
            this.i = new d(null);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uk6)) {
            return super.equals(obj);
        }
        uk6 uk6Var = (uk6) obj;
        int size = size();
        if (size != uk6Var.size()) {
            return false;
        }
        int iD = d();
        if (iD != uk6Var.d()) {
            return entrySet().equals(uk6Var.entrySet());
        }
        for (int i = 0; i < iD; i++) {
            if (!c(i).equals(uk6Var.c(i))) {
                return false;
            }
        }
        if (iD != size) {
            return this.g.equals(uk6Var.g);
        }
        return true;
    }

    public final SortedMap<K, V> f() {
        b();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    public void g() {
        if (this.h) {
            return;
        }
        this.g = this.g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.g);
        this.j = this.j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.j);
        this.h = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.f.get(iA).f : this.g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public V put(K k2, V v) {
        b();
        int iA = a(k2);
        if (iA >= 0) {
            uk6<K, V>.b bVar = this.f.get(iA);
            uk6.this.b();
            V v2 = bVar.f;
            bVar.f = v;
            return v2;
        }
        b();
        if (this.f.isEmpty() && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(this.e);
        }
        int i = -(iA + 1);
        if (i >= this.e) {
            return f().put(k2, v);
        }
        int size = this.f.size();
        int i2 = this.e;
        if (size == i2) {
            uk6<K, V>.b bVarRemove = this.f.remove(i2 - 1);
            f().put(bVarRemove.e, bVarRemove.f);
        }
        this.f.add(i, new b(k2, v));
        return null;
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
        b();
        V v = this.f.remove(i).f;
        if (!this.g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = f().entrySet().iterator();
            this.f.add(new b(this, it.next()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        b();
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

    public class b implements Map.Entry<K, V>, Comparable<uk6<K, V>.b> {
        public final K e;
        public V f;

        public b(uk6 uk6Var, Map.Entry<K, V> entry) {
            K key = entry.getKey();
            V value = entry.getValue();
            uk6.this = uk6Var;
            this.e = key;
            this.f = value;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.e.compareTo(((b) obj).e);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.e;
            Object key = entry.getKey();
            if (k == null ? key == null : k.equals(key)) {
                V v = this.f;
                Object value = entry.getValue();
                if (v == null ? value == null : v.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.e;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.e;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.f;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            uk6 uk6Var = uk6.this;
            int i = uk6.k;
            uk6Var.b();
            V v2 = this.f;
            this.f = v;
            return v2;
        }

        public String toString() {
            return this.e + "=" + this.f;
        }

        public b(K k, V v) {
            this.e = k;
            this.f = v;
        }
    }
}
