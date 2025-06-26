package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.bt7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.Util;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public final class MultipartBody extends RequestBody {
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    public static final Companion Companion = new Companion(null);
    private static final byte[] DASHDASH;
    public static final MediaType DIGEST;
    public static final MediaType FORM;
    public static final MediaType MIXED;
    public static final MediaType PARALLEL;
    private final bt7 boundaryByteString;
    private long contentLength;
    private final MediaType contentType;
    private final List<Part> parts;
    private final MediaType type;

    public static final class Builder {
        private final bt7 boundary;
        private final List<Part> parts;
        private MediaType type;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Builder(String str) {
            im7.e(str, "boundary");
            this.boundary = bt7.i.c(str);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }

        public final Builder addFormDataPart(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            addPart(Part.Companion.createFormData(str, str2));
            return this;
        }

        public final Builder addPart(RequestBody requestBody) {
            im7.e(requestBody, "body");
            addPart(Part.Companion.create(requestBody));
            return this;
        }

        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final Builder setType(MediaType mediaType) {
            im7.e(mediaType, NSRSS20.ENC_TYPE);
            if (im7.a(mediaType.type(), "multipart")) {
                this.type = mediaType;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + mediaType).toString());
        }

        public final Builder addFormDataPart(String str, String str2, RequestBody requestBody) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(requestBody, "body");
            addPart(Part.Companion.createFormData(str, str2, requestBody));
            return this;
        }

        public final Builder addPart(Headers headers, RequestBody requestBody) {
            im7.e(requestBody, "body");
            addPart(Part.Companion.create(headers, requestBody));
            return this;
        }

        public final Builder addPart(Part part) {
            im7.e(part, "part");
            this.parts.add(part);
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i, gm7 gm7Var) {
            if ((i & 1) != 0) {
                str = UUID.randomUUID().toString();
                im7.d(str, "UUID.randomUUID().toString()");
            }
            this(str);
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public final void appendQuotedString$okhttp(StringBuilder sb, String str) {
            im7.e(sb, "$this$appendQuotedString");
            im7.e(str, "key");
            sb.append('\"');
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt != '\"') {
                    sb.append(cCharAt);
                } else {
                    sb.append("%22");
                }
            }
            sb.append('\"');
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public static final class Part {
        public static final Companion Companion = new Companion(null);
        private final RequestBody body;
        private final Headers headers;

        public static final class Companion {
            private Companion() {
            }

            public final Part create(RequestBody requestBody) {
                im7.e(requestBody, "body");
                return create(null, requestBody);
            }

            public final Part createFormData(String str, String str2) {
                im7.e(str, InetAddressKeys.KEY_NAME);
                im7.e(str2, "value");
                return createFormData(str, null, RequestBody.Companion.create$default(RequestBody.Companion, str2, (MediaType) null, 1, (Object) null));
            }

            public /* synthetic */ Companion(gm7 gm7Var) {
                this();
            }

            public final Part create(Headers headers, RequestBody requestBody) {
                im7.e(requestBody, "body");
                gm7 gm7Var = null;
                if (!((headers != null ? headers.get(HttpConnection.CONTENT_TYPE) : null) == null)) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                if ((headers != null ? headers.get("Content-Length") : null) == null) {
                    return new Part(headers, requestBody, gm7Var);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }

            public final Part createFormData(String str, String str2, RequestBody requestBody) {
                im7.e(str, InetAddressKeys.KEY_NAME);
                im7.e(requestBody, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                Companion companion = MultipartBody.Companion;
                companion.appendQuotedString$okhttp(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    companion.appendQuotedString$okhttp(sb, str2);
                }
                String string = sb.toString();
                im7.d(string, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii("Content-Disposition", string).build(), requestBody);
            }
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public static final Part create(Headers headers, RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        public static final Part create(RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        public static final Part createFormData(String str, String str2) {
            return Companion.createFormData(str, str2);
        }

        public static final Part createFormData(String str, String str2, RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }

        /* renamed from: -deprecated_body, reason: not valid java name */
        public final RequestBody m86deprecated_body() {
            return this.body;
        }

        /* renamed from: -deprecated_headers, reason: not valid java name */
        public final Headers m87deprecated_headers() {
            return this.headers;
        }

        public final RequestBody body() {
            return this.body;
        }

        public final Headers headers() {
            return this.headers;
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, gm7 gm7Var) {
            this(headers, requestBody);
        }
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        MIXED = companion.get("multipart/mixed");
        ALTERNATIVE = companion.get("multipart/alternative");
        DIGEST = companion.get("multipart/digest");
        PARALLEL = companion.get("multipart/parallel");
        FORM = companion.get(HttpConnection.MULTIPART_FORM_DATA);
        COLONSPACE = new byte[]{(byte) 58, (byte) 32};
        CRLF = new byte[]{(byte) 13, (byte) 10};
        byte b = (byte) 45;
        DASHDASH = new byte[]{b, b};
    }

    public MultipartBody(bt7 bt7Var, MediaType mediaType, List<Part> list) {
        im7.e(bt7Var, "boundaryByteString");
        im7.e(mediaType, NSRSS20.ENC_TYPE);
        im7.e(list, "parts");
        this.boundaryByteString = bt7Var;
        this.type = mediaType;
        this.parts = list;
        this.contentType = MediaType.Companion.get(mediaType + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(zs7 zs7Var, boolean z) throws IOException {
        xs7 xs7Var;
        if (z) {
            zs7Var = new xs7();
            xs7Var = zs7Var;
        } else {
            xs7Var = 0;
        }
        int size = this.parts.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Part part = this.parts.get(i);
            Headers headers = part.headers();
            RequestBody requestBodyBody = part.body();
            im7.c(zs7Var);
            zs7Var.o0(DASHDASH);
            zs7Var.q0(this.boundaryByteString);
            zs7Var.o0(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    zs7Var.T(headers.name(i2)).o0(COLONSPACE).T(headers.value(i2)).o0(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                zs7Var.T("Content-Type: ").T(mediaTypeContentType.toString()).o0(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                zs7Var.T("Content-Length: ").E0(jContentLength).o0(CRLF);
            } else if (z) {
                im7.c(xs7Var);
                xs7Var.skip(xs7Var.f);
                return -1L;
            }
            byte[] bArr = CRLF;
            zs7Var.o0(bArr);
            if (z) {
                j += jContentLength;
            } else {
                requestBodyBody.writeTo(zs7Var);
            }
            zs7Var.o0(bArr);
        }
        im7.c(zs7Var);
        byte[] bArr2 = DASHDASH;
        zs7Var.o0(bArr2);
        zs7Var.q0(this.boundaryByteString);
        zs7Var.o0(bArr2);
        zs7Var.o0(CRLF);
        if (!z) {
            return j;
        }
        im7.c(xs7Var);
        long j2 = xs7Var.f;
        long j3 = j + j2;
        xs7Var.skip(j2);
        return j3;
    }

    /* renamed from: -deprecated_boundary, reason: not valid java name */
    public final String m82deprecated_boundary() {
        return boundary();
    }

    /* renamed from: -deprecated_parts, reason: not valid java name */
    public final List<Part> m83deprecated_parts() {
        return this.parts;
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m84deprecated_size() {
        return size();
    }

    /* renamed from: -deprecated_type, reason: not valid java name */
    public final MediaType m85deprecated_type() {
        return this.type;
    }

    public final String boundary() {
        return this.boundaryByteString.O();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.contentType;
    }

    public final Part part(int i) {
        return this.parts.get(i);
    }

    public final List<Part> parts() {
        return this.parts;
    }

    public final int size() {
        return this.parts.size();
    }

    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(zs7 zs7Var) throws IOException {
        im7.e(zs7Var, "sink");
        writeOrCountBytes(zs7Var, false);
    }
}
