package defpackage;

import defpackage.ja6;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import okhttp3.internal.http2.Http2;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class la6 {
    public final File a;
    public final pe5 b;

    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public la6(pe5 pe5Var) {
        pe5Var.a();
        File filesDir = pe5Var.a.getFilesDir();
        StringBuilder sbZ = jo.z("PersistedInstallation.");
        sbZ.append(pe5Var.c());
        sbZ.append(".json");
        this.a = new File(filesDir, sbZ.toString());
        this.b = pe5Var;
    }

    public ma6 a(ma6 ma6Var) throws JSONException, IOException {
        File fileCreateTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", ma6Var.c());
            jSONObject.put("Status", ma6Var.f().ordinal());
            jSONObject.put("AuthToken", ma6Var.a());
            jSONObject.put("RefreshToken", ma6Var.e());
            jSONObject.put("TokenCreationEpochInSecs", ma6Var.g());
            jSONObject.put("ExpiresInSecs", ma6Var.b());
            jSONObject.put("FisError", ma6Var.d());
            pe5 pe5Var = this.b;
            pe5Var.a();
            fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", pe5Var.a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (fileCreateTempFile.renameTo(this.a)) {
            return ma6Var;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    public ma6 b() throws IOException {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.a);
            while (true) {
                try {
                    int i = fileInputStream.read(bArr, 0, Http2.INITIAL_MAX_FRAME_SIZE);
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused2) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        a aVar = a.ATTEMPT_MIGRATION;
        int iOptInt = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i2 = ma6.a;
        ja6.b bVar = new ja6.b();
        bVar.d(0L);
        bVar.b(aVar);
        bVar.c(0L);
        bVar.a = strOptString;
        bVar.b(a.values()[iOptInt]);
        bVar.c = strOptString2;
        bVar.d = strOptString3;
        bVar.d(jOptLong);
        bVar.c(jOptLong2);
        bVar.g = strOptString4;
        return bVar.a();
    }
}
