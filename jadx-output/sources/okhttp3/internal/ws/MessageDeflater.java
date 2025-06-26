package okhttp3.internal.ws;

import defpackage.bt7;
import defpackage.ct7;
import defpackage.im7;
import defpackage.n56;
import defpackage.xs7;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;

/* loaded from: classes2.dex */
public final class MessageDeflater implements Closeable {
    private final xs7 deflatedBytes;
    private final Deflater deflater;
    private final ct7 deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z) {
        this.noContextTakeover = z;
        xs7 xs7Var = new xs7();
        this.deflatedBytes = xs7Var;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new ct7(xs7Var, deflater);
    }

    private final boolean endsWith(xs7 xs7Var, bt7 bt7Var) {
        return xs7Var.U(xs7Var.f - bt7Var.t(), bt7Var);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        this.deflaterSink.close();
    }

    public final void deflate(xs7 xs7Var) throws IOException {
        im7.e(xs7Var, "buffer");
        if (!(this.deflatedBytes.f == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.deflater.reset();
        }
        this.deflaterSink.write(xs7Var, xs7Var.f);
        this.deflaterSink.flush();
        if (endsWith(this.deflatedBytes, MessageDeflaterKt.EMPTY_DEFLATE_BLOCK)) {
            xs7 xs7Var2 = this.deflatedBytes;
            long j = xs7Var2.f - 4;
            xs7.a aVar = new xs7.a();
            xs7Var2.k(aVar);
            try {
                aVar.a(j);
                n56.w(aVar, null);
            } finally {
            }
        } else {
            this.deflatedBytes.Q(0);
        }
        xs7 xs7Var3 = this.deflatedBytes;
        xs7Var.write(xs7Var3, xs7Var3.f);
    }
}
