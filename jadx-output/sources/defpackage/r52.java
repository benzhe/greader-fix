package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class r52 extends zi0 {
    public final String e;
    public final vi0 f;
    public xs0<JSONObject> g;
    public final JSONObject h;
    public boolean i;

    public r52(String str, vi0 vi0Var, xs0<JSONObject> xs0Var) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        this.h = jSONObject;
        this.i = false;
        this.g = xs0Var;
        this.e = str;
        this.f = vi0Var;
        try {
            jSONObject.put("adapter_version", vi0Var.O().toString());
            jSONObject.put("sdk_version", vi0Var.M().toString());
            jSONObject.put(InetAddressKeys.KEY_NAME, str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // defpackage.aj0
    public final synchronized void H6(zzvh zzvhVar) throws RemoteException {
        if (this.i) {
            return;
        }
        try {
            this.h.put("signal_error", zzvhVar.f);
        } catch (JSONException unused) {
        }
        this.g.a(this.h);
        this.i = true;
    }

    @Override // defpackage.aj0
    public final synchronized void onFailure(String str) throws RemoteException {
        if (this.i) {
            return;
        }
        try {
            this.h.put("signal_error", str);
        } catch (JSONException unused) {
        }
        this.g.a(this.h);
        this.i = true;
    }

    @Override // defpackage.aj0
    public final synchronized void p5(String str) throws RemoteException {
        if (this.i) {
            return;
        }
        if (str == null) {
            onFailure("Adapter returned null signals");
            return;
        }
        try {
            this.h.put("signals", str);
        } catch (JSONException unused) {
        }
        this.g.a(this.h);
        this.i = true;
    }
}
