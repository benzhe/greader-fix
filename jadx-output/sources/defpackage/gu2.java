package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class gu2<E> extends qt2<E> {
    public final transient E h;
    public transient int i;

    public gu2(E e) {
        Objects.requireNonNull(e);
        this.h = e;
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.h.equals(obj);
    }

    @Override // defpackage.it2
    public final int d(Object[] objArr, int i) {
        objArr[i] = this.h;
        return i + 1;
    }

    @Override // defpackage.qt2, defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public final hu2<E> iterator() {
        return new st2(this.h);
    }

    @Override // defpackage.qt2, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.i;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.h.hashCode();
        this.i = iHashCode;
        return iHashCode;
    }

    @Override // defpackage.it2
    public final boolean p() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.h.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }

    @Override // defpackage.qt2
    public final boolean u() {
        return this.i != 0;
    }

    @Override // defpackage.qt2
    public final nt2<E> v() {
        return nt2.r(this.h);
    }

    public gu2(E e, int i) {
        this.h = e;
        this.i = i;
    }
}
