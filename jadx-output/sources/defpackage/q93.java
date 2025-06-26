package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class q93 extends AbstractList<String> implements l73, RandomAccess {
    public final l73 e;

    public q93(l73 l73Var) {
        this.e = l73Var;
    }

    @Override // defpackage.l73
    public final Object L(int i) {
        return this.e.L(i);
    }

    @Override // defpackage.l73
    public final void Z(k53 k53Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.l73
    public final List<?> a0() {
        return this.e.a0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.e.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new s93(this);
    }

    @Override // defpackage.l73
    public final l73 j0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new p93(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }
}
