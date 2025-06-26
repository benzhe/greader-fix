package defpackage;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class cm5 extends ph5 implements am5 {
    public final String f;

    public cm5(String str, String str2, fl5 fl5Var, String str3) {
        super(str, str2, fl5Var, dl5.POST);
        this.f = str3;
    }

    @Override // defpackage.am5
    public boolean a(vl5 vl5Var, boolean z) {
        if (!z) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        el5 el5VarB = b();
        String str = vl5Var.b;
        el5VarB.d.put("User-Agent", "Crashlytics Android SDK/17.3.0");
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        el5VarB.d.put("X-CRASHLYTICS-API-CLIENT-VERSION", this.f);
        el5VarB.d.put("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        String str2 = vl5Var.a;
        xl5 xl5Var = vl5Var.c;
        if (str2 != null) {
            el5VarB.b("org_id", str2);
        }
        el5VarB.b("report_id", xl5Var.b());
        for (File file : xl5Var.d()) {
            if (file.getName().equals("minidump")) {
                el5VarB.c("minidump_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("metadata")) {
                el5VarB.c("crash_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                el5VarB.c("binary_images_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                el5VarB.c("session_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                el5VarB.c("app_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                el5VarB.c("device_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                el5VarB.c("os_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("user")) {
                el5VarB.c("user_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                el5VarB.c("logs_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("keys")) {
                el5VarB.c("keys_file", file.getName(), "application/octet-stream", file);
            }
        }
        ah5 ah5Var = ah5.a;
        StringBuilder sbZ = jo.z("Sending report to: ");
        sbZ.append(this.a);
        ah5Var.b(sbZ.toString());
        try {
            int i = el5VarB.a().a;
            ah5Var.b("Result was: " + i);
            return c50.A0(i) == 0;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
