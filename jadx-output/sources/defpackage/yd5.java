package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class yd5<T> extends ce5<T> {
    public boolean e;
    public final /* synthetic */ Object f;

    public yd5(Object obj) {
        this.f = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.e;
    }

    @Override // java.util.Iterator
    public T next() {
        if (this.e) {
            throw new NoSuchElementException();
        }
        this.e = true;
        return (T) this.f;
    }
}
