package defpackage;

import defpackage.jn5;
import defpackage.rn5;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ln5<T> implements Iterable<T> {
    public final jn5<T, Void> e;

    public static class a<T> implements Iterator<T> {
        public final Iterator<Map.Entry<T, Void>> e;

        public a(Iterator<Map.Entry<T, Void>> it) {
            this.e = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.e.next().getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.e.remove();
        }
    }

    public ln5(List<T> list, Comparator<T> comparator) {
        jn5<T, Void> jn5VarB;
        Map mapEmptyMap = Collections.emptyMap();
        int i = jn5.a.a;
        in5 in5Var = in5.a;
        if (list.size() < 25) {
            Collections.sort(list, comparator);
            int size = list.size();
            Object[] objArr = new Object[size];
            Object[] objArr2 = new Object[size];
            int i2 = 0;
            for (T t : list) {
                objArr[i2] = t;
                objArr2[i2] = mapEmptyMap.get(t);
                i2++;
            }
            jn5VarB = new hn5<>(comparator, objArr, objArr2);
        } else {
            jn5VarB = rn5.b.b(list, mapEmptyMap, in5Var, comparator);
        }
        this.e = jn5VarB;
    }

    public boolean contains(T t) {
        return this.e.d(t);
    }

    public ln5<T> d(T t) {
        return new ln5<>(this.e.o(t, null));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ln5) {
            return this.e.equals(((ln5) obj).e);
        }
        return false;
    }

    public ln5<T> h(T t) {
        jn5<T, Void> jn5VarR = this.e.r(t);
        return jn5VarR == this.e ? this : new ln5<>(jn5VarR);
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.e.iterator());
    }

    public int size() {
        return this.e.size();
    }

    public ln5(jn5<T, Void> jn5Var) {
        this.e = jn5Var;
    }
}
