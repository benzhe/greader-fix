package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class yj0 {
    public final xw0 a;
    public final String b;

    public yj0(xw0 xw0Var) {
        this.a = xw0Var;
        this.b = "";
    }

    public final void b(int i, int i2, int i3, int i4, float f, int i5) throws JSONException {
        try {
            this.a.d0("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            is0.zzc("Error occurred while obtaining screen information.", e);
        }
    }

    public final void c(int i, int i2, int i3, int i4) throws JSONException {
        try {
            this.a.d0("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            is0.zzc("Error occurred while dispatching size change.", e);
        }
    }

    public final void d(String str) throws JSONException {
        try {
            JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", this.b);
            xw0 xw0Var = this.a;
            if (xw0Var != null) {
                xw0Var.d0("onError", jSONObjectPut);
            }
        } catch (JSONException e) {
            is0.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void e(String str) throws JSONException {
        try {
            this.a.d0("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            is0.zzc("Error occurred while dispatching state change.", e);
        }
    }

    public yj0(xw0 xw0Var, String str) {
        this.a = xw0Var;
        this.b = str;
    }
}
