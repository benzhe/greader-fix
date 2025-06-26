package com.noinnion.android.reader.common.subscription;

import android.content.Context;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.reader.common.subscription.BundleItem;
import defpackage.n56;
import java.io.IOException;
import java.net.URL;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BundleUtils {
    private static final Comparator<BundleItem> sBundleNameComparator = new Comparator<BundleItem>() { // from class: com.noinnion.android.reader.common.subscription.BundleUtils.1
        private final Collator collator = Collator.getInstance();

        @Override // java.util.Comparator
        public int compare(BundleItem bundleItem, BundleItem bundleItem2) {
            return this.collator.compare(bundleItem.title, bundleItem2.title);
        }
    };

    public static List<BundleItem> parseBundles(Context context, int i) throws JSONException {
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(n56.C(context.getResources().openRawResource(i)));
            if (jSONObject.has("bundles")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("bundles");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(itKeys.next());
                    BundleItem bundleItem = new BundleItem();
                    bundleItem.uid = jSONObject3.getString("id");
                    bundleItem.title = jSONObject3.getString("title");
                    arrayList.add(bundleItem);
                }
                Collections.sort(arrayList, sBundleNameComparator);
            }
        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static List<BundleItem.Subscription> parseSubscription(Context context, int i, String str) throws JSONException, IOException {
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(n56.C(context.getResources().openRawResource(i)));
            if (jSONObject.has("bundles")) {
                JSONArray jSONArray = jSONObject.getJSONObject("bundles").getJSONObject(str).getJSONArray("subscriptions");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    BundleItem.Subscription subscription = new BundleItem.Subscription();
                    subscription.uid = jSONArray.getJSONObject(i2).getString("id");
                    subscription.title = jSONArray.getJSONObject(i2).getString("title");
                    subscription.url = subscription.uid.replaceFirst(RssReaderClient.USER_FEED, "");
                    subscription.image = "https://plus.google.com/_/favicon?domain=" + new URL(subscription.url).getHost();
                    arrayList.add(subscription);
                }
            }
        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
