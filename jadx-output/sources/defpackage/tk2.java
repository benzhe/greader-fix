package defpackage;

import android.util.JsonReader;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.io.IOException;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class tk2 {
    public String a;

    public tk2(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals(NSRSS20.DESCR)) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals("code")) {
                jsonReader.nextInt();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.a = strNextString;
    }
}
