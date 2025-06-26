package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class bm7<T> implements Iterator<T>, wm7 {
    public int e;
    public final T[] f;

    public bm7(T[] tArr) {
        im7.e(tArr, "array");
        this.f = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.e < this.f.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f;
            int i = this.e;
            this.e = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.e--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
