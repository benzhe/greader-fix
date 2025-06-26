package defpackage;

/* loaded from: classes.dex */
public final class eu2<K> extends qt2<K> {
    public final transient rt2<K, ?> h;
    public final transient nt2<K> i;

    public eu2(rt2<K, ?> rt2Var, nt2<K> nt2Var) {
        this.h = rt2Var;
        this.i = nt2Var;
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.h.get(obj) != null;
    }

    @Override // defpackage.it2
    public final int d(Object[] objArr, int i) {
        return this.i.d(objArr, i);
    }

    @Override // defpackage.qt2, defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public final hu2<K> iterator() {
        return (hu2) this.i.iterator();
    }

    @Override // defpackage.qt2, defpackage.it2
    public final nt2<K> o() {
        return this.i;
    }

    @Override // defpackage.it2
    public final boolean p() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((zt2) this.h).j;
    }
}
