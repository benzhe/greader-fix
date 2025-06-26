package defpackage;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbh;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fl2 {
    public final List<sk2> a;
    public final wk2 b;
    public final List<el2> c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<sk2>] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public fl2(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException, AssertionError {
        ?? EmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        wk2 wk2Var = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("responses".equals(strNextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(strNextName2)) {
                        EmptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            EmptyList.add(new sk2(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (strNextName2.equals("common")) {
                        wk2Var = new wk2(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (strNextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = null;
                    JSONObject jSONObjectZzc = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if (InetAddressKeys.KEY_NAME.equals(strNextName3)) {
                            strNextString = jsonReader.nextString();
                        } else if ("info".equals(strNextName3)) {
                            jSONObjectZzc = zzbh.zzc(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (strNextString != null) {
                        arrayList.add(new el2(strNextString, jSONObjectZzc));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.c = arrayList;
        this.a = EmptyList;
        this.b = wk2Var == null ? new wk2(new JsonReader(new StringReader("{}"))) : wk2Var;
    }

    public static fl2 a(Reader reader) throws IOException, vk2 {
        try {
            try {
                return new fl2(new JsonReader(reader));
            } finally {
                try {
                    reader.close();
                } catch (IOException unused) {
                }
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new vk2("unable to parse ServerResponse", e);
        }
    }
}
