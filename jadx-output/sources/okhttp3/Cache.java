package okhttp3;

import defpackage.at7;
import defpackage.bt7;
import defpackage.co7;
import defpackage.dt7;
import defpackage.et7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jk7;
import defpackage.n56;
import defpackage.pt7;
import defpackage.tt7;
import defpackage.um7;
import defpackage.vt7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import org.jsoup.helper.HttpConnection;
import xs7.b;

/* loaded from: classes2.dex */
public final class Cache implements Closeable, Flushable {
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    public static final class CacheResponseBody extends ResponseBody {
        private final at7 bodySource;
        private final String contentLength;
        private final String contentType;
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            im7.e(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            final vt7 source = snapshot.getSource(1);
            this.bodySource = n56.p(new et7(source) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // defpackage.et7, defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    CacheResponseBody.this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            if (str != null) {
                return Util.toLongOrDefault(str, -1L);
            }
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }

        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        public at7 source() {
            return this.bodySource;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i = 0; i < size; i++) {
                if (co7.e("Vary", headers.name(i), true)) {
                    String strValue = headers.value(i);
                    if (treeSet == null) {
                        co7.f(um7.a);
                        treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                    }
                    for (String str : co7.v(strValue, new char[]{','}, false, 0, 6)) {
                        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
                        treeSet.add(co7.F(str).toString());
                    }
                }
            }
            return treeSet != null ? treeSet : jk7.e;
        }

        public final boolean hasVaryAll(Response response) {
            im7.e(response, "$this$hasVaryAll");
            return varyFields(response.headers()).contains("*");
        }

        public final String key(HttpUrl httpUrl) {
            im7.e(httpUrl, "url");
            return bt7.i.c(httpUrl.toString()).k("MD5").w();
        }

