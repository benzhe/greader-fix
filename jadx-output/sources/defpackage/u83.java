package defpackage;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class u83 implements Iterator<q53> {
    public final ArrayDeque<t83> e;
    public q53 f;

    public u83(k53 k53Var, s83 s83Var) {
        if (!(k53Var instanceof t83)) {
            this.e = null;
            this.f = (q53) k53Var;
            return;
        }
        t83 t83Var = (t83) k53Var;
        ArrayDeque<t83> arrayDeque = new ArrayDeque<>(t83Var.l);
        this.e = arrayDeque;
        arrayDeque.push(t83Var);
        k53 k53Var2 = t83Var.i;
        while (k53Var2 instanceof t83) {
            t83 t83Var2 = (t83) k53Var2;
            this.e.push(t83Var2);
            k53Var2 = t83Var2.i;
        }
        this.f = (q53) k53Var2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f != null;
    }

    @Override // java.util.Iterator
    public final q53 next() {
        q53 q53Var;
        q53 q53Var2 = this.f;
        if (q53Var2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque<t83> arrayDeque = this.e;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                q53Var = null;
                break;
            }
            k53 k53Var = this.e.pop().j;
            while (k53Var instanceof t83) {
                t83 t83Var = (t83) k53Var;
                this.e.push(t83Var);
                k53Var = t83Var.i;
            }
            q53Var = (q53) k53Var;
        } while (q53Var.size() == 0);
        this.f = q53Var;
        return q53Var2;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
