package defpackage;

import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zi1 implements cb3<JSONObject> {
    public final xi1 a;

    public zi1(xi1 xi1Var) {
        this.a = xi1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        JSONObject jSONObject = this.a.a;
        Objects.requireNonNull(jSONObject, "Cannot return null from a non-@Nullable @Provides method");
        return jSONObject;
    }
}
