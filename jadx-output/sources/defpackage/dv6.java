package defpackage;

import android.content.Context;
import com.noinnion.android.reader.common.subscription.Feed;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class dv6 extends vm6<String, List<Feed>> {
    public dv6(Context context) {
        super(context);
    }

    @Override // defpackage.vm6
    public List<Feed> c(String str) throws Exception {
        String str2 = str;
        ArrayList arrayList = new ArrayList();
        try {
            return f(str2);
        } catch (Exception e) {
            arrayList.clear();
            e.printStackTrace();
            return arrayList;
        }
    }

    public List<Feed> f(String str) throws JSONException, gw6, IOException {
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(new sy6(new MessageFormat("https://itunes.apple.com/search?media=podcast&term={0}").format(new String[]{n56.u0(str)})).c);
            if (jSONObject.has("results")) {
                JSONArray jSONArray = jSONObject.getJSONArray("results");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    Feed feed = new Feed();
                    if (jSONObject2.has("collectionName")) {
                        feed.title = jSONObject2.getString("collectionName");
                    }
                    if (jSONObject2.has("artworkUrl100")) {
                        feed.image = jSONObject2.getString("artworkUrl100");
                    }
                    if (jSONObject2.has("feedUrl")) {
                        feed.url = jSONObject2.getString("feedUrl");
                    }
                    arrayList.add(feed);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            throw new gw6("data parse error", e);
        }
    }
}
