package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class o3<K, V> implements Iterable<Map.Entry<K, V>> {
    public c<K, V> e;
    public c<K, V> f;
    public WeakHashMap<f<K, V>, Boolean> g = new WeakHashMap<>();
    public int h = 0;

    public static class a<K, V> extends e<K, V> {
        public a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // o3.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.h;
        }

        @Override // o3.e
        public c<K, V> d(c<K, V> cVar) {
            return cVar.g;
        }
    }

    public static class b<K, V> extends e<K, V> {
        public b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // o3.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.g;
        }

        @Override // o3.e
        public c<K, V> d(c<K, V> cVar) {
            return cVar.h;
        }
    }

    public static class c<K, V> implements Map.Entry<K, V> {
        public final K e;
        public final V f;
        public c<K, V> g;
        public c<K, V> h;

        public c(K k, V v) {
            this.e = k;
            this.f = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.e.equals(cVar.e) && this.f.equals(cVar.f);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.e;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.e.hashCode() ^ this.f.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.e + "=" + this.f;
        }
    }

    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {
        public c<K, V> e;
        public boolean f = true;

        public d() {
        }

        @Override // o3.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.e;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.h;
                this.e = cVar3;
                this.f = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f) {
                return o3.this.e != null;
            }
            c<K, V> cVar = this.e;
            return (cVar == null || cVar.g == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f) {
                this.f = false;
                this.e = o3.this.e;
            } else {
                c<K, V> cVar = this.e;
                this.e = cVar != null ? cVar.g : null;
            }
            return this.e;
        }
    }

    public static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {
        public c<K, V> e;
        public c<K, V> f;

        public e(c<K, V> cVar, c<K, V> cVar2) {
            this.e = cVar2;
            this.f = cVar;
        }

        @Override // o3.f
        public void a(c<K, V> cVar) {
            c<K, V> cVarD = null;
            if (this.e == cVar && cVar == this.f) {
                this.f = null;
                this.e = null;
            }
            c<K, V> cVar2 = this.e;
            if (cVar2 == cVar) {
                this.e = c(cVar2);
            }
            c<K, V> cVar3 = this.f;
            if (cVar3 == cVar) {
                c<K, V> cVar4 = this.e;
                if (cVar3 != cVar4 && cVar4 != null) {
                    cVarD = d(cVar3);
                }
                this.f = cVarD;
            }
        }

        public abstract c<K, V> c(c<K, V> cVar);

        public abstract c<K, V> d(c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            c<K, V> cVar = this.f;
            c<K, V> cVar2 = this.e;
            this.f = (cVar == cVar2 || cVar2 == null) ? null : d(cVar);
            return cVar;
        }
    }

    public interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public c<K, V> d(K k) {
        c<K, V> cVar = this.e;
        while (cVar != null && !cVar.e.equals(k)) {
            cVar = cVar.g;
        }
        return cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        if (((o3.e) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof defpackage.o3
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            o3 r7 = (defpackage.o3) r7
            int r1 = r6.h
            int r3 = r7.h
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            o3$e r3 = (o3.e) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            o3$e r4 = (o3.e) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            o3$e r7 = (o3.e) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = 0
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o3.equals(java.lang.Object):boolean");
    }

    public o3<K, V>.d h() {
        o3<K, V>.d dVar = new d();
        this.g.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) eVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.e, this.f);
        this.g.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public c<K, V> j(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.h++;
        c<K, V> cVar2 = this.f;
        if (cVar2 == null) {
            this.e = cVar;
            this.f = cVar;
            return cVar;
        }
        cVar2.g = cVar;
        cVar.h = cVar2;
        this.f = cVar;
        return cVar;
    }

    public V l(K k, V v) {
        c<K, V> cVarD = d(k);
        if (cVarD != null) {
            return cVarD.f;
        }
        j(k, v);
        return null;
    }

    public V n(K k) {
        c<K, V> cVarD = d(k);
        if (cVarD == null) {
            return null;
        }
        this.h--;
        if (!this.g.isEmpty()) {
            Iterator<f<K, V>> it = this.g.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarD);
            }
        }
        c<K, V> cVar = cVarD.h;
        if (cVar != null) {
            cVar.g = cVarD.g;
        } else {
            this.e = cVarD.g;
        }
        c<K, V> cVar2 = cVarD.g;
        if (cVar2 != null) {
            cVar2.h = cVar;
        } else {
            this.f = cVar;
        }
        cVarD.g = null;
        cVarD.h = null;
        return cVarD.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                sbZ.append("]");
                return sbZ.toString();
            }
            sbZ.append(((Map.Entry) eVar.next()).toString());
            if (eVar.hasNext()) {
                sbZ.append(", ");
            }
        }
    }
}
