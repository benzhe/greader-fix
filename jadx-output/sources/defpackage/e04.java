package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class e04 extends AbstractList<String> implements hy3, RandomAccess {
    public final hy3 e;

    public e04(hy3 hy3Var) {
        this.e = hy3Var;
    }

    @Override // defpackage.hy3
    public final List<?> I() {
        return this.e.I();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.e.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new g04(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new f04(this, i);
    }

    @Override // defpackage.hy3
    public final Object m(int i) {
        return this.e.m(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }

    @Override // defpackage.hy3
    public final hy3 v0() {
        return this;
    }
}