        public final int readInt$okhttp(at7 at7Var) throws IOException {
            im7.e(at7Var, "source");
            try {
                long jP = at7Var.P();
                String strI0 = at7Var.i0();
                if (jP >= 0 && jP <= Integer.MAX_VALUE) {
                    if (!(strI0.length() > 0)) {
                        return (int) jP;
                    }
                }
                throw new IOException("expected an int but was \"" + jP + strI0 + '\"');
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final Headers varyHeaders(Response response) {
            im7.e(response, "$this$varyHeaders");
            Response responseNetworkResponse = response.networkResponse();
            im7.c(responseNetworkResponse);
            return varyHeaders(responseNetworkResponse.request().headers(), response.headers());
        }

        public final boolean varyMatches(Response response, Headers headers, Request request) {
            im7.e(response, "cachedResponse");
            im7.e(headers, "cachedRequest");
            im7.e(request, "newRequest");
            Set<String> setVaryFields = varyFields(response.headers());
            if ((setVaryFields instanceof Collection) && setVaryFields.isEmpty()) {
                return true;
            }
            for (String str : setVaryFields) {
                if (!im7.a(headers.values(str), request.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> setVaryFields = varyFields(headers2);
            if (setVaryFields.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String strName = headers.name(i);
                if (setVaryFields.contains(strName)) {
                    builder.add(strName, headers.value(i));
                }
            }
            return builder.build();
        }
    }

    public final class RealCacheRequest implements CacheRequest {
        private final tt7 body;
        private final tt7 cacheOut;
        private boolean done;
        private final DiskLruCache.Editor editor;
        public final /* synthetic */ Cache this$0;

        public RealCacheRequest(Cache cache, DiskLruCache.Editor editor) {
            im7.e(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            tt7 tt7VarNewSink = editor.newSink(1);
            this.cacheOut = tt7VarNewSink;
            this.body = new dt7(tt7VarNewSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // defpackage.dt7, defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    synchronized (RealCacheRequest.this.this$0) {
                        if (RealCacheRequest.this.getDone()) {
                            return;
                        }
                        RealCacheRequest.this.setDone(true);
                        Cache cache2 = RealCacheRequest.this.this$0;
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        RealCacheRequest.this.editor.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() throws IOException {
            synchronized (this.this$0) {
                if (this.done) {
                    return;
                }
                this.done = true;
                Cache cache = this.this$0;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException unused) {
                }
            }
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public tt7 body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z) {
            this.done = z;
        }
    }

    /* renamed from: okhttp3.Cache$urls$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<String>, Object {
        private boolean canRemove;
        private final Iterator<DiskLruCache.Snapshot> delegate;
        private String nextUrl;

        public AnonymousClass1() {
            this.delegate = Cache.this.getCache$okhttp().snapshots();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextUrl != null) {
                return true;
            }
            this.canRemove = false;
            while (this.delegate.hasNext()) {
                try {
                    DiskLruCache.Snapshot next = this.delegate.next();
                    try {
                        continue;
                        this.nextUrl = ((pt7) n56.p(next.getSource(0))).i0();
                        n56.w(next, null);
                        return true;
                    } finally {
                        try {
                            continue;
                        } catch (Throwable th) {
                        }
                    }
                } catch (IOException unused) {
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            this.delegate.remove();
        }

        @Override // java.util.Iterator
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.nextUrl;
            im7.c(str);
            this.nextUrl = null;
            this.canRemove = true;
            return str;
        }
    }

    public Cache(File file, long j, FileSystem fileSystem) {
        im7.e(file, "directory");
        im7.e(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, file, VERSION, 2, j, TaskRunner.INSTANCE);
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    public static final String key(HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    /* renamed from: -deprecated_directory, reason: not valid java name */
    public final File m15deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    public final Response get$okhttp(Request request) throws IOException {
        im7.e(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot != null) {
                try {
                    Entry entry = new Entry(snapshot.getSource(0));
                    Response response = entry.response(snapshot);
                    if (entry.matches(request, response)) {
                        return response;
                    }
                    ResponseBody responseBodyBody = response.body();
                    if (responseBodyBody != null) {
                        Util.closeQuietly(responseBodyBody);
                    }
                    return null;
                } catch (IOException unused) {
                    Util.closeQuietly(snapshot);
                }
            }
        } catch (IOException unused2) {
        }
        return null;
    }

    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    public final CacheRequest put$okhttp(Response response) {
        DiskLruCache.Editor editorEdit$default;
        im7.e(response, "response");
        String strMethod = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!im7.a(strMethod, "GET")) {
            return null;
        }
        Companion companion = Companion;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            editorEdit$default = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editorEdit$default == null) {
                return null;
            }
            try {
                entry.writeTo(editorEdit$default);
                return new RealCacheRequest(this, editorEdit$default);
            } catch (IOException unused2) {
                abortQuietly(editorEdit$default);
                return null;
            }
        } catch (IOException unused3) {
            editorEdit$default = null;
        }
    }

    public final void remove$okhttp(Request request) throws IOException {
        im7.e(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i) {
        this.writeAbortCount = i;
    }

    public final void setWriteSuccessCount$okhttp(int i) {
        this.writeSuccessCount = i;
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(CacheStrategy cacheStrategy) {
        im7.e(cacheStrategy, "cacheStrategy");
        this.requestCount++;
        if (cacheStrategy.getNetworkRequest() != null) {
            this.networkCount++;
        } else if (cacheStrategy.getCacheResponse() != null) {
            this.hitCount++;
        }
    }

    public final void update$okhttp(Response response, Response response2) {
        im7.e(response, "cached");
        im7.e(response2, "network");
        Entry entry = new Entry(response2);
        ResponseBody responseBodyBody = response.body();
        Objects.requireNonNull(responseBodyBody, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        DiskLruCache.Editor editorEdit = null;
        try {
            editorEdit = ((CacheResponseBody) responseBodyBody).getSnapshot().edit();
            if (editorEdit != null) {
                entry.writeTo(editorEdit);
                editorEdit.commit();
            }
        } catch (IOException unused) {
            abortQuietly(editorEdit);
        }
    }

    public final Iterator<String> urls() throws IOException {
        return new AnonymousClass1();
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File file, long j) {
        this(file, j, FileSystem.SYSTEM);
        im7.e(file, "directory");
    }

    public static final class Entry {
        public static final Companion Companion = new Companion(null);
        private static final String RECEIVED_MILLIS;
        private static final String SENT_MILLIS;
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final long receivedResponseMillis;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final long sentRequestMillis;
        private final String url;
        private final Headers varyHeaders;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(gm7 gm7Var) {
                this();
            }
        }

        static {
            StringBuilder sb = new StringBuilder();
            Platform.Companion companion = Platform.Companion;
            sb.append(companion.get().getPrefix());
            sb.append("-Sent-Millis");
            SENT_MILLIS = sb.toString();
            RECEIVED_MILLIS = companion.get().getPrefix() + "-Received-Millis";
        }

        public Entry(vt7 vt7Var) throws IOException {
            im7.e(vt7Var, "rawSource");
            try {
                at7 at7VarP = n56.p(vt7Var);
                pt7 pt7Var = (pt7) at7VarP;
                this.url = pt7Var.i0();
                this.requestMethod = pt7Var.i0();
                Headers.Builder builder = new Headers.Builder();
                int int$okhttp = Cache.Companion.readInt$okhttp(at7VarP);
                for (int i = 0; i < int$okhttp; i++) {
                    builder.addLenient$okhttp(pt7Var.i0());
                }
                this.varyHeaders = builder.build();
                StatusLine statusLine = StatusLine.Companion.parse(pt7Var.i0());
                this.protocol = statusLine.protocol;
                this.code = statusLine.code;
                this.message = statusLine.message;
                Headers.Builder builder2 = new Headers.Builder();
                int int$okhttp2 = Cache.Companion.readInt$okhttp(at7VarP);
                for (int i2 = 0; i2 < int$okhttp2; i2++) {
                    builder2.addLenient$okhttp(pt7Var.i0());
                }
                String str = SENT_MILLIS;
                String str2 = builder2.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
                this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String strI0 = pt7Var.i0();
                    if (strI0.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strI0 + '\"');
                    }
                    this.handshake = Handshake.Companion.get(!pt7Var.J() ? TlsVersion.Companion.forJavaName(pt7Var.i0()) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(pt7Var.i0()), readCertificateList(at7VarP), readCertificateList(at7VarP));
                } else {
                    this.handshake = null;
                }
            } finally {
                vt7Var.close();
            }
        }

        private final boolean isHttps() {
            return co7.A(this.url, "https://", false, 2);
        }

        private final List<Certificate> readCertificateList(at7 at7Var) throws IOException, CertificateException {
            int int$okhttp = Cache.Companion.readInt$okhttp(at7Var);
            if (int$okhttp == -1) {
                return hk7.e;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(int$okhttp);
                for (int i = 0; i < int$okhttp; i++) {
                    String strI0 = at7Var.i0();
                    xs7 xs7Var = new xs7();
                    bt7 bt7VarA = bt7.i.a(strI0);
                    im7.c(bt7VarA);
                    xs7Var.F(bt7VarA);
                    arrayList.add(certificateFactory.generateCertificate(xs7Var.new b()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private final void writeCertList(zs7 zs7Var, List<? extends Certificate> list) throws IOException, CertificateEncodingException {
            try {
                zs7Var.E0(list.size()).K(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    byte[] encoded = list.get(i).getEncoded();
                    bt7.a aVar = bt7.i;
                    im7.d(encoded, "bytes");
                    zs7Var.T(bt7.a.d(aVar, encoded, 0, 0, 3).i()).K(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean matches(Request request, Response response) {
            im7.e(request, "request");
            im7.e(response, "response");
            return im7.a(this.url, request.url().toString()) && im7.a(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        public final Response response(DiskLruCache.Snapshot snapshot) {
            im7.e(snapshot, "snapshot");
            String str = this.responseHeaders.get(HttpConnection.CONTENT_TYPE);
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(DiskLruCache.Editor editor) throws IOException {
            im7.e(editor, "editor");
            zs7 zs7VarO = n56.o(editor.newSink(0));
            try {
                zs7VarO.T(this.url);
                zs7VarO.K(10);
                zs7VarO.T(this.requestMethod);
                zs7VarO.K(10);
                zs7VarO.E0(this.varyHeaders.size());
                zs7VarO.K(10);
                int size = this.varyHeaders.size();
                for (int i = 0; i < size; i++) {
                    zs7VarO.T(this.varyHeaders.name(i));
                    zs7VarO.T(": ");
                    zs7VarO.T(this.varyHeaders.value(i));
                    zs7VarO.K(10);
                }
                zs7VarO.T(new StatusLine(this.protocol, this.code, this.message).toString());
                zs7VarO.K(10);
                zs7VarO.E0(this.responseHeaders.size() + 2);
                zs7VarO.K(10);
                int size2 = this.responseHeaders.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    zs7VarO.T(this.responseHeaders.name(i2));
                    zs7VarO.T(": ");
                    zs7VarO.T(this.responseHeaders.value(i2));
                    zs7VarO.K(10);
                }
                zs7VarO.T(SENT_MILLIS);
                zs7VarO.T(": ");
                zs7VarO.E0(this.sentRequestMillis);
                zs7VarO.K(10);
                zs7VarO.T(RECEIVED_MILLIS);
                zs7VarO.T(": ");
                zs7VarO.E0(this.receivedResponseMillis);
                zs7VarO.K(10);
                if (isHttps()) {
                    zs7VarO.K(10);
                    Handshake handshake = this.handshake;
                    im7.c(handshake);
                    zs7VarO.T(handshake.cipherSuite().javaName());
                    zs7VarO.K(10);
                    writeCertList(zs7VarO, this.handshake.peerCertificates());
                    writeCertList(zs7VarO, this.handshake.localCertificates());
                    zs7VarO.T(this.handshake.tlsVersion().javaName());
                    zs7VarO.K(10);
                }
                n56.w(zs7VarO, null);
            } finally {
            }
        }

        public Entry(Response response) {
            im7.e(response, "response");
            this.url = response.request().url().toString();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }
    }
}
