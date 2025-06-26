package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class wf0 implements xb0 {
    public final xs0<O> a;
    public final /* synthetic */ uf0 b;

    public wf0(uf0 uf0Var, xs0<O> xs0Var) {
        this.b = uf0Var;
        this.a = xs0Var;
    }

    @Override // defpackage.xb0
    public final void a(JSONObject jSONObject) {
        try {
            this.a.a(this.b.a.a(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.a.b(e);
        }
    }

    @Override // defpackage.xb0
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.a.b(new af0());
            } else {
                this.a.b(new af0(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}
