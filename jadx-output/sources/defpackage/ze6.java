package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class ze6<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Comparator<Comparable> l = new a();
    public Comparator<? super K> e;
    public e<K, V> f;
    public int g;
    public int h;
    public final e<K, V> i;
    public ze6<K, V>.b j;
    public ze6<K, V>.c k;

    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public class b extends AbstractSet<Map.Entry<K, V>> {

        public class a extends ze6<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ze6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && ze6.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> eVarB;
            if (!(obj instanceof Map.Entry) || (eVarB = ze6.this.b((Map.Entry) obj)) == null) {
                return false;
            }
            ze6.this.e(eVarB, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ze6.this.g;
        }
    }

    public final class c extends AbstractSet<K> {

        public class a extends ze6<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().j;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ze6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ze6.this.c(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            ze6 ze6Var = ze6.this;
            e<K, V> eVarC = ze6Var.c(obj);
            if (eVarC != null) {
                ze6Var.e(eVarC, true);
            }
            return eVarC != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ze6.this.g;
        }
    }

    public abstract class d<T> implements Iterator<T> {
        public e<K, V> e;
        public e<K, V> f = null;
        public int g;

        public d() {
            this.e = ze6.this.i.h;
            this.g = ze6.this.h;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.e;
            ze6 ze6Var = ze6.this;
            if (eVar == ze6Var.i) {
                throw new NoSuchElementException();
            }
            if (ze6Var.h != this.g) {
                throw new ConcurrentModificationException();
            }
            this.e = eVar.h;
            this.f = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.e != ze6.this.i;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            ze6.this.e(eVar, true);
            this.f = null;
            this.g = ze6.this.h;
        }
    }

    public ze6() {
        Comparator<Comparable> comparator = l;
        this.g = 0;
        this.h = 0;
        this.i = new e<>();
        this.e = comparator;
    }

    public e<K, V> a(K k, boolean z) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.e;
        e<K, V> eVar2 = this.f;
        if (eVar2 != null) {
            Comparable comparable = comparator == l ? (Comparable) k : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.j) : comparator.compare(k, eVar2.j);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f : eVar2.g;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        e<K, V> eVar4 = this.i;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k, eVar4, eVar4.i);
            if (iCompareTo < 0) {
                eVar2.f = eVar;
            } else {
                eVar2.g = eVar;
            }
            d(eVar2, true);
        } else {
            if (comparator == l && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k, eVar4, eVar4.i);
            this.f = eVar;
        }
        this.g++;
        this.h++;
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ze6.e<K, V> b(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            ze6$e r0 = r4.c(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L23
            V r3 = r0.k
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L1f
            if (r3 == 0) goto L1d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L1d
            goto L1f
        L1d:
            r5 = 0
            goto L20
        L1f:
            r5 = 1
        L20:
            if (r5 == 0) goto L23
            goto L24
        L23:
            r1 = 0
        L24:
            if (r1 == 0) goto L27
            goto L28
        L27:
            r0 = 0
        L28:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ze6.b(java.util.Map$Entry):ze6$e");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e<K, V> c(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f = null;
        this.g = 0;
        this.h++;
        e<K, V> eVar = this.i;
        eVar.i = eVar;
        eVar.h = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    public final void d(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f;
            e<K, V> eVar3 = eVar.g;
            int i = eVar2 != null ? eVar2.l : 0;
            int i2 = eVar3 != null ? eVar3.l : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                e<K, V> eVar4 = eVar3.f;
                e<K, V> eVar5 = eVar3.g;
                int i4 = (eVar4 != null ? eVar4.l : 0) - (eVar5 != null ? eVar5.l : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    g(eVar);
                } else {
                    h(eVar3);
                    g(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                e<K, V> eVar6 = eVar2.f;
                e<K, V> eVar7 = eVar2.g;
                int i5 = (eVar6 != null ? eVar6.l : 0) - (eVar7 != null ? eVar7.l : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    h(eVar);
                } else {
                    g(eVar2);
                    h(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                eVar.l = i + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.l = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.e;
        }
    }

    public void e(e<K, V> eVar, boolean z) {
        e<K, V> eVar2;
        e<K, V> eVar3;
        int i;
        if (z) {
            e<K, V> eVar4 = eVar.i;
            eVar4.h = eVar.h;
            eVar.h.i = eVar4;
        }
        e<K, V> eVar5 = eVar.f;
        e<K, V> eVar6 = eVar.g;
        e<K, V> eVar7 = eVar.e;
        int i2 = 0;
        if (eVar5 == null || eVar6 == null) {
            if (eVar5 != null) {
                f(eVar, eVar5);
                eVar.f = null;
            } else if (eVar6 != null) {
                f(eVar, eVar6);
                eVar.g = null;
            } else {
                f(eVar, null);
            }
            d(eVar7, false);
            this.g--;
            this.h++;
            return;
        }
        if (eVar5.l > eVar6.l) {
            e<K, V> eVar8 = eVar5.g;
            while (true) {
                e<K, V> eVar9 = eVar8;
                eVar3 = eVar5;
                eVar5 = eVar9;
                if (eVar5 == null) {
                    break;
                } else {
                    eVar8 = eVar5.g;
                }
            }
        } else {
            e<K, V> eVar10 = eVar6.f;
            while (true) {
                eVar2 = eVar6;
                eVar6 = eVar10;
                if (eVar6 == null) {
                    break;
                } else {
                    eVar10 = eVar6.f;
                }
            }
            eVar3 = eVar2;
        }
        e(eVar3, false);
        e<K, V> eVar11 = eVar.f;
        if (eVar11 != null) {
            i = eVar11.l;
            eVar3.f = eVar11;
            eVar11.e = eVar3;
            eVar.f = null;
        } else {
            i = 0;
        }
        e<K, V> eVar12 = eVar.g;
        if (eVar12 != null) {
            i2 = eVar12.l;
            eVar3.g = eVar12;
            eVar12.e = eVar3;
            eVar.g = null;
        }
        eVar3.l = Math.max(i, i2) + 1;
        f(eVar, eVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        ze6<K, V>.b bVar = this.j;
        if (bVar != null) {
            return bVar;
        }
        ze6<K, V>.b bVar2 = new b();
        this.j = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.e;
        eVar.e = null;
        if (eVar2 != null) {
            eVar2.e = eVar3;
        }
        if (eVar3 == null) {
            this.f = eVar2;
        } else if (eVar3.f == eVar) {
            eVar3.f = eVar2;
        } else {
            eVar3.g = eVar2;
        }
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f;
        e<K, V> eVar3 = eVar.g;
        e<K, V> eVar4 = eVar3.f;
        e<K, V> eVar5 = eVar3.g;
        eVar.g = eVar4;
        if (eVar4 != null) {
            eVar4.e = eVar;
        }
        f(eVar, eVar3);
        eVar3.f = eVar;
        eVar.e = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.l : 0, eVar4 != null ? eVar4.l : 0) + 1;
        eVar.l = iMax;
        eVar3.l = Math.max(iMax, eVar5 != null ? eVar5.l : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            return eVarC.k;
        }
        return null;
    }

    public final void h(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f;
        e<K, V> eVar3 = eVar.g;
        e<K, V> eVar4 = eVar2.f;
        e<K, V> eVar5 = eVar2.g;
        eVar.f = eVar5;
        if (eVar5 != null) {
            eVar5.e = eVar;
        }
        f(eVar, eVar2);
        eVar2.g = eVar;
        eVar.e = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.l : 0, eVar5 != null ? eVar5.l : 0) + 1;
        eVar.l = iMax;
        eVar2.l = Math.max(iMax, eVar4 != null ? eVar4.l : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        ze6<K, V>.c cVar = this.k;
        if (cVar != null) {
            return cVar;
        }
        ze6<K, V>.c cVar2 = new c();
        this.k = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        e<K, V> eVarA = a(k, true);
        V v2 = eVarA.k;
        eVarA.k = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            e(eVarC, true);
        }
        if (eVarC != null) {
            return eVarC.k;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.g;
    }

    public static final class e<K, V> implements Map.Entry<K, V> {
        public e<K, V> e;
        public e<K, V> f;
        public e<K, V> g;
        public e<K, V> h;
        public e<K, V> i;
        public final K j;
        public V k;
        public int l;

        public e() {
            this.j = null;
            this.i = this;
            this.h = this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.j;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.k;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.j;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.k;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.j;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.k;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.k;
            this.k = v;
            return v2;
        }

        public String toString() {
            return this.j + "=" + this.k;
        }

        public e(e<K, V> eVar, K k, e<K, V> eVar2, e<K, V> eVar3) {
            this.e = eVar;
            this.j = k;
            this.l = 1;
            this.h = eVar2;
            this.i = eVar3;
            eVar3.h = this;
            eVar2.i = this;
        }
    }
}
