package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class tw3 implements Iterator {
    public int e = 0;
    public final int f;
    public final /* synthetic */ sw3 g;

    public tw3(sw3 sw3Var) {
        this.g = sw3Var;
        this.f = sw3Var.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e < this.f;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            sw3 sw3Var = this.g;
            int i = this.e;
            this.e = i + 1;
            return Byte.valueOf(sw3Var.o(i));
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
