package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class wd5<E> extends vd5<E> implements List<E>, RandomAccess {
    public static final ud5<Object> f = new a(zd5.i, 0);

    public static class a<E> extends ud5<E> {
        public final wd5<E> g;

        public a(wd5<E> wd5Var, int i) {
            super(wd5Var.size(), i);
            this.g = wd5Var;
        }
    }

    public class b extends wd5<E> {
        public final transient int g;
        public final transient int h;

        public b(int i, int i2) {
            this.g = i;
            this.h = i2;
        }

        @Override // java.util.List
        public E get(int i) {
            c50.w(i, this.h);
            return wd5.this.get(i + this.g);
        }

        @Override // defpackage.vd5
        public Object[] h() {
            return wd5.this.h();
        }

        @Override // defpackage.wd5, defpackage.vd5, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return listIterator();
        }

        @Override // defpackage.vd5
        public int j() {
            return wd5.this.l() + this.g + this.h;
        }

        @Override // defpackage.vd5
        public int l() {
            return wd5.this.l() + this.g;
        }

        @Override // defpackage.wd5, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return listIterator();
        }

        @Override // defpackage.wd5, java.util.List
        /* renamed from: s, reason: merged with bridge method [inline-methods] */
        public wd5<E> subList(int i, int i2) {
            c50.C(i, i2, this.h);
            wd5 wd5Var = wd5.this;
            int i3 = this.g;
            return wd5Var.subList(i + i3, i2 + i3);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.h;
        }

        @Override // defpackage.wd5, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // defpackage.vd5
    public int d(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            if (!(list instanceof RandomAccess)) {
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (!it2.hasNext() || !c50.T(it.next(), it2.next())) {
                        return false;
                    }
                }
                return !it2.hasNext();
            }
            for (int i = 0; i < size; i++) {
                if (!c50.T(get(i), list.get(i))) {
                    return false;
                }
            }
        }
        return true;
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

    @Override // defpackage.vd5, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return listIterator();
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

    @Override // defpackage.vd5
    /* renamed from: o */
    public ce5<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public ud5<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public ud5<E> listIterator(int i) {
        int size = size();
        if (i < 0 || i > size) {
            throw new IndexOutOfBoundsException(c50.f(i, size, "index"));
        }
        return isEmpty() ? (ud5<E>) f : new a(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: s */
    public wd5<E> subList(int i, int i2) {
        c50.C(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (wd5<E>) zd5.i : new b(i, i3);
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }
}
