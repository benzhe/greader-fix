package okhttp3.internal.ws;

import defpackage.at7;
import defpackage.bt7;
import defpackage.im7;
import defpackage.jo;
import defpackage.xs7;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import java.util.zip.DataFormatException;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Settings;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final xs7 controlFrameBuffer;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final xs7.a maskCursor;
    private final byte[] maskKey;
    private final xs7 messageFrameBuffer;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    private final at7 source;

    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(bt7 bt7Var) throws IOException;

        void onReadMessage(String str) throws IOException;

        void onReadPing(bt7 bt7Var);

        void onReadPong(bt7 bt7Var);
    }

    public WebSocketReader(boolean z, at7 at7Var, FrameCallback frameCallback, boolean z2, boolean z3) {
        im7.e(at7Var, "source");
        im7.e(frameCallback, "frameCallback");
        this.isClient = z;
        this.source = at7Var;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.controlFrameBuffer = new xs7();
        this.messageFrameBuffer = new xs7();
        this.maskKey = z ? null : new byte[4];
        this.maskCursor = z ? null : new xs7.a();
    }

    private final void readControlFrame() throws IOException {
        String strT;
        long j = this.frameLength;
        if (j > 0) {
            this.source.N(this.controlFrameBuffer, j);
            if (!this.isClient) {
                xs7 xs7Var = this.controlFrameBuffer;
                xs7.a aVar = this.maskCursor;
                im7.c(aVar);
                xs7Var.k(aVar);
                this.maskCursor.b(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                xs7.a aVar2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                im7.c(bArr);
                webSocketProtocol.toggleMask(aVar2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                xs7 xs7Var2 = this.controlFrameBuffer;
                long j2 = xs7Var2.f;
                if (j2 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j2 != 0) {
                    s = xs7Var2.readShort();
                    strT = this.controlFrameBuffer.t();
                    String strCloseCodeExceptionMessage = WebSocketProtocol.INSTANCE.closeCodeExceptionMessage(s);
                    if (strCloseCodeExceptionMessage != null) {
                        throw new ProtocolException(strCloseCodeExceptionMessage);
                    }
                } else {
                    strT = "";
                }
                this.frameCallback.onReadClose(s, strT);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.e0());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.e0());
                return;
            default:
                StringBuilder sbZ = jo.z("Unknown control opcode: ");
                sbZ.append(Util.toHexString(this.opcode));
                throw new ProtocolException(sbZ.toString());
        }
    }

    private final void readHeader() throws IOException {
        boolean z;
        if (this.closed) {
            throw new IOException("closed");
        }
        long jTimeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            int iAnd = Util.and(this.source.readByte(), Base64.BASELENGTH);
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            int i = iAnd & 15;
            this.opcode = i;
            boolean z2 = (iAnd & 128) != 0;
            this.isFinalFrame = z2;
            boolean z3 = (iAnd & 8) != 0;
            this.isControlFrame = z3;
            if (z3 && !z2) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z4 = (iAnd & 64) != 0;
            if (i == 1 || i == 2) {
                if (!z4) {
                    z = false;
                } else {
                    if (!this.perMessageDeflate) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    z = true;
                }
                this.readingCompressedMessage = z;
            } else if (z4) {
                throw new ProtocolException("Unexpected rsv1 flag");
            }
            if ((iAnd & 32) != 0) {
                throw new ProtocolException("Unexpected rsv2 flag");
            }
            if ((iAnd & 16) != 0) {
                throw new ProtocolException("Unexpected rsv3 flag");
            }
            int iAnd2 = Util.and(this.source.readByte(), Base64.BASELENGTH);
            boolean z5 = (iAnd2 & 128) != 0;
            if (z5 == this.isClient) {
                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j = iAnd2 & 127;
            this.frameLength = j;
            if (j == WebSocketProtocol.PAYLOAD_SHORT) {
                this.frameLength = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            } else if (j == 127) {
                long j2 = this.source.readLong();
                this.frameLength = j2;
                if (j2 < 0) {
                    StringBuilder sbZ = jo.z("Frame length 0x");
                    sbZ.append(Util.toHexString(this.frameLength));
                    sbZ.append(" > 0x7FFFFFFFFFFFFFFF");
                    throw new ProtocolException(sbZ.toString());
                }
            }
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z5) {
                at7 at7Var = this.source;
                byte[] bArr = this.maskKey;
                im7.c(bArr);
                at7Var.readFully(bArr);
            }
        } catch (Throwable th) {
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j = this.frameLength;
            if (j > 0) {
                this.source.N(this.messageFrameBuffer, j);
                if (!this.isClient) {
                    xs7 xs7Var = this.messageFrameBuffer;
                    xs7.a aVar = this.maskCursor;
                    im7.c(aVar);
                    xs7Var.k(aVar);
                    this.maskCursor.b(this.messageFrameBuffer.f - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    xs7.a aVar2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    im7.c(bArr);
                    webSocketProtocol.toggleMask(aVar2, bArr);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                StringBuilder sbZ = jo.z("Expected continuation opcode. Got: ");
                sbZ.append(Util.toHexString(this.opcode));
                throw new ProtocolException(sbZ.toString());
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws DataFormatException, IOException {
        int i = this.opcode;
        if (i != 1 && i != 2) {
            StringBuilder sbZ = jo.z("Unknown opcode: ");
            sbZ.append(Util.toHexString(i));
            throw new ProtocolException(sbZ.toString());
        }
        readMessage();
        if (this.readingCompressedMessage) {
            MessageInflater messageInflater = this.messageInflater;
            if (messageInflater == null) {
                messageInflater = new MessageInflater(this.noContextTakeover);
                this.messageInflater = messageInflater;
            }
            messageInflater.inflate(this.messageFrameBuffer);
        }
        if (i == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.t());
        } else {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.e0());
        }
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final at7 getSource() {
        return this.source;
    }

    public final void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
