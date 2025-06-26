package okhttp3.internal.ws;

import defpackage.bt7;
import defpackage.im7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;

/* loaded from: classes2.dex */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final xs7.a maskCursor;
    private final byte[] maskKey;
    private final xs7 messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final zs7 sink;
    private final xs7 sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z, zs7 zs7Var, Random random, boolean z2, boolean z3, long j) {
        im7.e(zs7Var, "sink");
        im7.e(random, "random");
        this.isClient = z;
        this.sink = zs7Var;
        this.random = random;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.minimumDeflateSize = j;
        this.messageBuffer = new xs7();
        this.sinkBuffer = zs7Var.h();
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new xs7.a() : null;
    }

    private final void writeControlFrame(int i, bt7 bt7Var) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        int iT = bt7Var.t();
        if (!(((long) iT) <= 125)) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
        }
        this.sinkBuffer.Q(i | 128);
        if (this.isClient) {
            this.sinkBuffer.Q(iT | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            im7.c(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.I(this.maskKey);
            if (iT > 0) {
                xs7 xs7Var = this.sinkBuffer;
                long j = xs7Var.f;
                xs7Var.F(bt7Var);
                xs7 xs7Var2 = this.sinkBuffer;
                xs7.a aVar = this.maskCursor;
                im7.c(aVar);
                xs7Var2.k(aVar);
                this.maskCursor.b(j);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.Q(iT);
            this.sinkBuffer.F(bt7Var);
        }
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final zs7 getSink() {
        return this.sink;
    }

    public final void writeClose(int i, bt7 bt7Var) throws IOException {
        bt7 bt7VarE0 = bt7.h;
        if (i != 0 || bt7Var != null) {
            if (i != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i);
            }
            xs7 xs7Var = new xs7();
            xs7Var.h0(i);
            if (bt7Var != null) {
                xs7Var.F(bt7Var);
            }
            bt7VarE0 = xs7Var.e0();
        }
        try {
            writeControlFrame(8, bt7VarE0);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i, bt7 bt7Var) throws IOException {
        im7.e(bt7Var, "data");
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        this.messageBuffer.F(bt7Var);
        int i2 = i | 128;
        if (this.perMessageDeflate && bt7Var.t() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i2 |= 64;
        }
        long j = this.messageBuffer.f;
        this.sinkBuffer.Q(i2);
        int i3 = this.isClient ? 128 : 0;
        if (j <= 125) {
            this.sinkBuffer.Q(((int) j) | i3);
        } else if (j <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            this.sinkBuffer.Q(i3 | WebSocketProtocol.PAYLOAD_SHORT);
            this.sinkBuffer.h0((int) j);
        } else {
            this.sinkBuffer.Q(i3 | 127);
            this.sinkBuffer.g0(j);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            im7.c(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.I(this.maskKey);
            if (j > 0) {
                xs7 xs7Var = this.messageBuffer;
                xs7.a aVar = this.maskCursor;
                im7.c(aVar);
                xs7Var.k(aVar);
                this.maskCursor.b(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, j);
        this.sink.u();
    }

    public final void writePing(bt7 bt7Var) throws IOException {
        im7.e(bt7Var, "payload");
        writeControlFrame(9, bt7Var);
    }

    public final void writePong(bt7 bt7Var) throws IOException {
        im7.e(bt7Var, "payload");
        writeControlFrame(10, bt7Var);
    }
}
