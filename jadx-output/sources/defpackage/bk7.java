package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public abstract class bk7<E> extends ak7<E> implements List<E>, wm7 {

    public class a implements Iterator<E>, wm7 {
        public int e;

        public a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e < bk7.this.d();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            bk7 bk7Var = bk7.this;
            int i = this.e;
            this.e = i + 1;
            return (E) bk7Var.get(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public class b extends bk7<E>.a implements ListIterator<E>, wm7 {
        public b(int i) {
            super();
            int iD = bk7.this.d();
            if (i < 0 || i > iD) {
                throw new IndexOutOfBoundsException(jo.i("index: ", i, ", size: ", iD));
            }
            this.e = i;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.e > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.e;
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            bk7 bk7Var = bk7.this;
            int i = this.e - 1;
            this.e = i;
            return (E) bk7Var.get(i);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.e - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class c<E> extends bk7<E> implements RandomAccess {
        public int e;
        public final bk7<E> f;
        public final int g;

        /* JADX WARN: Multi-variable type inference failed */
        public c(bk7<? extends E> bk7Var, int i, int i2) {
            im7.e(bk7Var, "list");
            this.f = bk7Var;
            this.g = i;
            int iD = bk7Var.d();
            if (i >= 0 && i2 <= iD) {
                if (i > i2) {
                    throw new IllegalArgumentException(jo.i("fromIndex: ", i, " > toIndex: ", i2));
                }
                this.e = i2 - i;
                return;
            }
            throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + iD);
        }

        @Override // defpackage.ak7
        public int d() {
            return this.e;
        }

        @Override // defpackage.bk7, java.util.List
        public E get(int i) {
            int i2 = this.e;
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException(jo.i("index: ", i, ", size: ", i2));
            }
            return this.f.get(this.g + i);
        }
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        im7.e(this, "c");
        im7.e(collection, "other");
        if (size() == collection.size()) {
            Iterator<E> it = collection.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!im7.a(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.List
    public abstract E get(int i);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        im7.e(this, "c");
        Iterator<E> it = iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            E next = it.next();
            iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (im7.a(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (im7.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new b(0);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return new c(this, i, i2);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new b(i);
    }
}
