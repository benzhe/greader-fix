package retrofit2.converter.gson;

import defpackage.de6;
import defpackage.gg6;
import defpackage.od6;
import defpackage.xs7;
import defpackage.ys7;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* loaded from: classes2.dex */
public final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final de6<T> adapter;
    private final od6 gson;

    public GsonRequestBodyConverter(od6 od6Var, de6<T> de6Var) {
        this.gson = od6Var;
        this.adapter = de6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) throws IOException {
        return convert((GsonRequestBodyConverter<T>) obj);
    }

    @Override // retrofit2.Converter
    public RequestBody convert(T t) throws IOException {
        xs7 xs7Var = new xs7();
        gg6 gg6VarG = this.gson.g(new OutputStreamWriter(new ys7(xs7Var), UTF_8));
        this.adapter.b(gg6VarG, t);
        gg6VarG.close();
        return RequestBody.create(MEDIA_TYPE, xs7Var.e0());
    }
}
