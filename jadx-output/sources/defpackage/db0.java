package defpackage;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class db0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) {
        JSONObject jSONObjectZ;
        xw0 xw0Var2 = xw0Var;
        j70 j70VarY = xw0Var2.Y();
        if (j70VarY == null || (jSONObjectZ = j70VarY.Z()) == null) {
            xw0Var2.d0("nativeAdViewSignalsReady", new JSONObject());
        } else {
            xw0Var2.d0("nativeAdViewSignalsReady", jSONObjectZ);
        }
    }
}
