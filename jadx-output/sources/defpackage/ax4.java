package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ax4 {
    public final String a;
    public final Bundle b;
    public Bundle c;
    public final /* synthetic */ ex4 d;

    public ax4(ex4 ex4Var) {
        this.d = ex4Var;
        bi.g("default_event_parameters");
        this.a = "default_event_parameters";
        this.b = new Bundle();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099 A[Catch: NumberFormatException | JSONException -> 0x00a1, NumberFormatException | JSONException -> 0x00a1, TRY_LEAVE, TryCatch #1 {NumberFormatException | JSONException -> 0x00a1, blocks: (B:10:0x0027, B:32:0x0071, B:32:0x0071, B:33:0x0081, B:33:0x0081, B:34:0x008d, B:34:0x008d, B:35:0x0099, B:35:0x0099), top: B:49:0x0027, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle a() throws org.json.JSONException {
        /*
            r11 = this;
            android.os.Bundle r0 = r11.c
            if (r0 == 0) goto L6
            goto Lce
        L6:
            ex4 r0 = r11.d
            android.content.SharedPreferences r0 = r0.n()
            java.lang.String r1 = r11.a
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            if (r0 == 0) goto Lc6
            android.os.Bundle r1 = new android.os.Bundle     // Catch: org.json.JSONException -> Lb7
            r1.<init>()     // Catch: org.json.JSONException -> Lb7
            org.json.JSONArray r2 = new org.json.JSONArray     // Catch: org.json.JSONException -> Lb7
            r2.<init>(r0)     // Catch: org.json.JSONException -> Lb7
            r0 = 0
            r3 = 0
        L21:
            int r4 = r2.length()     // Catch: org.json.JSONException -> Lb7
            if (r3 >= r4) goto Lb4
            org.json.JSONObject r4 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = "n"
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> La1
            java.lang.String r6 = "t"
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> La1
            int r7 = r6.hashCode()     // Catch: java.lang.Throwable -> La1
            r8 = 100
            r9 = 2
            r10 = 1
            if (r7 == r8) goto L5e
            r8 = 108(0x6c, float:1.51E-43)
            if (r7 == r8) goto L54
            r8 = 115(0x73, float:1.61E-43)
            if (r7 == r8) goto L4a
            goto L68
        L4a:
            java.lang.String r7 = "s"
            boolean r7 = r6.equals(r7)
            if (r7 == 0) goto L68
            r7 = 0
            goto L69
        L54:
            java.lang.String r7 = "l"
            boolean r7 = r6.equals(r7)
            if (r7 == 0) goto L68
            r7 = 2
            goto L69
        L5e:
            java.lang.String r7 = "d"
            boolean r7 = r6.equals(r7)
            if (r7 == 0) goto L68
            r7 = 1
            goto L69
        L68:
            r7 = -1
        L69:
            java.lang.String r8 = "v"
            if (r7 == 0) goto L99
            if (r7 == r10) goto L8d
            if (r7 == r9) goto L81
            ex4 r4 = r11.d     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            rx4 r4 = r4.a     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            qw4 r4 = r4.a()     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            ow4 r4 = r4.f     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            java.lang.String r5 = "Unrecognized persisted bundle type. Type"
            r4.b(r5, r6)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            goto Lb0
        L81:
            java.lang.String r4 = r4.getString(r8)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            long r6 = java.lang.Long.parseLong(r4)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            r1.putLong(r5, r6)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            goto Lb0
        L8d:
            java.lang.String r4 = r4.getString(r8)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            double r6 = java.lang.Double.parseDouble(r4)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            r1.putDouble(r5, r6)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            goto Lb0
        L99:
            java.lang.String r4 = r4.getString(r8)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            r1.putString(r5, r4)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> La1
            goto Lb0
        La1:
            ex4 r4 = r11.d     // Catch: org.json.JSONException -> Lb7
            rx4 r4 = r4.a     // Catch: org.json.JSONException -> Lb7
            qw4 r4 = r4.a()     // Catch: org.json.JSONException -> Lb7
            ow4 r4 = r4.f     // Catch: org.json.JSONException -> Lb7
            java.lang.String r5 = "Error reading value from SharedPreferences. Value dropped"
            r4.a(r5)     // Catch: org.json.JSONException -> Lb7
        Lb0:
            int r3 = r3 + 1
            goto L21
        Lb4:
            r11.c = r1     // Catch: org.json.JSONException -> Lb7
            goto Lc6
        Lb7:
            ex4 r0 = r11.d
            rx4 r0 = r0.a
            qw4 r0 = r0.a()
            ow4 r0 = r0.f
            java.lang.String r1 = "Error loading bundle from SharedPreferences. Values will be lost"
            r0.a(r1)
        Lc6:
            android.os.Bundle r0 = r11.c
            if (r0 != 0) goto Lce
            android.os.Bundle r0 = r11.b
            r11.c = r0
        Lce:
            android.os.Bundle r0 = r11.c
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ax4.a():android.os.Bundle");
    }

    public final void b(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor editorEdit = this.d.n().edit();
        if (bundle.size() == 0) {
            editorEdit.remove(this.a);
        } else {
            String str = this.a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.d.a.a().f.b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.d.a.a().f.b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            editorEdit.putString(str, jSONArray.toString());
        }
        editorEdit.apply();
        this.c = bundle;
    }
}
