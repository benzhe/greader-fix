package defpackage;

import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class kk7 implements Iterator<Integer>, wm7 {
    public abstract int a();

    @Override // java.util.Iterator
    public Integer next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
