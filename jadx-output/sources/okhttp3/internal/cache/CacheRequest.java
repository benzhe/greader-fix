package okhttp3.internal.cache;

import defpackage.tt7;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    tt7 body() throws IOException;
}
