package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class gm5 {
    public final Context a;

    public gm5(Context context) {
        this.a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public JSONObject a() throws Throwable {
        Exception e;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        ah5 ah5Var = ah5.a;
        ah5Var.b("Reading cached settings...");
        ?? r2 = 0;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(new ol5(this.a).a(), "com.crashlytics.settings.json");
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        jSONObject = new JSONObject(vh5.u(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e2) {
                        e = e2;
                        if (ah5.a.a(6)) {
                            Log.e("FirebaseCrashlytics", "Failed to fetch cached settings", e);
                        }
                        vh5.c(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    ah5Var.b("No cached settings found.");
                    jSONObject = null;
                }
                vh5.c(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th) {
                r2 = ah5Var;
                th = th;
                vh5.c(r2, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            vh5.c(r2, "Error while closing settings cache file.");
            throw th;
        }
    }
}
