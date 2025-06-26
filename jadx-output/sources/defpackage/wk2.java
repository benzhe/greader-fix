package defpackage;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.util.zzbh;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class wk2 {
    public final List<String> a;
    public final String b;
    public final int c;
    public final String d;
    public final int e;
    public final long f;
    public final boolean g;
    public final tk2 h;

    public wk2(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        List<String> listEmptyList = Collections.emptyList();
        jsonReader.beginObject();
        int iNextInt = 0;
        long jNextLong = 0;
        tk2 tk2Var = null;
        boolean zNextBoolean = false;
        String strNextString = "";
        String strNextString2 = strNextString;
        int iNextInt2 = 0;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("nofill_urls".equals(strNextName)) {
                listEmptyList = zzbh.zza(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString2 = jsonReader.nextString();
            } else if ("is_idless".equals(strNextName)) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                if (((Boolean) os3.j.f.a(y40.S4)).booleanValue() && "public_error".equals(strNextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    tk2Var = new tk2(jsonReader);
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        jsonReader.endObject();
        this.a = listEmptyList;
        this.c = iNextInt;
        this.b = strNextString;
        this.d = strNextString2;
        this.e = iNextInt2;
        this.f = jNextLong;
        this.h = tk2Var;
        this.g = zNextBoolean;
    }
}
