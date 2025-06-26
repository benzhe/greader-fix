package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class bm5 extends ph5 implements am5 {
    public final String f;

    public bm5(String str, String str2, fl5 fl5Var, String str3) {
        super(str, str2, fl5Var, dl5.POST);
        this.f = str3;
    }

    @Override // defpackage.am5
    public boolean a(vl5 vl5Var, boolean z) {
        if (!z) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        el5 el5VarB = b();
        el5VarB.d.put("X-CRASHLYTICS-GOOGLE-APP-ID", vl5Var.b);
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-VERSION", this.f);
        for (Map.Entry<String, String> entry : vl5Var.c.a().entrySet()) {
            el5VarB.d.put(entry.getKey(), entry.getValue());
        }
        xl5 xl5Var = vl5Var.c;
        el5VarB.b("report[identifier]", xl5Var.b());
        if (xl5Var.d().length == 1) {
            ah5 ah5Var = ah5.a;
            StringBuilder sbZ = jo.z("Adding single file ");
            sbZ.append(xl5Var.e());
            sbZ.append(" to report ");
            sbZ.append(xl5Var.b());
            ah5Var.b(sbZ.toString());
            el5VarB.c("report[file]", xl5Var.e(), "application/octet-stream", xl5Var.c());
        } else {
            int i = 0;
            for (File file : xl5Var.d()) {
                ah5 ah5Var2 = ah5.a;
                StringBuilder sbZ2 = jo.z("Adding file ");
                sbZ2.append(file.getName());
                sbZ2.append(" to report ");
                sbZ2.append(xl5Var.b());
                ah5Var2.b(sbZ2.toString());
                el5VarB.c("report[file" + i + "]", file.getName(), "application/octet-stream", file);
                i++;
            }
        }
        ah5 ah5Var3 = ah5.a;
        StringBuilder sbZ3 = jo.z("Sending report to: ");
        sbZ3.append(this.a);
        ah5Var3.b(sbZ3.toString());
        try {
            gl5 gl5VarA = el5VarB.a();
            int i2 = gl5VarA.a;
            ah5Var3.b("Create report request ID: " + gl5VarA.c.get("X-REQUEST-ID"));
            ah5Var3.b("Result was: " + i2);
            return c50.A0(i2) == 0;
        } catch (IOException e) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Create report HTTP request failed.", e);
            }
            throw new RuntimeException(e);
        }
    }
}
