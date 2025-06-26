package defpackage;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbh;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class i82 {
    public final String a;
    public String b;
    public Bundle c = new Bundle();

    public i82(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        Map<String, String> map = new HashMap<>();
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName = strNextName == null ? "" : strNextName;
            if (strNextName.equals("params")) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals("signal_dictionary")) {
                map = zzbh.zzb(jsonReader);
            } else {
                jsonReader.skipValue();
            }
        }
        this.a = strNextString;
        jsonReader.endObject();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.c.putString(entry.getKey(), entry.getValue());
            }
        }
    }
}
