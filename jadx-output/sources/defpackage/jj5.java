package defpackage;

import java.io.File;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class jj5 {
    public final File a;

    static {
        Charset.forName("UTF-8");
    }

    public jj5(File file) {
        this.a = file;
    }

    public static oj5 b(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        oj5 oj5Var = new oj5();
        String strOptString = jSONObject.isNull("userId") ? null : jSONObject.optString("userId", null);
        if (strOptString != null) {
            strOptString = strOptString.trim();
            if (strOptString.length() > 1024) {
                strOptString = strOptString.substring(0, 1024);
            }
        }
        oj5Var.a = strOptString;
        return oj5Var;
    }

    public File a(String str) {
        return new File(this.a, jo.o(str, "user", ".meta"));
    }
}
