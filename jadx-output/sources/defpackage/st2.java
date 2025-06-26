package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class st2<T> extends hu2<T> {
    public boolean e;
    public final /* synthetic */ Object f;

    public st2(Object obj) {
        this.f = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.e;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (this.e) {
            throw new NoSuchElementException();
        }
        this.e = true;
        return (T) this.f;
    }
}
