package retrofit2.converter.gson;

import defpackage.dg6;
import defpackage.od6;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* loaded from: classes2.dex */
public final class GsonConverterFactory extends Converter.Factory {
    private final od6 gson;

    private GsonConverterFactory(od6 od6Var) {
        this.gson = od6Var;
    }

    public static GsonConverterFactory create() {
        return create(new od6());
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.gson, this.gson.d(new dg6(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.gson, this.gson.d(new dg6(type)));
    }

    public static GsonConverterFactory create(od6 od6Var) {
        Objects.requireNonNull(od6Var, "gson == null");
        return new GsonConverterFactory(od6Var);
    }
}
