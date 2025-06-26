package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class a84 implements Iterator {
    public abstract byte a();

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Byte.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
