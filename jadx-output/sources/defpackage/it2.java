package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class it2<E> extends AbstractCollection<E> implements Serializable {
    public static final Object[] e = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    public int d(Object[] objArr, int i) {
        hu2 hu2Var = (hu2) iterator();
        while (hu2Var.hasNext()) {
            objArr[i] = hu2Var.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public abstract hu2<E> iterator();

    public Object[] j() {
        return null;
    }

    public int l() {
        throw new UnsupportedOperationException();
    }

    public int n() {
        throw new UnsupportedOperationException();
    }

    public nt2<E> o() {
        if (isEmpty()) {
            mu2<Object> mu2Var = nt2.f;
            return (nt2<E>) au2.i;
        }
        Object[] array = toArray();
        mu2<Object> mu2Var2 = nt2.f;
        return nt2.v(array, array.length);
    }

    public abstract boolean p();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        Objects.requireNonNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrJ = j();
            if (objArrJ != null) {
                return (T[]) Arrays.copyOfRange(objArrJ, l(), n(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        d(tArr, 0);
        return tArr;
    }
}
