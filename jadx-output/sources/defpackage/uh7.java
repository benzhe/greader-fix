package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class uh7<T> implements md7<T> {
    public static final int m = Integer.getInteger("jctools.spsc.max.lookahead.step", RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT).intValue();
    public static final Object n = new Object();
    public final AtomicLong e;
    public int f;
    public long g;
    public final int h;
    public AtomicReferenceArray<Object> i;
    public final int j;
    public AtomicReferenceArray<Object> k;
    public final AtomicLong l;

    public uh7(int i) {
        AtomicLong atomicLong = new AtomicLong();
        this.e = atomicLong;
        this.l = new AtomicLong();
        int iK1 = n56.K1(Math.max(8, i));
        int i2 = iK1 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iK1 + 1);
        this.i = atomicReferenceArray;
        this.h = i2;
        this.f = Math.min(iK1 / 4, m);
        this.k = atomicReferenceArray;
        this.j = i2;
        this.g = i2 - 1;
        atomicLong.lazySet(0L);
    }

    @Override // defpackage.nd7
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return this.e.get() == this.l.get();
    }

    @Override // defpackage.nd7
    public boolean offer(T t) {
        Objects.requireNonNull(t, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.i;
        long j = this.e.get();
        int i = this.h;
        int i2 = ((int) j) & i;
        if (j < this.g) {
            atomicReferenceArray.lazySet(i2, t);
            this.e.lazySet(j + 1);
            return true;
        }
        long j2 = this.f + j;
        if (atomicReferenceArray.get(((int) j2) & i) == null) {
            this.g = j2 - 1;
            atomicReferenceArray.lazySet(i2, t);
            this.e.lazySet(j + 1);
            return true;
        }
        long j3 = j + 1;
        if (atomicReferenceArray.get(((int) j3) & i) == null) {
            atomicReferenceArray.lazySet(i2, t);
            this.e.lazySet(j3);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.i = atomicReferenceArray2;
        this.g = (i + j) - 1;
        atomicReferenceArray2.lazySet(i2, t);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i2, n);
        this.e.lazySet(j3);
        return true;
    }

    @Override // defpackage.md7, defpackage.nd7
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.k;
        long j = this.l.get();
        int i = this.j;
        int i2 = ((int) j) & i;
        T t = (T) atomicReferenceArray.get(i2);
        boolean z = t == n;
        if (t != null && !z) {
            atomicReferenceArray.lazySet(i2, null);
            this.l.lazySet(j + 1);
            return t;
        }
        if (!z) {
            return null;
        }
        int i3 = i + 1;
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i3);
        atomicReferenceArray.lazySet(i3, null);
        this.k = atomicReferenceArray2;
        T t2 = (T) atomicReferenceArray2.get(i2);
        if (t2 != null) {
            atomicReferenceArray2.lazySet(i2, null);
            this.l.lazySet(j + 1);
        }
        return t2;
    }
}
