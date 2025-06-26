package retrofit2.converter.gson;

import defpackage.de6;
import defpackage.eg6;
import defpackage.fg6;
import defpackage.od6;
import defpackage.ud6;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* loaded from: classes2.dex */
public final class GsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private final de6<T> adapter;
    private final od6 gson;

    public GsonResponseBodyConverter(od6 od6Var, de6<T> de6Var) {
        this.gson = od6Var;
        this.adapter = de6Var;
    }

    @Override // retrofit2.Converter
    public T convert(ResponseBody responseBody) throws IOException {
        eg6 eg6VarF = this.gson.f(responseBody.charStream());
        try {
            T tA = this.adapter.a(eg6VarF);
            if (eg6VarF.Q() == fg6.END_DOCUMENT) {
                return tA;
            }
            throw new ud6("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
