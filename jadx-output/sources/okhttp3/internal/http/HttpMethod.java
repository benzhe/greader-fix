package okhttp3.internal.http;

import defpackage.im7;

/* loaded from: classes2.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String str) {
        im7.e(str, "method");
        return (im7.a(str, "GET") || im7.a(str, "HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(String str) {
        im7.e(str, "method");
        return im7.a(str, "POST") || im7.a(str, "PUT") || im7.a(str, "PATCH") || im7.a(str, "PROPPATCH") || im7.a(str, "REPORT");
    }

    public final boolean invalidatesCache(String str) {
        im7.e(str, "method");
        return im7.a(str, "POST") || im7.a(str, "PATCH") || im7.a(str, "PUT") || im7.a(str, "DELETE") || im7.a(str, "MOVE");
    }

    public final boolean redirectsToGet(String str) {
        im7.e(str, "method");
        return !im7.a(str, "PROPFIND");
    }

    public final boolean redirectsWithBody(String str) {
        im7.e(str, "method");
        return im7.a(str, "PROPFIND");
    }
}
