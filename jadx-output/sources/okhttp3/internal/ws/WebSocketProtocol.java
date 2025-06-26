package okhttp3.internal.ws;

import defpackage.bt7;
import defpackage.im7;
import defpackage.jo;
import defpackage.xs7;

/* loaded from: classes2.dex */
public final class WebSocketProtocol {
    public static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int B0_FLAG_FIN = 128;
    public static final int B0_FLAG_RSV1 = 64;
    public static final int B0_FLAG_RSV2 = 32;
    public static final int B0_FLAG_RSV3 = 16;
    public static final int B0_MASK_OPCODE = 15;
    public static final int B1_FLAG_MASK = 128;
    public static final int B1_MASK_LENGTH = 127;
    public static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    public static final long CLOSE_MESSAGE_MAX = 123;
    public static final int CLOSE_NO_STATUS_CODE = 1005;
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();
    public static final int OPCODE_BINARY = 2;
    public static final int OPCODE_CONTINUATION = 0;
    public static final int OPCODE_CONTROL_CLOSE = 8;
    public static final int OPCODE_CONTROL_PING = 9;
    public static final int OPCODE_CONTROL_PONG = 10;
    public static final int OPCODE_FLAG_CONTROL = 8;
    public static final int OPCODE_TEXT = 1;
    public static final long PAYLOAD_BYTE_MAX = 125;
    public static final int PAYLOAD_LONG = 127;
    public static final int PAYLOAD_SHORT = 126;
    public static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
    }

    public final String acceptHeader(String str) {
        im7.e(str, "key");
        return bt7.i.c(str + ACCEPT_MAGIC).K().i();
    }

    public final String closeCodeExceptionMessage(int i) {
        if (i < 1000 || i >= 5000) {
            return jo.g("Code must be in range [1000,5000): ", i);
        }
        if ((1004 > i || 1006 < i) && (1015 > i || 2999 < i)) {
            return null;
        }
        return jo.h("Code ", i, " is reserved and may not be used.");
    }

    public final void toggleMask(xs7.a aVar, byte[] bArr) {
        long j;
        im7.e(aVar, "cursor");
        im7.e(bArr, "key");
        int length = bArr.length;
        int i = 0;
        do {
            byte[] bArr2 = aVar.i;
            int i2 = aVar.j;
            int i3 = aVar.k;
            if (bArr2 != null) {
                while (i2 < i3) {
                    int i4 = i % length;
                    bArr2[i2] = (byte) (bArr2[i2] ^ bArr[i4]);
                    i2++;
                    i = i4 + 1;
                }
            }
            long j2 = aVar.h;
            xs7 xs7Var = aVar.e;
            im7.c(xs7Var);
            if (!(j2 != xs7Var.f)) {
                throw new IllegalStateException("no more bytes".toString());
            }
            j = aVar.h;
        } while (aVar.b(j == -1 ? 0L : j + (aVar.k - aVar.j)) != -1);
    }

    public final void validateCloseCode(int i) {
        String strCloseCodeExceptionMessage = closeCodeExceptionMessage(i);
        if (strCloseCodeExceptionMessage == null) {
            return;
        }
        im7.c(strCloseCodeExceptionMessage);
        throw new IllegalArgumentException(strCloseCodeExceptionMessage.toString());
    }
}
