package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class nt2<E> extends it2<E> implements List<E>, RandomAccess {
    public static final mu2<Object> f = new pt2(au2.i, 0);

    public static <E> nt2<E> r(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            c50.I3(objArr[0], 0);
        }
        return v(objArr, 1);
    }

    public static <E> nt2<E> s(Collection<? extends E> collection) {
        if (collection instanceof it2) {
            nt2<E> nt2VarO = ((it2) collection).o();
            if (!nt2VarO.p()) {
                return nt2VarO;
            }
            Object[] array = nt2VarO.toArray();
            return v(array, array.length);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            c50.I3(array2[i], i);
        }
        return v(array2, array2.length);
    }

    public static <E> nt2<E> u(E[] eArr) {
        if (eArr.length == 0) {
            return (nt2<E>) au2.i;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            c50.I3(objArr[i], i);
        }
        return v(objArr, objArr.length);
    }

    public static <E> nt2<E> v(Object[] objArr, int i) {
        return i == 0 ? (nt2<E>) au2.i : new au2(objArr, i);
    }

    public static <E> nt2<E> y(Iterable<? extends E> iterable) {
        Objects.requireNonNull(iterable);
        if (iterable instanceof Collection) {
            return s((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (nt2<E>) au2.i;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return r(next);
        }
        lt2 lt2Var = new lt2();
        lt2Var.b(next);
        while (it.hasNext()) {
            lt2Var.a(it.next());
        }
        lt2Var.c = true;
        return v(lt2Var.a, lt2Var.b);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // defpackage.it2
    public int d(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (c50.S(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e = get(i2);
                        i2++;
                        if (!c50.S(e, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public final hu2<E> iterator() {
        return (mu2) listIterator();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        c50.G4(i, size());
        return isEmpty() ? f : new pt2(this, i);
    }

    @Override // defpackage.it2
    public final nt2<E> o() {
        return this;
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public nt2<E> subList(int i, int i2) {
        c50.Y3(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (nt2<E>) au2.i : new ot2(this, i, i3);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (mu2) listIterator(0);
    }
}
