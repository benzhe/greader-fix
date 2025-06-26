package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class vb0 implements kb0<Object> {
    public final Object a = new Object();
    public final Map<String, xb0> b = new HashMap();

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        String strConcat;
        String str = map.get("id");
        String str2 = map.get("fail");
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        if (TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            strConcat = "";
        } else {
            String strValueOf = String.valueOf(str4);
            strConcat = strValueOf.length() != 0 ? "\n".concat(strValueOf) : new String("\n");
        }
        synchronized (this.a) {
            xb0 xb0VarRemove = this.b.remove(str);
            if (xb0VarRemove == null) {
                String strValueOf2 = String.valueOf(str);
                is0.zzez(strValueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(strValueOf2) : new String("Received result for unexpected method invocation: "));
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                String strValueOf3 = String.valueOf(str3);
                String strValueOf4 = String.valueOf(strConcat);
                xb0VarRemove.onFailure(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            } else {
                if (str5 == null) {
                    xb0VarRemove.a(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (zzd.zzyz()) {
                        String strValueOf5 = String.valueOf(jSONObject.toString(2));
                        zzd.zzed(strValueOf5.length() != 0 ? "Result GMSG: ".concat(strValueOf5) : new String("Result GMSG: "));
                    }
                    xb0VarRemove.a(jSONObject);
                } catch (JSONException e) {
                    xb0VarRemove.onFailure(e.getMessage());
                }
            }
        }
    }

    public final void b(String str, xb0 xb0Var) {
        synchronized (this.a) {
            this.b.put(str, xb0Var);
        }
    }
}
