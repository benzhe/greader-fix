package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class ov0 implements Closeable {
    public final ByteBuffer e;

    public ov0(ByteBuffer byteBuffer) {
        this.e = byteBuffer.duplicate();
    }

    public final long a() throws IOException {
        return this.e.position();
    }

    public final void b(long j) throws IOException {
        this.e.position((int) j);
    }

    public final ByteBuffer c(long j, long j2) throws IOException {
        int iPosition = this.e.position();
        this.e.position((int) j);
        ByteBuffer byteBufferSlice = this.e.slice();
        byteBufferSlice.limit((int) j2);
        this.e.position(iPosition);
        return byteBufferSlice;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.e.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), this.e.remaining());
        byte[] bArr = new byte[iMin];
        this.e.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }
}
