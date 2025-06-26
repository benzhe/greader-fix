package defpackage;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class xm5 extends ph5 implements ym5 {
    public ah5 f;

    /* JADX WARN: Illegal instructions before constructor call */
    public xm5(String str, String str2, fl5 fl5Var) {
        dl5 dl5Var = dl5.GET;
        ah5 ah5Var = ah5.a;
        super(str, str2, fl5Var, dl5Var);
        this.f = ah5Var;
    }

    public final el5 d(el5 el5Var, um5 um5Var) {
        e(el5Var, "X-CRASHLYTICS-GOOGLE-APP-ID", um5Var.a);
        e(el5Var, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        e(el5Var, "X-CRASHLYTICS-API-CLIENT-VERSION", "17.3.0");
        e(el5Var, "Accept", "application/json");
        e(el5Var, "X-CRASHLYTICS-DEVICE-MODEL", um5Var.b);
        e(el5Var, "X-CRASHLYTICS-OS-BUILD-VERSION", um5Var.c);
        e(el5Var, "X-CRASHLYTICS-OS-DISPLAY-VERSION", um5Var.d);
        e(el5Var, "X-CRASHLYTICS-INSTALLATION-ID", ((gj5) um5Var.e).b());
        return el5Var;
    }

    public final void e(el5 el5Var, String str, String str2) {
        if (str2 != null) {
            el5Var.d.put(str, str2);
        }
    }

    public final Map<String, String> f(um5 um5Var) {
        HashMap map = new HashMap();
        map.put("build_version", um5Var.h);
        map.put("display_version", um5Var.g);
        map.put("source", Integer.toString(um5Var.i));
        String str = um5Var.f;
        if (!vh5.r(str)) {
            map.put("instance", str);
        }
        return map;
    }

    public JSONObject g(gl5 gl5Var) {
        int i = gl5Var.a;
        this.f.b("Settings result was: " + i);
        if (!(i == 200 || i == 201 || i == 202 || i == 203)) {
            ah5 ah5Var = this.f;
            StringBuilder sbZ = jo.z("Failed to retrieve settings from ");
            sbZ.append(this.a);
            ah5Var.d(sbZ.toString());
            return null;
        }
        String str = gl5Var.b;
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            ah5 ah5Var2 = this.f;
            StringBuilder sbZ2 = jo.z("Failed to parse settings JSON from ");
            sbZ2.append(this.a);
            ah5Var2.c(sbZ2.toString(), e);
            jo.G("Settings response ", str, this.f);
            return null;
        }
    }
}
