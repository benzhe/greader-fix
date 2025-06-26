package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class th7<E> extends AtomicReferenceArray<E> implements md7<E> {
    public static final Integer j = Integer.getInteger("jctools.spsc.max.lookahead.step", RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
    public final int e;
    public final AtomicLong f;
    public long g;
    public final AtomicLong h;
    public final int i;

    public th7(int i) {
        super(n56.K1(i));
        this.e = length() - 1;
        this.f = new AtomicLong();
        this.h = new AtomicLong();
        this.i = Math.min(i / 4, j.intValue());
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
        return this.f.get() == this.h.get();
    }

    @Override // defpackage.nd7
    public boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        int i = this.e;
        long j2 = this.f.get();
        int i2 = ((int) j2) & i;
        if (j2 >= this.g) {
            long j3 = this.i + j2;
            if (get(i & ((int) j3)) == null) {
                this.g = j3;
            } else if (get(i2) != null) {
                return false;
            }
        }
        lazySet(i2, e);
        this.f.lazySet(j2 + 1);
        return true;
    }

    @Override // defpackage.md7, defpackage.nd7
    public E poll() {
        long j2 = this.h.get();
        int i = ((int) j2) & this.e;
        E e = get(i);
        if (e == null) {
            return null;
        }
        this.h.lazySet(j2 + 1);
        lazySet(i, null);
        return e;
    }
}
