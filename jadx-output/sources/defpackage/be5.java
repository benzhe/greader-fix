package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class be5<E> extends xd5<E> {
    public final transient E g;
    public transient int h;

    public be5(E e) {
        Objects.requireNonNull(e);
        this.g = e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.g.equals(obj);
    }

    @Override // defpackage.vd5
    public int d(Object[] objArr, int i) {
        objArr[i] = this.g;
        return i + 1;
    }

    @Override // defpackage.xd5, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.h;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.g.hashCode();
        this.h = iHashCode;
        return iHashCode;
    }

    @Override // defpackage.vd5
    public boolean n() {
        return false;
    }

    @Override // defpackage.vd5, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: o */
    public ce5<E> iterator() {
        return new yd5(this.g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.g.toString() + ']';
    }

    @Override // defpackage.xd5
    public boolean u() {
        return this.h != 0;
    }

    public be5(E e, int i) {
        this.g = e;
        this.h = i;
    }
}
