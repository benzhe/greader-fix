package okhttp3.logging;

import defpackage.at7;
import defpackage.co7;
import defpackage.gm7;
import defpackage.gt7;
import defpackage.im7;
import defpackage.jk7;
import defpackage.jo;
import defpackage.n56;
import defpackage.um7;
import defpackage.xs7;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Companion Companion = new Companion(null);
        public static final Logger DEFAULT = new Companion.DefaultLogger();

        public static final class Companion {
            public static final /* synthetic */ Companion $$INSTANCE = null;

            public static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(String str) {
                    im7.e(str, "message");
                    Platform.log$default(Platform.Companion.get(), str, 0, null, 6, null);
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(gm7 gm7Var) {
                this();
            }
        }

        void log(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public HttpLoggingInterceptor(Logger logger) {
        im7.e(logger, "logger");
        this.logger = logger;
        this.headersToRedact = jk7.e;
        this.level = Level.NONE;
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get(HttpConnection.CONTENT_ENCODING);
        return (str == null || co7.e(str, "identity", true) || co7.e(str, "gzip", true)) ? false : true;
    }

    private final void logHeader(Headers headers, int i) {
        String strValue = this.headersToRedact.contains(headers.name(i)) ? "██" : headers.value(i);
        this.logger.log(headers.name(i) + ": " + strValue);
    }

    /* renamed from: -deprecated_level, reason: not valid java name */
    public final Level m138deprecated_level() {
        return this.level;
    }

    public final Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        String string;
        String str;
        String string2;
        Charset charset;
        Charset charset2;
        im7.e(chain, "chain");
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z = level == Level.BODY;
        boolean z2 = z || level == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        Connection connection = chain.connection();
        StringBuilder sbZ = jo.z("--> ");
        sbZ.append(request.method());
        sbZ.append(' ');
        sbZ.append(request.url());
        if (connection != null) {
            StringBuilder sbZ2 = jo.z(StringUtils.SPACE);
            sbZ2.append(connection.protocol());
            string = sbZ2.toString();
        } else {
            string = "";
        }
        sbZ.append(string);
        String string3 = sbZ.toString();
        if (!z2 && requestBodyBody != null) {
            StringBuilder sbB = jo.B(string3, " (");
            sbB.append(requestBodyBody.contentLength());
            sbB.append("-byte body)");
            string3 = sbB.toString();
        }
        this.logger.log(string3);
        if (z2) {
            Headers headers = request.headers();
            if (requestBodyBody != null) {
                MediaType mediaTypeContentType = requestBodyBody.contentType();
                if (mediaTypeContentType != null && headers.get(HttpConnection.CONTENT_TYPE) == null) {
                    this.logger.log("Content-Type: " + mediaTypeContentType);
                }
                if (requestBodyBody.contentLength() != -1 && headers.get("Content-Length") == null) {
                    Logger logger = this.logger;
                    StringBuilder sbZ3 = jo.z("Content-Length: ");
                    sbZ3.append(requestBodyBody.contentLength());
                    logger.log(sbZ3.toString());
                }
            }
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                logHeader(headers, i);
            }
            if (!z || requestBodyBody == null) {
                Logger logger2 = this.logger;
                StringBuilder sbZ4 = jo.z("--> END ");
                sbZ4.append(request.method());
                logger2.log(sbZ4.toString());
            } else if (bodyHasUnknownEncoding(request.headers())) {
                Logger logger3 = this.logger;
                StringBuilder sbZ5 = jo.z("--> END ");
                sbZ5.append(request.method());
                sbZ5.append(" (encoded body omitted)");
                logger3.log(sbZ5.toString());
            } else if (requestBodyBody.isDuplex()) {
                Logger logger4 = this.logger;
                StringBuilder sbZ6 = jo.z("--> END ");
                sbZ6.append(request.method());
                sbZ6.append(" (duplex request body omitted)");
                logger4.log(sbZ6.toString());
            } else if (requestBodyBody.isOneShot()) {
                Logger logger5 = this.logger;
                StringBuilder sbZ7 = jo.z("--> END ");
                sbZ7.append(request.method());
                sbZ7.append(" (one-shot body omitted)");
                logger5.log(sbZ7.toString());
            } else {
                xs7 xs7Var = new xs7();
                requestBodyBody.writeTo(xs7Var);
                MediaType mediaTypeContentType2 = requestBodyBody.contentType();
                if (mediaTypeContentType2 == null || (charset2 = mediaTypeContentType2.charset(StandardCharsets.UTF_8)) == null) {
                    charset2 = StandardCharsets.UTF_8;
                    im7.d(charset2, "UTF_8");
                }
                this.logger.log("");
                if (Utf8Kt.isProbablyUtf8(xs7Var)) {
                    this.logger.log(xs7Var.V(charset2));
                    Logger logger6 = this.logger;
                    StringBuilder sbZ8 = jo.z("--> END ");
                    sbZ8.append(request.method());
                    sbZ8.append(" (");
                    sbZ8.append(requestBodyBody.contentLength());
                    sbZ8.append("-byte body)");
                    logger6.log(sbZ8.toString());
                } else {
                    Logger logger7 = this.logger;
                    StringBuilder sbZ9 = jo.z("--> END ");
                    sbZ9.append(request.method());
                    sbZ9.append(" (binary ");
                    sbZ9.append(requestBodyBody.contentLength());
                    sbZ9.append("-byte body omitted)");
                    logger7.log(sbZ9.toString());
                }
            }
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ResponseBody responseBodyBody = responseProceed.body();
            im7.c(responseBodyBody);
            long jContentLength = responseBodyBody.contentLength();
            String str2 = jContentLength != -1 ? jContentLength + "-byte" : "unknown-length";
            Logger logger8 = this.logger;
            StringBuilder sbZ10 = jo.z("<-- ");
            sbZ10.append(responseProceed.code());
            if (responseProceed.message().length() == 0) {
                str = "-byte body omitted)";
                string2 = "";
            } else {
                String strMessage = responseProceed.message();
                StringBuilder sb = new StringBuilder();
                str = "-byte body omitted)";
                sb.append(String.valueOf(' '));
                sb.append(strMessage);
                string2 = sb.toString();
            }
            sbZ10.append(string2);
            sbZ10.append(' ');
            sbZ10.append(responseProceed.request().url());
            sbZ10.append(" (");
            sbZ10.append(millis);
            sbZ10.append("ms");
            sbZ10.append(!z2 ? jo.o(", ", str2, " body") : "");
            sbZ10.append(')');
            logger8.log(sbZ10.toString());
            if (z2) {
                Headers headers2 = responseProceed.headers();
                int size2 = headers2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    logHeader(headers2, i2);
                }
                if (!z || !HttpHeaders.promisesBody(responseProceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyHasUnknownEncoding(responseProceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    at7 at7VarSource = responseBodyBody.source();
                    at7VarSource.l(Long.MAX_VALUE);
                    xs7 xs7VarH = at7VarSource.h();
                    Long l = null;
                    if (co7.e("gzip", headers2.get(HttpConnection.CONTENT_ENCODING), true)) {
                        Long lValueOf = Long.valueOf(xs7VarH.f);
                        gt7 gt7Var = new gt7(xs7VarH.clone());
                        try {
                            xs7VarH = new xs7();
                            xs7VarH.b0(gt7Var);
                            n56.w(gt7Var, null);
                            l = lValueOf;
                        } finally {
                        }
                    }
                    MediaType mediaTypeContentType3 = responseBodyBody.contentType();
                    if (mediaTypeContentType3 == null || (charset = mediaTypeContentType3.charset(StandardCharsets.UTF_8)) == null) {
                        charset = StandardCharsets.UTF_8;
                        im7.d(charset, "UTF_8");
                    }
                    if (!Utf8Kt.isProbablyUtf8(xs7VarH)) {
                        this.logger.log("");
                        Logger logger9 = this.logger;
                        StringBuilder sbZ11 = jo.z("<-- END HTTP (binary ");
                        sbZ11.append(xs7VarH.f);
                        sbZ11.append(str);
                        logger9.log(sbZ11.toString());
                        return responseProceed;
                    }
                    if (jContentLength != 0) {
                        this.logger.log("");
                        this.logger.log(xs7VarH.clone().V(charset));
                    }
                    if (l != null) {
                        Logger logger10 = this.logger;
                        StringBuilder sbZ12 = jo.z("<-- END HTTP (");
                        sbZ12.append(xs7VarH.f);
                        sbZ12.append("-byte, ");
                        sbZ12.append(l);
                        sbZ12.append("-gzipped-byte body)");
                        logger10.log(sbZ12.toString());
                    } else {
                        Logger logger11 = this.logger;
                        StringBuilder sbZ13 = jo.z("<-- END HTTP (");
                        sbZ13.append(xs7VarH.f);
                        sbZ13.append("-byte body)");
                        logger11.log(sbZ13.toString());
                    }
                }
            }
            return responseProceed;
        } catch (Exception e) {
            this.logger.log("<-- HTTP FAILED: " + e);
            throw e;
        }
    }

    public final void level(Level level) {
        im7.e(level, "<set-?>");
        this.level = level;
    }

    public final void redactHeader(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        co7.f(um7.a);
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        n56.f(treeSet, this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public final HttpLoggingInterceptor setLevel(Level level) {
        im7.e(level, "level");
        this.level = level;
        return this;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i, gm7 gm7Var) {
        this((i & 1) != 0 ? Logger.DEFAULT : logger);
    }
}
