package defpackage;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;

/* loaded from: classes.dex */
public class x16 implements Interceptor {
    public x16(y16 y16Var) {
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader("Accept", "image/*").build());
    }
}
