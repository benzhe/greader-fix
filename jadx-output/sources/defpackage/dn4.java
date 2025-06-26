package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class dn4 extends AbstractList<String> implements hl4, RandomAccess {
    public final hl4 e;

    public dn4(hl4 hl4Var) {
        this.e = hl4Var;
    }

    @Override // defpackage.hl4
    public final List<?> b() {
        return this.e.b();
    }

    @Override // defpackage.hl4
    public final Object c(int i) {
        return this.e.c(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.e.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new fn4(this);
    }

    @Override // defpackage.hl4
    public final hl4 k0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new gn4(this, i);
    }

    @Override // defpackage.hl4
    public final void s0(vj4 vj4Var) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }
}
