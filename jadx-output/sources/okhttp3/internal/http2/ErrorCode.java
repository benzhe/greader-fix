package okhttp3.internal.http2;

import defpackage.gm7;

/* loaded from: classes2.dex */
public enum ErrorCode {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    SETTINGS_TIMEOUT(4),
    STREAM_CLOSED(5),
    FRAME_SIZE_ERROR(6),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);

    public static final Companion Companion = new Companion(null);
    private final int httpCode;

    public static final class Companion {
        private Companion() {
        }

        public final ErrorCode fromHttp2(int i) {
            ErrorCode[] errorCodeArrValues = ErrorCode.values();
            for (int i2 = 0; i2 < 14; i2++) {
                ErrorCode errorCode = errorCodeArrValues[i2];
                if (errorCode.getHttpCode() == i) {
                    return errorCode;
                }
            }
            return null;
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    ErrorCode(int i) {
        this.httpCode = i;
    }

    public final int getHttpCode() {
        return this.httpCode;
    }
}
