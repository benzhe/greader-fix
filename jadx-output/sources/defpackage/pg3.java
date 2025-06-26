package defpackage;

import java.io.IOException;
import java.util.Stack;

/* loaded from: classes.dex */
public final class pg3 {
    public final byte[] a = new byte[8];
    public final Stack<rg3> b = new Stack<>();
    public final xg3 c = new xg3();
    public wg3 d;
    public int e;
    public int f;
    public long g;

    public final long a(gg3 gg3Var, int i) throws InterruptedException, IOException {
        ((eg3) gg3Var).c(this.a, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.a[i2] & 255);
        }
        return j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x08e3  */
    /* JADX WARN: Type inference failed for: r2v191 */
    /* JADX WARN: Type inference failed for: r2v33, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(defpackage.gg3 r58) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 3294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pg3.b(gg3):boolean");
    }
}
