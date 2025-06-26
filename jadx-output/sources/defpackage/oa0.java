package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.Map;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class oa0 implements kb0<Object> {
    public final ra0 a;

    public oa0(ra0 ra0Var) {
        this.a = ra0Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        if (this.a == null) {
            return;
        }
        String str = map.get(InetAddressKeys.KEY_NAME);
        if (str == null) {
            is0.zzey("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundleZzh = null;
        if (map.containsKey("info")) {
            try {
                bundleZzh = zzbh.zzh(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                is0.zzc("Failed to convert ad metadata to JSON.", e);
            }
        }
        if (bundleZzh == null) {
            is0.zzex("Failed to convert ad metadata to Bundle.");
        } else {
            this.a.d(str, bundleZzh);
        }
    }
}
