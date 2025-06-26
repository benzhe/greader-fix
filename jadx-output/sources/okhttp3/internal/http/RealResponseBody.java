package okhttp3.internal.http;

import defpackage.at7;
import defpackage.im7;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final at7 source;

    public RealResponseBody(String str, long j, at7 at7Var) {
        im7.e(at7Var, "source");
        this.contentTypeString = str;
        this.contentLength = j;
        this.source = at7Var;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public at7 source() {
        return this.source;
    }
}
