package defpackage;

import defpackage.jn5;
import defpackage.rn5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class hn5<K, V> extends jn5<K, V> {
    public final K[] e;
    public final V[] f;
    public final Comparator<K> g;

    public hn5(Comparator<K> comparator) {
        this.e = (K[]) new Object[0];
        this.f = (V[]) new Object[0];
        this.g = comparator;
    }

    public static <T> T[] s(T[] tArr, int i, T t) {
        T[] tArr2 = (T[]) new Object[tArr.length + 1];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        tArr2[i] = t;
        System.arraycopy(tArr, i, tArr2, i + 1, (r0 - i) - 1);
        return tArr2;
    }

    @Override // defpackage.jn5
    public boolean d(K k) {
        return u(k) != -1;
    }

    @Override // defpackage.jn5
    public V h(K k) {
        int iU = u(k);
        if (iU != -1) {
            return this.f[iU];
        }
        return null;
    }

    @Override // defpackage.jn5
    public boolean isEmpty() {
        return this.e.length == 0;
    }

    @Override // defpackage.jn5, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new gn5(this, 0, false);
    }

    @Override // defpackage.jn5
    public Comparator<K> j() {
        return this.g;
    }

    @Override // defpackage.jn5
    public K l() {
        K[] kArr = this.e;
        if (kArr.length > 0) {
            return kArr[kArr.length - 1];
        }
        return null;
    }

    @Override // defpackage.jn5
    public K n() {
        K[] kArr = this.e;
        if (kArr.length > 0) {
            return kArr[0];
        }
        return null;
    }

    @Override // defpackage.jn5
    public jn5<K, V> o(K k, V v) {
        int iU = u(k);
        int i = 0;
        if (iU != -1) {
            K[] kArr = this.e;
            if (kArr[iU] == k && this.f[iU] == v) {
                return this;
            }
            int length = kArr.length;
            Object[] objArr = new Object[length];
            System.arraycopy(kArr, 0, objArr, 0, length);
            objArr[iU] = k;
            V[] vArr = this.f;
            int length2 = vArr.length;
            Object[] objArr2 = new Object[length2];
            System.arraycopy(vArr, 0, objArr2, 0, length2);
            objArr2[iU] = v;
            return new hn5(this.g, objArr, objArr2);
        }
        if (this.e.length <= 25) {
            int iV = v(k);
            return new hn5(this.g, s(this.e, iV, k), s(this.f, iV, v));
        }
        HashMap map = new HashMap(this.e.length + 1);
        while (true) {
            K[] kArr2 = this.e;
            if (i >= kArr2.length) {
                map.put(k, v);
                Comparator<K> comparator = this.g;
                ArrayList arrayList = new ArrayList(map.keySet());
                int i2 = jn5.a.a;
                return rn5.b.b(arrayList, map, in5.a, comparator);
            }
            map.put(kArr2[i], this.f[i]);
            i++;
        }
    }

    @Override // defpackage.jn5
    public Iterator<Map.Entry<K, V>> p(K k) {
        return new gn5(this, v(k), false);
    }

    @Override // defpackage.jn5
    public jn5<K, V> r(K k) {
        int iU = u(k);
        if (iU == -1) {
            return this;
        }
        K[] kArr = this.e;
        int length = kArr.length - 1;
        Object[] objArr = new Object[length];
        System.arraycopy(kArr, 0, objArr, 0, iU);
        int i = iU + 1;
        System.arraycopy(kArr, i, objArr, iU, length - iU);
        V[] vArr = this.f;
        int length2 = vArr.length - 1;
        Object[] objArr2 = new Object[length2];
        System.arraycopy(vArr, 0, objArr2, 0, iU);
        System.arraycopy(vArr, i, objArr2, iU, length2 - iU);
        return new hn5(this.g, objArr, objArr2);
    }

    @Override // defpackage.jn5
    public int size() {
        return this.e.length;
    }

    public final int u(K k) {
        int i = 0;
        for (K k2 : this.e) {
            if (this.g.compare(k, k2) == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final int v(K k) {
        int i = 0;
        while (true) {
            K[] kArr = this.e;
            if (i >= kArr.length || this.g.compare(kArr[i], k) >= 0) {
                break;
            }
            i++;
        }
        return i;
    }

    public hn5(Comparator<K> comparator, K[] kArr, V[] vArr) {
        this.e = kArr;
        this.f = vArr;
        this.g = comparator;
    }
}
