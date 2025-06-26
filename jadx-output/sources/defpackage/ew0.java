package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ew0 implements kb0<iu0> {
    public static Integer b(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + str.length() + 39);
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            is0.zzez(sb.toString());
            return null;
        }
    }

    @Override // defpackage.kb0
    public final void a(iu0 iu0Var, Map map) {
        zv0 gw0Var;
        iu0 iu0Var2 = iu0Var;
        if (is0.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String strValueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(strValueOf);
            is0.zzdz(sb.toString());
        }
        zzr.zzlr();
        if (map.containsKey("abort")) {
            if (wv0.d(iu0Var2)) {
                return;
            }
            is0.zzez("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer numB = b(map, "periodicReportIntervalMs");
        Integer numB2 = b(map, "exoPlayerRenderingIntervalMs");
        Integer numB3 = b(map, "exoPlayerIdleIntervalMs");
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    is0.zzez(str2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(str2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (wv0.h(iu0Var2) != null) {
                is0.zzez("Precache task is already running.");
                return;
            }
            if (iu0Var2.m() == null) {
                is0.zzez("Precache requires a dependency provider.");
                return;
            }
            fu0 fu0Var = new fu0((String) map.get("flags"));
            Integer numB4 = b(map, "player");
            if (numB4 == null) {
                numB4 = 0;
            }
            if (numB != null) {
                iu0Var2.r(numB.intValue());
            }
            if (numB2 != null) {
                iu0Var2.z(numB2.intValue());
            }
            if (numB3 != null) {
                iu0Var2.q0(numB3.intValue());
            }
            int iIntValue = numB4.intValue();
            Objects.requireNonNull((qv0) iu0Var2.m().zzbou);
            if (iIntValue > 0) {
                int i2 = cv0.y;
                gw0Var = i2 < fu0Var.g ? new kw0(iu0Var2, fu0Var) : i2 < fu0Var.b ? new lw0(iu0Var2, fu0Var) : new jw0(iu0Var2);
            } else {
                gw0Var = new gw0(iu0Var2);
            }
            new uv0(iu0Var2, gw0Var, str, strArr).zzyx();
        } else {
            uv0 uv0VarH = wv0.h(iu0Var2);
            if (uv0VarH == null) {
                is0.zzez("Precache must specify a source.");
                return;
            }
            gw0Var = uv0VarH.c;
        }
        Integer numB5 = b(map, "minBufferMs");
        if (numB5 != null) {
            gw0Var.m(numB5.intValue());
        }
        Integer numB6 = b(map, "maxBufferMs");
        if (numB6 != null) {
            gw0Var.n(numB6.intValue());
        }
        Integer numB7 = b(map, "bufferForPlaybackMs");
        if (numB7 != null) {
            gw0Var.o(numB7.intValue());
        }
        Integer numB8 = b(map, "bufferForPlaybackAfterRebufferMs");
        if (numB8 != null) {
            gw0Var.p(numB8.intValue());
        }
    }
}
