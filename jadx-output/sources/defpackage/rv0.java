package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class rv0 {
    public long a;

    public final long a(ByteBuffer byteBuffer) {
        ea1 ea1Var;
        fb1 fb1Var;
        long j = this.a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            Iterator<d91> it = new d71(new ov0(byteBufferDuplicate), tv0.c).f().iterator();
            while (true) {
                ea1Var = null;
                if (!it.hasNext()) {
                    fb1Var = null;
                    break;
                }
                d91 next = it.next();
                if (next instanceof fb1) {
                    fb1Var = (fb1) next;
                    break;
                }
            }
            Iterator<d91> it2 = fb1Var.f().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                d91 next2 = it2.next();
                if (next2 instanceof ea1) {
                    ea1Var = (ea1) next2;
                    break;
                }
            }
            long j2 = (ea1Var.q * 1000) / ea1Var.p;
            this.a = j2;
            return j2;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
