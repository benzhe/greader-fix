package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class e31 implements cb3<JSONObject> {
    public final mb3<sk2> a;

    public e31(mb3<sk2> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        try {
            return new JSONObject(this.a.get().y);
        } catch (JSONException unused) {
            return null;
        }
    }
}
