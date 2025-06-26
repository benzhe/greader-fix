package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class bl6 extends AbstractList<String> implements pj6, RandomAccess {
    public final pj6 e;

    public class a implements ListIterator<String> {
        public ListIterator<String> e;
        public final /* synthetic */ int f;

        public a(int i) {
            this.f = i;
            this.e = bl6.this.e.listIterator(i);
        }

        @Override // java.util.ListIterator
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.e.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.e.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            return this.e.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.e.nextIndex();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.e.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.e.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator<String> {
        public Iterator<String> e;

        public b() {
            this.e = bl6.this.e.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e.hasNext();
        }

        @Override // java.util.Iterator
        public String next() {
            return this.e.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public bl6(pj6 pj6Var) {
        this.e = pj6Var;
    }

    @Override // defpackage.pj6
    public void F(qi6 qi6Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.pj6
    public List<?> S() {
        return this.e.S();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return (String) this.e.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new a(i);
    }

    @Override // defpackage.pj6
    public Object m(int i) {
        return this.e.m(i);
    }

    @Override // defpackage.pj6
    public pj6 p0() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.e.size();
    }
}
