package defpackage;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class vn7<T, R> implements sn7<R> {
    public final sn7<T> a;
    public final pl7<T, R> b;

    public static final class a implements Iterator<R>, wm7 {
        public final Iterator<T> e;

        public a() {
            this.e = vn7.this.a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) vn7.this.b.invoke(this.e.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public vn7(sn7<? extends T> sn7Var, pl7<? super T, ? extends R> pl7Var) {
        im7.e(sn7Var, "sequence");
        im7.e(pl7Var, "transformer");
        this.a = sn7Var;
        this.b = pl7Var;
    }

    @Override // defpackage.sn7
    public Iterator<R> iterator() {
        return new a();
    }
}
