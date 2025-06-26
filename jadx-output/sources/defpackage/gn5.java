package defpackage;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public class gn5<K, V> implements Iterator<Map.Entry<K, V>> {
    public int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ hn5 h;

    public gn5(hn5 hn5Var, int i, boolean z) {
        this.h = hn5Var;
        this.f = i;
        this.g = z;
        this.e = i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.g ? this.e >= this.h.e.length : this.e < 0;
    }

    @Override // java.util.Iterator
    public Object next() {
        hn5 hn5Var = this.h;
        K[] kArr = hn5Var.e;
        int i = this.e;
        K k = kArr[i];
        V v = hn5Var.f[i];
        this.e = this.g ? i - 1 : i + 1;
        return new AbstractMap.SimpleImmutableEntry(k, v);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Can't remove elements from ImmutableSortedMap");
    }
}
