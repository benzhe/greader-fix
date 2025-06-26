package okhttp3;

import defpackage.gm7;
import defpackage.im7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public final class FormBody extends RequestBody {
    private final List<String> encodedNames;
    private final List<String> encodedValues;
    public static final Companion Companion = new Companion(null);
    private static final MediaType CONTENT_TYPE = MediaType.Companion.get(HttpConnection.FORM_URL_ENCODED);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public FormBody(List<String> list, List<String> list2) {
        im7.e(list, "encodedNames");
        im7.e(list2, "encodedValues");
        this.encodedNames = Util.toImmutableList(list);
        this.encodedValues = Util.toImmutableList(list2);
    }

    private final long writeOrCountBytes(zs7 zs7Var, boolean z) throws EOFException {
        xs7 xs7VarH;
        if (z) {
            xs7VarH = new xs7();
        } else {
            im7.c(zs7Var);
            xs7VarH = zs7Var.h();
        }
        int size = this.encodedNames.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                xs7VarH.Q(38);
            }
            xs7VarH.k0(this.encodedNames.get(i));
            xs7VarH.Q(61);
            xs7VarH.k0(this.encodedValues.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = xs7VarH.f;
        xs7VarH.skip(j);
        return j;
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m44deprecated_size() {
        return size();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final String encodedName(int i) {
        return this.encodedNames.get(i);
    }

    public final String encodedValue(int i) {
        return this.encodedValues.get(i);
    }

    public final String name(int i) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedName(i), 0, 0, true, 3, null);
    }

    public final int size() {
        return this.encodedNames.size();
    }

    public final String value(int i) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedValue(i), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(zs7 zs7Var) throws IOException {
        im7.e(zs7Var, "sink");
        writeOrCountBytes(zs7Var, false);
    }

    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Builder(Charset charset) {
            this.charset = charset;
            this.names = new ArrayList();
            this.values = new ArrayList();
        }

        public final Builder add(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            return this;
        }

        public final Builder addEncoded(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            return this;
        }

        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }

        public /* synthetic */ Builder(Charset charset, int i, gm7 gm7Var) {
            this((i & 1) != 0 ? null : charset);
        }
    }
}
