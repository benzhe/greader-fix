package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class fb4 extends AbstractList<String> implements RandomAccess, p94 {
    public final p94 e;

    public fb4(p94 p94Var) {
        this.e = p94Var;
    }

    @Override // defpackage.p94
    public final p94 e() {
        return this;
    }

    @Override // defpackage.p94
    public final List<?> g() {
        return this.e.g();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((o94) this.e).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new eb4(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new db4(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }

    @Override // defpackage.p94
    public final void x(g84 g84Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.p94
    public final Object z0(int i) {
        return this.e.z0(i);
    }
}
