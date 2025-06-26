package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class jz3<E> extends mw3<E> {
    public static final jz3<Object> g;
    public final List<E> f;

    static {
        jz3<Object> jz3Var = new jz3<>();
        g = jz3Var;
        jz3Var.e = false;
    }

    public jz3() {
        this.f = new ArrayList(10);
    }

    public jz3(List<E> list) {
        this.f = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        d();
        this.f.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f.get(i);
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3 k(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new jz3(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        d();
        E eRemove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        return eRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        d();
        E e2 = this.f.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }
}
