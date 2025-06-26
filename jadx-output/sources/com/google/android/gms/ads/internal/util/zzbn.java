package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import defpackage.bt2;
import defpackage.ct2;
import defpackage.dt2;
import defpackage.is0;
import defpackage.os3;
import defpackage.sk2;
import defpackage.ss2;
import defpackage.y40;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbn {
    public static JSONObject a(Context context, Point point, Point point2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", c(context, point2.x));
            jSONObject.put("y", c(context, point2.y));
            jSONObject.put("start_x", c(context, point.x));
            jSONObject.put("start_y", c(context, point.y));
            return jSONObject;
        } catch (JSONException e) {
            is0.zzc("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    public static JSONObject b(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", c(context, rect.right - rect.left));
        jSONObject.put("height", c(context, rect.bottom - rect.top));
        jSONObject.put("x", c(context, rect.left));
        jSONObject.put("y", c(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    public static int c(Context context, int i) {
        return os3.j.a.j(context, i);
    }

    public static int[] d(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:56|21)|30|55|31|(2:33|(1:38))(2:39|(1:41))|42|(1:(1:45)(1:46))(1:47)) */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x014f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0150, code lost:
    
        defpackage.is0.zzc("Could not log native template signal to JSON", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0133 A[Catch: JSONException -> 0x014f, TRY_LEAVE, TryCatch #4 {JSONException -> 0x014f, blocks: (B:31:0x011a, B:45:0x0142, B:46:0x0146, B:47:0x014b, B:36:0x0129, B:39:0x0133), top: B:55:0x011a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b A[Catch: JSONException -> 0x014f, TRY_LEAVE, TryCatch #4 {JSONException -> 0x014f, blocks: (B:31:0x011a, B:45:0x0142, B:46:0x0146, B:47:0x014b, B:36:0x0129, B:39:0x0133), top: B:55:0x011a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zza(android.content.Context r16, android.view.View r17) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbn.zza(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static WindowManager.LayoutParams zzaaj() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) os3.j.f.a(y40.F4)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zzb(Context context, View view) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzr.zzkv();
            jSONObject.put("can_show_on_lock_screen", zzj.zzq(view));
            com.google.android.gms.ads.internal.zzr.zzkv();
            jSONObject.put("is_keyguard_locked", zzj.zzaw(context));
        } catch (JSONException unused) {
            is0.zzez("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject zzbn(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        com.google.android.gms.ads.internal.zzr.zzkv();
        DisplayMetrics displayMetricsZza = zzj.zza((WindowManager) context.getSystemService("window"));
        try {
            jSONObject.put("width", c(context, displayMetricsZza.widthPixels));
            jSONObject.put("height", c(context, displayMetricsZza.heightPixels));
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean zzdn(int i) {
        if (((Boolean) os3.j.f.a(y40.L1)).booleanValue()) {
            return ((Boolean) os3.j.f.a(y40.M1)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    public static JSONObject zzt(View view) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            if (((Boolean) os3.j.f.a(y40.C4)).booleanValue()) {
                com.google.android.gms.ads.internal.zzr.zzkv();
                jSONObject.put("contained_in_scroll_view", zzj.zzs(view));
            } else {
                com.google.android.gms.ads.internal.zzr.zzkv();
                jSONObject.put("contained_in_scroll_view", zzj.zzr(view) != -1);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject zza(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) throws JSONException {
        String str;
        String str2;
        JSONObject jSONObject;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] iArrD = d(view);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, WeakReference<View>> next = it.next();
                View view2 = next.getValue().get();
                if (view2 != null) {
                    int[] iArrD2 = d(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = it;
                    try {
                        jSONObject4.put("width", c(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", c(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", c(context, iArrD2[0] - iArrD[0]));
                        jSONObject4.put("y", c(context, iArrD2[1] - iArrD[1]));
                        jSONObject4.put(str4, str3);
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = b(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", c(context, iArrD2[0] - iArrD[0]));
                            jSONObject.put("y", c(context, iArrD2[1] - iArrD[1]));
                            jSONObject.put(str4, str3);
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            str = str3;
                            str2 = str4;
                            try {
                                jSONObject3.put("font_size", textView.getTextSize());
                                jSONObject3.put(AtomText.TYPE_TEXT, textView.getText());
                            } catch (JSONException unused) {
                                is0.zzez("Unable to get asset views information");
                                it = it2;
                                str3 = str;
                                str4 = str2;
                            }
                        } else {
                            str = str3;
                            str2 = str4;
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(next.getKey()) && view2.isClickable());
                        jSONObject2.put(next.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                        str = str3;
                        str2 = str4;
                    }
                    it = it2;
                    str3 = str;
                    str4 = str2;
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject zza(String str, Context context, Point point, Point point2) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e) {
            e = e;
        }
        try {
            jSONObject.put("click_point", a(context, point, point2));
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e2) {
            e = e2;
            jSONObject2 = jSONObject;
            is0.zzc("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    public static Point zza(MotionEvent motionEvent, View view) {
        int[] iArrD = d(view);
        return new Point(((int) motionEvent.getRawX()) - iArrD[0], ((int) motionEvent.getRawY()) - iArrD[1]);
    }

    public static boolean zza(Context context, sk2 sk2Var) {
        if (!sk2Var.I) {
            return false;
        }
        if (((Boolean) os3.j.f.a(y40.D4)).booleanValue()) {
            return ((Boolean) os3.j.f.a(y40.G4)).booleanValue();
        }
        String str = (String) os3.j.f.a(y40.E4);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            bt2 bt2Var = new bt2(new dt2(new ss2(';')));
            dt2 dt2Var = bt2Var.b;
            Objects.requireNonNull(dt2Var);
            ct2 ct2Var = new ct2(dt2Var, bt2Var, str);
            while (ct2Var.hasNext()) {
                if (((String) ct2Var.next()).equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }
}
