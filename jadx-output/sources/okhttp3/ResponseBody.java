package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import defpackage.at7;
import defpackage.bt7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.n56;
import defpackage.pl7;
import defpackage.wn7;
import defpackage.xs7;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final at7 source;

        public BomAwareReader(at7 at7Var, Charset charset) {
            im7.e(at7Var, "source");
            im7.e(charset, "charset");
            this.source = at7Var;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            im7.e(cArr, "cbuf");
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader inputStreamReader = this.delegate;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.source.inputStream(), Util.readBomAsCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i, i2);
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public final ResponseBody create(String str, MediaType mediaType) {
            im7.e(str, "$this$toResponseBody");
            Charset charset = wn7.a;
            if (mediaType != null) {
                Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charsetCharset$default == null) {
                    mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charsetCharset$default;
                }
            }
            xs7 xs7Var = new xs7();
            im7.e(str, "string");
            im7.e(charset, "charset");
            xs7 xs7VarJ0 = xs7Var.j0(str, 0, str.length(), charset);
            return create(xs7VarJ0, mediaType, xs7VarJ0.f);
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, bt7 bt7Var, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bt7Var, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, at7 at7Var, MediaType mediaType, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            if ((i & 2) != 0) {
                j = -1;
            }
            return companion.create(at7Var, mediaType, j);
        }

        public final ResponseBody create(byte[] bArr, MediaType mediaType) {
            im7.e(bArr, "$this$toResponseBody");
            xs7 xs7Var = new xs7();
            xs7Var.I(bArr);
            return create(xs7Var, mediaType, bArr.length);
        }

        public final ResponseBody create(bt7 bt7Var, MediaType mediaType) {
            im7.e(bt7Var, "$this$toResponseBody");
            xs7 xs7Var = new xs7();
            xs7Var.F(bt7Var);
            return create(xs7Var, mediaType, bt7Var.t());
        }

        public final ResponseBody create(final at7 at7Var, final MediaType mediaType, final long j) {
            im7.e(at7Var, "$this$asResponseBody");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j;
                }

                @Override // okhttp3.ResponseBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                public at7 source() {
                    return at7Var;
                }
            };
        }

        public final ResponseBody create(MediaType mediaType, String str) {
            im7.e(str, NSContent.NSTAG);
            return create(str, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] bArr) {
            im7.e(bArr, NSContent.NSTAG);
            return create(bArr, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, bt7 bt7Var) {
            im7.e(bt7Var, NSContent.NSTAG);
            return create(bt7Var, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, long j, at7 at7Var) {
            im7.e(at7Var, NSContent.NSTAG);
            return create(at7Var, mediaType, j);
        }
    }

    private final Charset charset() {
        Charset charset;
        MediaType mediaTypeContentType = contentType();
        return (mediaTypeContentType == null || (charset = mediaTypeContentType.charset(wn7.a)) == null) ? wn7.a : charset;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(pl7<? super at7, ? extends T> pl7Var, pl7<? super T, Integer> pl7Var2) throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > Integer.MAX_VALUE) {
            throw new IOException(jo.j("Cannot buffer entire body for content length: ", jContentLength));
        }
        at7 at7VarSource = source();
        try {
            T tInvoke = pl7Var.invoke(at7VarSource);
            n56.w(at7VarSource, null);
            int iIntValue = pl7Var2.invoke(tInvoke).intValue();
            if (jContentLength == -1 || jContentLength == iIntValue) {
                return tInvoke;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iIntValue + ") disagree");
        } finally {
        }
    }

    public static final ResponseBody create(at7 at7Var, MediaType mediaType, long j) {
        return Companion.create(at7Var, mediaType, j);
    }

    public static final ResponseBody create(bt7 bt7Var, MediaType mediaType) {
        return Companion.create(bt7Var, mediaType);
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j, at7 at7Var) {
        return Companion.create(mediaType, j, at7Var);
    }

    public static final ResponseBody create(MediaType mediaType, bt7 bt7Var) {
        return Companion.create(mediaType, bt7Var);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public final InputStream byteStream() {
        return source().inputStream();
    }

    public final bt7 byteString() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > Integer.MAX_VALUE) {
            throw new IOException(jo.j("Cannot buffer entire body for content length: ", jContentLength));
        }
        at7 at7VarSource = source();
        try {
            bt7 bt7VarE0 = at7VarSource.e0();
            n56.w(at7VarSource, null);
            int iT = bt7VarE0.t();
            if (jContentLength == -1 || jContentLength == iT) {
                return bt7VarE0;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iT + ") disagree");
        } finally {
        }
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > Integer.MAX_VALUE) {
            throw new IOException(jo.j("Cannot buffer entire body for content length: ", jContentLength));
        }
        at7 at7VarSource = source();
        try {
            byte[] bArrG = at7VarSource.G();
            n56.w(at7VarSource, null);
            int length = bArrG.length;
            if (jContentLength == -1 || jContentLength == length) {
                return bArrG;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
        } finally {
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract at7 source();

    public final String string() throws IOException {
        at7 at7VarSource = source();
        try {
            String strV = at7VarSource.V(Util.readBomAsCharset(at7VarSource, charset()));
            n56.w(at7VarSource, null);
            return strV;
        } finally {
        }
    }
}
