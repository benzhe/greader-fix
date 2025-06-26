package defpackage;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class gn4 implements ListIterator<String> {
    public ListIterator<String> e;
    public final /* synthetic */ int f;
    public final /* synthetic */ dn4 g;

    public gn4(dn4 dn4Var, int i) {
        this.g = dn4Var;
        this.f = i;
        this.e = dn4Var.e.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.e.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.e.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.e.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.e.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
