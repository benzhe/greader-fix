package defpackage;

import java.util.Iterator;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class qn7<T> implements sn7<T>, rn7<T> {
    public final sn7<T> a;
    public final int b;

    public static final class a implements Iterator<T>, wm7 {
        public final Iterator<T> e;
        public int f;

        public a(qn7 qn7Var) {
            this.e = qn7Var.a.iterator();
            this.f = qn7Var.b;
        }

        public final void a() {
            while (this.f > 0 && this.e.hasNext()) {
                this.e.next();
                this.f--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.e.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            return this.e.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public qn7(sn7<? extends T> sn7Var, int i) {
        im7.e(sn7Var, "sequence");
        this.a = sn7Var;
        this.b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + FilenameUtils.EXTENSION_SEPARATOR).toString());
    }

    @Override // defpackage.rn7
    public sn7<T> a(int i) {
        int i2 = this.b + i;
        return i2 < 0 ? new qn7(this, i) : new qn7(this.a, i2);
    }

    @Override // defpackage.sn7
    public Iterator<T> iterator() {
        return new a(this);
    }
}
