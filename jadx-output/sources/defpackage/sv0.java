package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbcb;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class sv0 implements kb0<iu0> {
    public boolean a;

    public static int b(Context context, Map<String, String> map, String str, int i) throws NumberFormatException {
        String str2 = map.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            zr0 zr0Var = os3.j.a;
            return zr0.a(context.getResources().getDisplayMetrics(), Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(str2.length() + str.length() + 34);
            sb.append("Could not parse ");
            sb.append(str);
            sb.append(" in a video GMSG: ");
            sb.append(str2);
            is0.zzez(sb.toString());
            return i;
        }
    }

    public static void c(zzbcb zzbcbVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbcbVar.j.q(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                is0.zzez(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbcbVar.j.r(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbcbVar.j.s(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbcbVar.j.t(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbcbVar.j.u(Integer.parseInt(str5));
        }
    }

    @Override // defpackage.kb0
    public final void a(iu0 iu0Var, Map map) throws NumberFormatException {
        int i;
        boolean z;
        int i2;
        iu0 iu0Var2 = iu0Var;
        String str = (String) map.get("action");
        if (str == null) {
            is0.zzez("Action missing from video GMSG.");
            return;
        }
        if (is0.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String string = jSONObject.toString();
            StringBuilder sb = new StringBuilder(jo.x(string, str.length() + 13));
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(StringUtils.SPACE);
            sb.append(string);
            is0.zzdz(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                is0.zzez("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                iu0Var2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                is0.zzez("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                is0.zzez("No MIME types specified for decoder properties inspection.");
                int i3 = zzbcb.v;
                iu0Var2.x("onVideoEvent", jo.E("event", "decoderProps", "error", "missingMimeTypes"));
                return;
            }
            HashMap map2 = new HashMap();
            for (String str4 : str3.split(",")) {
                map2.put(str4, zzbx.zzer(str4.trim()));
            }
            int i4 = zzbcb.v;
            HashMap map3 = new HashMap();
            map3.put("event", "decoderProps");
            map3.put("mimeTypes", map2);
            iu0Var2.x("onVideoEvent", map3);
            return;
        }
        xt0 xt0VarA = iu0Var2.A();
        if (xt0VarA == null) {
            is0.zzez("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = "new".equals(str);
        boolean zEquals2 = "position".equals(str);
        if (zEquals || zEquals2) {
            Context context = iu0Var2.getContext();
            int iB = b(context, map, "x", 0);
            int iB2 = b(context, map, "y", 0);
            int iB3 = b(context, map, "w", -1);
            int iB4 = b(context, map, "h", -1);
            int iMin = Math.min(iB3, iu0Var2.D0() - iB);
            int iMin2 = Math.min(iB4, iu0Var2.s0() - iB2);
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused2) {
                i = 0;
            }
            boolean z2 = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || xt0VarA.a() != null) {
                bi.f("The underlay may only be modified from the UI thread.");
                zzbcb zzbcbVar = xt0VarA.d;
                if (zzbcbVar != null) {
                    zzbcbVar.g(iB, iB2, iMin, iMin2);
                    return;
                }
                return;
            }
            fu0 fu0Var = new fu0((String) map.get("flags"));
            if (xt0VarA.d == null) {
                c50.w2(xt0VarA.b.i().b, xt0VarA.b.U(), "vpr2");
                Context context2 = xt0VarA.a;
                iu0 iu0Var3 = xt0VarA.b;
                zzbcb zzbcbVar2 = new zzbcb(context2, iu0Var3, i, z2, iu0Var3.i().b, fu0Var);
                xt0VarA.d = zzbcbVar2;
                xt0VarA.c.addView(zzbcbVar2, 0, new ViewGroup.LayoutParams(-1, -1));
                xt0VarA.d.g(iB, iB2, iMin, iMin2);
                xt0VarA.b.l0(false);
            }
            zzbcb zzbcbVarA = xt0VarA.a();
            if (zzbcbVarA != null) {
                c(zzbcbVarA, map);
                return;
            }
            return;
        }
        rx0 rx0VarF = iu0Var2.f();
        if (rx0VarF != null) {
            if ("timeupdate".equals(str)) {
                String str5 = (String) map.get("currentTime");
                if (str5 == null) {
                    is0.zzez("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    float f = Float.parseFloat(str5);
                    synchronized (rx0VarF.f) {
                        rx0VarF.n = f;
                    }
                    return;
                } catch (NumberFormatException unused3) {
                    is0.zzez(str5.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str5) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                    return;
                }
            }
            if ("skip".equals(str)) {
                synchronized (rx0VarF.f) {
                    z = rx0VarF.l;
                    i2 = rx0VarF.i;
                    rx0VarF.i = 3;
                }
                rx0VarF.Y6(i2, 3, z, z);
                return;
            }
        }
        zzbcb zzbcbVarA2 = xt0VarA.a();
        if (zzbcbVarA2 == null) {
            int i5 = zzbcb.v;
            HashMap map4 = new HashMap();
            map4.put("event", "no_video_view");
            iu0Var2.x("onVideoEvent", map4);
            return;
        }
        if ("click".equals(str)) {
            Context context3 = iu0Var2.getContext();
            int iB5 = b(context3, map, "x", 0);
            int iB6 = b(context3, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iB5, iB6, 0);
            zzbbz zzbbzVar = zzbcbVarA2.j;
            if (zzbbzVar != null) {
                zzbbzVar.dispatchTouchEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str6 = (String) map.get("time");
            if (str6 == null) {
                is0.zzez("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                int i6 = (int) (Float.parseFloat(str6) * 1000.0f);
                zzbbz zzbbzVar2 = zzbcbVarA2.j;
                if (zzbbzVar2 == null) {
                    return;
                }
                zzbbzVar2.h(i6);
                return;
            } catch (NumberFormatException unused4) {
                is0.zzez(str6.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(str6) : new String("Could not parse time parameter from currentTime video GMSG: "));
                return;
            }
        }
        if ("hide".equals(str)) {
            zzbcbVarA2.setVisibility(4);
            return;
        }
        if ("load".equals(str)) {
            if (zzbcbVarA2.j == null) {
                return;
            }
            if (TextUtils.isEmpty(zzbcbVarA2.q)) {
                zzbcbVarA2.h("no_src", new String[0]);
                return;
            } else {
                zzbcbVarA2.j.p(zzbcbVarA2.q, zzbcbVarA2.r);
                return;
            }
        }
        if ("loadControl".equals(str)) {
            c(zzbcbVarA2, map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzbbz zzbbzVar3 = zzbcbVarA2.j;
                if (zzbbzVar3 == null) {
                    return;
                }
                ju0 ju0Var = zzbbzVar3.f;
                ju0Var.e = true;
                ju0Var.b();
                zzbbzVar3.a();
                return;
            }
            zzbbz zzbbzVar4 = zzbcbVarA2.j;
            if (zzbbzVar4 == null) {
                return;
            }
            ju0 ju0Var2 = zzbbzVar4.f;
            ju0Var2.e = false;
            ju0Var2.b();
            zzbbzVar4.a();
            return;
        }
        if ("pause".equals(str)) {
            zzbbz zzbbzVar5 = zzbcbVarA2.j;
            if (zzbbzVar5 == null) {
                return;
            }
            zzbbzVar5.e();
            return;
        }
        if ("play".equals(str)) {
            zzbbz zzbbzVar6 = zzbcbVarA2.j;
            if (zzbbzVar6 == null) {
                return;
            }
            zzbbzVar6.f();
            return;
        }
        if ("show".equals(str)) {
            zzbcbVarA2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            String str7 = (String) map.get("src");
            Integer numValueOf = null;
            if (map.containsKey("periodicReportIntervalMs")) {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                } catch (NumberFormatException unused5) {
                    String str8 = (String) map.get("periodicReportIntervalMs");
                    StringBuilder sb2 = new StringBuilder(jo.x(str8, 65));
                    sb2.append("Video gmsg invalid numeric parameter '");
                    sb2.append("periodicReportIntervalMs");
                    sb2.append("': ");
                    sb2.append(str8);
                    is0.zzez(sb2.toString());
                }
            }
            String[] strArr = {str7};
            String str9 = (String) map.get("demuxed");
            if (str9 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str9);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i7 = 0; i7 < jSONArray.length(); i7++) {
                        strArr2[i7] = jSONArray.getString(i7);
                    }
                    strArr = strArr2;
                } catch (JSONException unused6) {
                    is0.zzez(str9.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(str9) : new String("Malformed demuxed URL list for playback: "));
                    strArr = new String[]{str7};
                }
            }
            if (numValueOf != null) {
                iu0Var2.r(numValueOf.intValue());
            }
            zzbcbVarA2.q = str7;
            zzbcbVarA2.r = strArr;
            return;
        }
        if ("touchMove".equals(str)) {
            Context context4 = iu0Var2.getContext();
            int iB7 = b(context4, map, "dx", 0);
            int iB8 = b(context4, map, "dy", 0);
            float f2 = iB7;
            float f3 = iB8;
            zzbbz zzbbzVar7 = zzbcbVarA2.j;
            if (zzbbzVar7 != null) {
                zzbbzVar7.k(f2, f3);
            }
            if (this.a) {
                return;
            }
            iu0Var2.Q();
            this.a = true;
            return;
        }
        if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                zzbcbVarA2.d();
                return;
            } else {
                is0.zzez(str.length() != 0 ? "Unknown video action: ".concat(str) : new String("Unknown video action: "));
                return;
            }
        }
        String str10 = (String) map.get("volume");
        if (str10 == null) {
            is0.zzez("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zzbcbVarA2.setVolume(Float.parseFloat(str10));
        } catch (NumberFormatException unused7) {
            is0.zzez(str10.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(str10) : new String("Could not parse volume parameter from volume video GMSG: "));
        }
    }
}
