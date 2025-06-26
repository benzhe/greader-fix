package defpackage;

import okhttp3.Call;
import okhttp3.OkHttpClient;

/* loaded from: classes2.dex */
public final class d27 implements u17 {
    public final Call.Factory a;

    public d27(OkHttpClient okHttpClient) {
        this.a = okHttpClient;
        okHttpClient.cache();
    }
}
