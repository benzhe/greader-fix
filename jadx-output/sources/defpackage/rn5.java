package defpackage;

import defpackage.jn5;
import defpackage.on5;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class rn5<K, V> extends jn5<K, V> {
    public on5<K, V> e;
    public Comparator<K> f;

    public static class b<A, B, C> {
        public final List<A> a;
        public final Map<B, C> b;
        public final jn5.a.InterfaceC0020a<A, B> c;
        public qn5<A, C> d;
        public qn5<A, C> e;

        public static class a implements Iterable<C0035b> {
            public long e;
            public final int f;

            /* renamed from: rn5$b$a$a, reason: collision with other inner class name */
            public class C0034a implements Iterator<C0035b> {
                public int e;

                public C0034a() {
                    this.e = a.this.f - 1;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.e >= 0;
                }

                @Override // java.util.Iterator
                public C0035b next() {
                    long j = a.this.e;
                    int i = this.e;
                    long j2 = j & (1 << i);
                    C0035b c0035b = new C0035b();
                    c0035b.a = j2 == 0;
                    c0035b.b = (int) Math.pow(2.0d, i);
                    this.e--;
                    return c0035b;
                }

                @Override // java.util.Iterator
                public void remove() {
                }
            }

            public a(int i) {
                int i2 = i + 1;
                int iFloor = (int) Math.floor(Math.log(i2) / Math.log(2.0d));
                this.f = iFloor;
                this.e = (((long) Math.pow(2.0d, iFloor)) - 1) & i2;
            }

            @Override // java.lang.Iterable
            public Iterator<C0035b> iterator() {
                return new C0034a();
            }
        }

        /* renamed from: rn5$b$b, reason: collision with other inner class name */
        public static class C0035b {
            public boolean a;
            public int b;
        }

        public b(List<A> list, Map<B, C> map, jn5.a.InterfaceC0020a<A, B> interfaceC0020a) {
            this.a = list;
            this.b = map;
            this.c = interfaceC0020a;
        }

        public static <A, B, C> rn5<A, C> b(List<A> list, Map<B, C> map, jn5.a.InterfaceC0020a<A, B> interfaceC0020a, Comparator<A> comparator) {
            on5.a aVar = on5.a.BLACK;
            b bVar = new b(list, map, interfaceC0020a);
            Collections.sort(list, comparator);
            a.C0034a c0034a = new a(list.size()).new C0034a();
            int size = list.size();
            while (c0034a.hasNext()) {
                C0035b c0035b = (C0035b) c0034a.next();
                int i = c0035b.b;
                size -= i;
                if (c0035b.a) {
                    bVar.c(aVar, i, size);
                } else {
                    bVar.c(aVar, i, size);
                    int i2 = c0035b.b;
                    size -= i2;
                    bVar.c(on5.a.RED, i2, size);
                }
            }
            on5 on5Var = bVar.d;
            if (on5Var == null) {
                on5Var = nn5.a;
            }
            return new rn5<>(on5Var, comparator, null);
        }

        public final on5<A, C> a(int i, int i2) {
            if (i2 == 0) {
                return nn5.a;
            }
            if (i2 == 1) {
                A a2 = this.a.get(i);
                return new mn5(a2, d(a2), null, null);
            }
            int i3 = i2 / 2;
            int i4 = i + i3;
            on5<A, C> on5VarA = a(i, i3);
            on5<A, C> on5VarA2 = a(i4 + 1, i3);
            A a3 = this.a.get(i4);
            return new mn5(a3, d(a3), on5VarA, on5VarA2);
        }

        public final void c(on5.a aVar, int i, int i2) {
            on5<A, C> on5VarA = a(i2 + 1, i - 1);
            A a2 = this.a.get(i2);
            qn5<A, C> pn5Var = aVar == on5.a.RED ? new pn5<>(a2, d(a2), null, on5VarA) : new mn5<>(a2, d(a2), null, on5VarA);
            if (this.d == null) {
                this.d = pn5Var;
                this.e = pn5Var;
            } else {
                this.e.s(pn5Var);
                this.e = pn5Var;
            }
        }

        public final C d(A a2) {
            Map<B, C> map = this.b;
            Objects.requireNonNull((in5) this.c);
            int i = jn5.a.a;
            return map.get(a2);
        }
    }

    public rn5(on5<K, V> on5Var, Comparator<K> comparator) {
        this.e = on5Var;
        this.f = comparator;
    }

    @Override // defpackage.jn5
    public boolean d(K k) {
        return s(k) != null;
    }

    @Override // defpackage.jn5
    public V h(K k) {
        on5<K, V> on5VarS = s(k);
        if (on5VarS != null) {
            return on5VarS.getValue();
        }
        return null;
    }

    @Override // defpackage.jn5
    public boolean isEmpty() {
        return this.e.isEmpty();
    }

    @Override // defpackage.jn5, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new kn5(this.e, null, this.f, false);
    }

    @Override // defpackage.jn5
    public Comparator<K> j() {
        return this.f;
    }

    @Override // defpackage.jn5
    public K l() {
        return this.e.h().getKey();
    }

    @Override // defpackage.jn5
    public K n() {
        return this.e.g().getKey();
    }

    @Override // defpackage.jn5
    public jn5<K, V> o(K k, V v) {
        return new rn5(this.e.b(k, v, this.f).f(null, null, on5.a.BLACK, null, null), this.f);
    }

    @Override // defpackage.jn5
    public Iterator<Map.Entry<K, V>> p(K k) {
        return new kn5(this.e, k, this.f, false);
    }

    @Override // defpackage.jn5
    public jn5<K, V> r(K k) {
        return !(s(k) != null) ? this : new rn5(this.e.c(k, this.f).f(null, null, on5.a.BLACK, null, null), this.f);
    }

    public final on5<K, V> s(K k) {
        on5<K, V> on5VarA = this.e;
        while (!on5VarA.isEmpty()) {
            int iCompare = this.f.compare(k, on5VarA.getKey());
            if (iCompare < 0) {
                on5VarA = on5VarA.a();
            } else {
                if (iCompare == 0) {
                    return on5VarA;
                }
                on5VarA = on5VarA.e();
            }
        }
        return null;
    }

    @Override // defpackage.jn5
    public int size() {
        return this.e.size();
    }

    public rn5(on5 on5Var, Comparator comparator, a aVar) {
        this.e = on5Var;
        this.f = comparator;
    }
}
