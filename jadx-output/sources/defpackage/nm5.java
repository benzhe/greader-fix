package defpackage;

import java.util.Locale;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class nm5 implements mm5 {
    @Override // defpackage.mm5
    public tm5 a(nj5 nj5Var, JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("fabric");
        JSONObject jSONObject3 = jSONObject.getJSONObject("app");
        String string = jSONObject3.getString("status");
        boolean zEquals = "new".equals(string);
        String string2 = jSONObject2.getString("bundle_id");
        String string3 = jSONObject2.getString("org_id");
        String str = zEquals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        Locale locale = Locale.US;
        pm5 pm5Var = new pm5(string, str, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject3.optBoolean("update_required", false), jSONObject3.optInt("report_upload_variant", 0), jSONObject3.optInt("native_report_upload_variant", 0));
        rm5 rm5Var = new rm5(8, 4);
        qm5 qm5Var = new qm5(jSONObject.getJSONObject("features").optBoolean("collect_reports", true));
        long j = iOptInt2;
        if (jSONObject.has("expires_at")) {
            jCurrentTimeMillis = jSONObject.optLong("expires_at");
        } else {
            Objects.requireNonNull(nj5Var);
            jCurrentTimeMillis = (j * 1000) + System.currentTimeMillis();
        }
        return new tm5(jCurrentTimeMillis, pm5Var, rm5Var, qm5Var, iOptInt, iOptInt2);
    }
}
