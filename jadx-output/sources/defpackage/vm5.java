package defpackage;

import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class vm5 extends ph5 {
    public final String f;

    public vm5(String str, String str2, fl5 fl5Var, dl5 dl5Var, String str3) {
        super(str, str2, fl5Var, dl5Var);
        this.f = str3;
    }

    public boolean d(om5 om5Var, boolean z) {
        if (!z) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        el5 el5VarB = b();
        el5VarB.d.put("X-CRASHLYTICS-ORG-ID", om5Var.a);
        el5VarB.d.put("X-CRASHLYTICS-GOOGLE-APP-ID", om5Var.b);
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-VERSION", this.f);
        el5VarB.b("org_id", om5Var.a);
        el5VarB.b("app[identifier]", om5Var.c);
        el5VarB.b("app[name]", om5Var.g);
        el5VarB.b("app[display_version]", om5Var.d);
        el5VarB.b("app[build_version]", om5Var.e);
        el5VarB.b("app[source]", Integer.toString(om5Var.h));
        el5VarB.b("app[minimum_sdk_version]", om5Var.i);
        el5VarB.b("app[built_sdk_version]", "0");
        if (!vh5.r(om5Var.f)) {
            el5VarB.b("app[instance_identifier]", om5Var.f);
        }
        ah5 ah5Var = ah5.a;
        StringBuilder sbZ = jo.z("Sending app info to ");
        sbZ.append(this.a);
        ah5Var.b(sbZ.toString());
        try {
            gl5 gl5VarA = el5VarB.a();
            int i = gl5VarA.a;
            ah5Var.b(("POST".equalsIgnoreCase(el5VarB.a.name()) ? "Create" : "Update") + " app request ID: " + gl5VarA.c.get("X-REQUEST-ID"));
            StringBuilder sb = new StringBuilder();
            sb.append("Result was ");
            sb.append(i);
            ah5Var.b(sb.toString());
            return c50.A0(i) == 0;
        } catch (IOException e) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "HTTP request failed.", e);
            }
            throw new RuntimeException(e);
        }
    }
}
