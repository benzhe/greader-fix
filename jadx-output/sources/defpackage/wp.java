package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public class wp {
    public static final int[] b = {4000, 4000, 200, 200};
    public final AtomicReferenceArray<char[]> a;

    public wp() {
        new AtomicReferenceArray(4);
        this.a = new AtomicReferenceArray<>(4);
    }

    public char[] a(int i, int i2) {
        int i3 = b[i];
        if (i2 < i3) {
            i2 = i3;
        }
        char[] andSet = this.a.getAndSet(i, null);
        return (andSet == null || andSet.length < i2) ? new char[i2] : andSet;
    }
}
