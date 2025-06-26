package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class cu2<K, V> extends qt2<Map.Entry<K, V>> {
    public final transient rt2<K, V> h;
    public final transient Object[] i;
    public final transient int j;

    public cu2(rt2 rt2Var, Object[] objArr, int i) {
        this.h = rt2Var;
        this.i = objArr;
        this.j = i;
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.h.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.it2
    public final int d(Object[] objArr, int i) {
        return o().d(objArr, i);
    }

    @Override // defpackage.qt2, defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public final hu2<Map.Entry<K, V>> iterator() {
        return o().iterator();
    }

    @Override // defpackage.it2
    public final boolean p() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.j;
    }

    @Override // defpackage.qt2
    public final nt2<Map.Entry<K, V>> v() {
        return new bu2(this);
    }
}
