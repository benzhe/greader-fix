package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class o21 implements ef0<s21> {
    public final Context a;
    public final bm3 b;
    public final PowerManager c;

    public o21(Context context, bm3 bm3Var) {
        this.a = context;
        this.b = bm3Var;
        this.c = (PowerManager) context.getSystemService("power");
    }

    @Override // defpackage.ef0
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final JSONObject c(s21 s21Var) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        fm3 fm3Var = s21Var.e;
        if (fm3Var == null) {
            jSONObject = new JSONObject();
        } else {
            if (this.b.b == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = fm3Var.a;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.b.d).put("activeViewJSON", this.b.b).put("timestamp", s21Var.c).put("adFormat", this.b.a).put("hashCode", this.b.c).put("isMraid", false).put("isStopped", false).put("isPaused", s21Var.b).put("isNative", this.b.e).put("isScreenOn", this.c.isInteractive()).put("appMuted", zzr.zzla().zzrh()).put("appVolume", zzr.zzla().zzrg()).put("deviceVolume", zzae.zzbj(this.a.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", fm3Var.b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", fm3Var.c.top).put("bottom", fm3Var.c.bottom).put("left", fm3Var.c.left).put("right", fm3Var.c.right)).put("adBox", new JSONObject().put("top", fm3Var.d.top).put("bottom", fm3Var.d.bottom).put("left", fm3Var.d.left).put("right", fm3Var.d.right)).put("globalVisibleBox", new JSONObject().put("top", fm3Var.e.top).put("bottom", fm3Var.e.bottom).put("left", fm3Var.e.left).put("right", fm3Var.e.right)).put("globalVisibleBoxVisible", fm3Var.f).put("localVisibleBox", new JSONObject().put("top", fm3Var.g.top).put("bottom", fm3Var.g.bottom).put("left", fm3Var.g.left).put("right", fm3Var.g.right)).put("localVisibleBoxVisible", fm3Var.h).put("hitBox", new JSONObject().put("top", fm3Var.i.top).put("bottom", fm3Var.i.bottom).put("left", fm3Var.i.left).put("right", fm3Var.i.right)).put("screenDensity", this.a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", s21Var.a);
            if (((Boolean) os3.j.f.a(y40.S0)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = fm3Var.k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(s21Var.d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
