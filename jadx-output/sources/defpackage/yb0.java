package defpackage;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class yb0 implements xb0 {
    public final /* synthetic */ xs0 a;

    public yb0(xs0 xs0Var) {
        this.a = xs0Var;
    }

    @Override // defpackage.xb0
    public final void a(JSONObject jSONObject) {
        this.a.a(jSONObject);
    }

    @Override // defpackage.xb0
    public final void onFailure(String str) {
        this.a.b(new af0(str));
    }
}
