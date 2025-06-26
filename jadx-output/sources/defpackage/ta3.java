package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class ta3<E> extends AbstractList<E> {
    public static final va3 g = va3.b(ta3.class);
    public List<E> e;
    public Iterator<E> f;

    public ta3(List<E> list, Iterator<E> it) {
        this.e = list;
        this.f = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.e.size() > i) {
            return this.e.get(i);
        }
        if (!this.f.hasNext()) {
            throw new NoSuchElementException();
        }
        this.e.add(this.f.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new wa3(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        va3 va3Var = g;
        va3Var.a("potentially expensive size() call");
        va3Var.a("blowup running");
        while (this.f.hasNext()) {
            this.e.add(this.f.next());
        }
        return this.e.size();
    }
}
