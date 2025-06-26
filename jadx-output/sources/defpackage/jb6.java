package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class jb6 {
    public final ye5 a;
    public final Executor b;
    public final xb6 c;
    public final xb6 d;
    public final xb6 e;
    public final dc6 f;
    public final fc6 g;
    public final gc6 h;
    public final z96 i;

    public jb6(Context context, pe5 pe5Var, z96 z96Var, ye5 ye5Var, Executor executor, xb6 xb6Var, xb6 xb6Var2, xb6 xb6Var3, dc6 dc6Var, fc6 fc6Var, gc6 gc6Var) {
        this.i = z96Var;
        this.a = ye5Var;
        this.b = executor;
        this.c = xb6Var;
        this.d = xb6Var2;
        this.e = xb6Var3;
        this.f = dc6Var;
        this.g = fc6Var;
        this.h = gc6Var;
    }

    public static jb6 a() {
        pe5 pe5VarB = pe5.b();
        pe5VarB.a();
        return ((rb6) pe5VarB.d.a(rb6.class)).c();
    }

    public static List<Map<String, String>> d(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    public long b(String str) {
        fc6 fc6Var = this.g;
        Long lC = fc6.c(fc6Var.c, str);
        if (lC != null) {
            fc6Var.a(str, fc6.b(fc6Var.c));
            return lC.longValue();
        }
        Long lC2 = fc6.c(fc6Var.d, str);
        if (lC2 != null) {
            return lC2.longValue();
        }
        fc6.e(str, "Long");
        return 0L;
    }

    public String c(String str) {
        fc6 fc6Var = this.g;
        String strD = fc6.d(fc6Var.c, str);
        if (strD != null) {
            fc6Var.a(str, fc6.b(fc6Var.c));
            return strD;
        }
        String strD2 = fc6.d(fc6Var.d, str);
        if (strD2 != null) {
            return strD2;
        }
        fc6.e(str, "String");
        return "";
    }
}
