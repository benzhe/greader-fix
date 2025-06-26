package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class kt2<E> extends jt2<E> {
    public Object[] a;
    public int b;
    public boolean c;

    public kt2(int i) {
        c50.g4(i, "initialCapacity");
        this.a = new Object[i];
        this.b = 0;
    }

    public kt2<E> b(E e) {
        Objects.requireNonNull(e);
        c(this.b + 1);
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = e;
        return this;
    }

    public final void c(int i) {
        Object[] objArr = this.a;
        if (objArr.length >= i) {
            if (this.c) {
                this.a = (Object[]) objArr.clone();
                this.c = false;
                return;
            }
            return;
        }
        int length = objArr.length;
        if (i < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int iHighestOneBit = length + (length >> 1) + 1;
        if (iHighestOneBit < i) {
            iHighestOneBit = Integer.highestOneBit(i - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            iHighestOneBit = Integer.MAX_VALUE;
        }
        this.a = Arrays.copyOf(objArr, iHighestOneBit);
        this.c = false;
    }

    public jt2<E> d(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            c(collection.size() + this.b);
            if (collection instanceof it2) {
                this.b = ((it2) collection).d(this.a, this.b);
                return this;
            }
        }
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }
}
