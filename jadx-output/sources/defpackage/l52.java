package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class l52 {
    public final Map<String, o52> a = new ConcurrentHashMap();
    public final Map<String, Map<String, List<o52>>> b = new ConcurrentHashMap();
    public final Executor c;
    public JSONObject d;

    public l52(Executor executor) {
        this.c = executor;
    }

    public final synchronized void a() {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObject = zzr.zzkz().f().zzzg().g;
        if (jSONObject != null) {
            try {
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("ad_unit_id_settings");
                this.d = jSONObject.optJSONObject("ad_unit_patterns");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i);
                        String strOptString = jSONObject2.optString("ad_unit_id", "");
                        String strOptString2 = jSONObject2.optString("format", "");
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("mediation_config");
                        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i2);
                                ArrayList arrayList2 = new ArrayList();
                                if (jSONObject3 != null) {
                                    JSONObject jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("data");
                                    Bundle bundle = new Bundle();
                                    if (jSONObjectOptJSONObject2 != null) {
                                        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                                        while (itKeys.hasNext()) {
                                            String next = itKeys.next();
                                            bundle.putString(next, jSONObjectOptJSONObject2.optString(next, ""));
                                        }
                                    }
                                    JSONArray jSONArrayOptJSONArray3 = jSONObject3.optJSONArray("rtb_adapters");
                                    if (jSONArrayOptJSONArray3 != null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                                            String strOptString3 = jSONArrayOptJSONArray3.optString(i3, "");
                                            if (!TextUtils.isEmpty(strOptString3)) {
                                                arrayList3.add(strOptString3);
                                            }
                                        }
                                        int size = arrayList3.size();
                                        int i4 = 0;
                                        while (i4 < size) {
                                            Object obj = arrayList3.get(i4);
                                            i4++;
                                            String str = (String) obj;
                                            b(str);
                                            if (this.a.get(str) != null) {
                                                arrayList2.add(new o52(str, strOptString2, bundle));
                                            }
                                        }
                                    }
                                }
                                arrayList.addAll(arrayList2);
                            }
                        }
                        if (!TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString)) {
                            Map<String, List<o52>> concurrentHashMap = this.b.get(strOptString2);
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap<>();
                            }
                            this.b.put(strOptString2, concurrentHashMap);
                            List<o52> arrayList4 = concurrentHashMap.get(strOptString);
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList<>();
                            }
                            arrayList4.addAll(arrayList);
                            concurrentHashMap.put(strOptString, arrayList4);
                        }
                    }
                }
            } catch (JSONException e) {
                zzd.zza("Malformed config loading JSON.", e);
            }
        }
    }

    public final void b(String str) {
        if (TextUtils.isEmpty(str) || this.a.containsKey(str)) {
            return;
        }
        this.a.put(str, new o52(str, "", new Bundle()));
    }
}
