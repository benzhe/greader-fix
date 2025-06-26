package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class rt7 {
    public static final int b;
    public static final AtomicReference<qt7>[] c;
    public static final rt7 d = new rt7();
    public static final qt7 a = new qt7(new byte[0], 0, 0, false, false);

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = iHighestOneBit;
        AtomicReference<qt7>[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        c = atomicReferenceArr;
    }

    public static final void a(qt7 qt7Var) {
        im7.e(qt7Var, "segment");
        if (!(qt7Var.f == null && qt7Var.g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (qt7Var.d) {
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        AtomicReference<qt7> atomicReference = c[(int) (threadCurrentThread.getId() & (b - 1))];
        qt7 qt7Var2 = atomicReference.get();
        if (qt7Var2 == a) {
            return;
        }
        int i = qt7Var2 != null ? qt7Var2.c : 0;
        if (i >= 65536) {
            return;
        }
        qt7Var.f = qt7Var2;
        qt7Var.b = 0;
        qt7Var.c = i + RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        if (atomicReference.compareAndSet(qt7Var2, qt7Var)) {
            return;
        }
        qt7Var.f = null;
    }

    public static final qt7 b() {
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        AtomicReference<qt7> atomicReference = c[(int) (threadCurrentThread.getId() & (b - 1))];
        qt7 qt7Var = a;
        qt7 andSet = atomicReference.getAndSet(qt7Var);
        if (andSet == qt7Var) {
            return new qt7();
        }
        if (andSet == null) {
            atomicReference.set(null);
            return new qt7();
        }
        atomicReference.set(andSet.f);
        andSet.f = null;
        andSet.c = 0;
        return andSet;
    }
}
