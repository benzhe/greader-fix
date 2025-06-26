package defpackage;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a21 implements u11 {
    public final vp0 a;

    public a21(vp0 vp0Var) {
        this.a = vp0Var;
    }

    @Override // defpackage.u11
    public final void a(JSONObject jSONObject) {
        this.a.a.a(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa") ? 1 : 0);
    }
}
