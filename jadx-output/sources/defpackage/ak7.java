package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class ak7<E> implements Collection<E>, wm7 {

    public static final class a extends jm7 implements pl7<E, CharSequence> {
        public a() {
            super(1);
        }

        @Override // defpackage.pl7
        public CharSequence invoke(Object obj) {
            return obj == ak7.this ? "(this Collection)" : String.valueOf(obj);
        }
    }

    @Override // java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = ((bk7) this).iterator();
        while (it.hasNext()) {
            if (im7.a(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        im7.e(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract int d();

    @Override // java.util.Collection
    public boolean isEmpty() {
        return d() == 0;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return d();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return fm7.a(this);
    }

    public String toString() {
        return ek7.k(this, ", ", "[", "]", 0, null, new a(), 24);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        im7.e(tArr, "array");
        return (T[]) fm7.b(this, tArr);
    }
}
