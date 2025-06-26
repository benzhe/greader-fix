package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class jm5 implements km5 {
    public final Context a;
    public final um5 b;
    public final lm5 c;
    public final nj5 d;
    public final gm5 e;
    public final ym5 f;
    public final bj5 g;
    public final AtomicReference<sm5> h;
    public final AtomicReference<f45<pm5>> i;

    public class a implements d45<Void, Void> {
        public a() {
        }

        @Override // defpackage.d45
        public e45<Void> a(Void r11) throws Exception {
            JSONObject jSONObjectG;
            FileWriter fileWriter;
            jm5 jm5Var = jm5.this;
            ym5 ym5Var = jm5Var.f;
            um5 um5Var = jm5Var.b;
            xm5 xm5Var = (xm5) ym5Var;
            Objects.requireNonNull(xm5Var);
            FileWriter fileWriter2 = null;
            try {
                Map<String, String> mapF = xm5Var.f(um5Var);
                el5 el5VarC = xm5Var.c(mapF);
                xm5Var.d(el5VarC, um5Var);
                xm5Var.f.b("Requesting settings from " + xm5Var.a);
                xm5Var.f.b("Settings query params were: " + mapF);
                gl5 gl5VarA = el5VarC.a();
                xm5Var.f.b("Settings request ID: " + gl5VarA.c.get("X-REQUEST-ID"));
                jSONObjectG = xm5Var.g(gl5VarA);
            } catch (IOException e) {
                if (xm5Var.f.a(6)) {
                    Log.e("FirebaseCrashlytics", "Settings request failed.", e);
                }
                jSONObjectG = null;
            }
            if (jSONObjectG != null) {
                tm5 tm5VarA = jm5.this.c.a(jSONObjectG);
                gm5 gm5Var = jm5.this.e;
                long j = tm5VarA.d;
                Objects.requireNonNull(gm5Var);
                ah5.a.b("Writing settings to cache file...");
                try {
                    jSONObjectG.put("expires_at", j);
                    fileWriter = new FileWriter(new File(new ol5(gm5Var.a).a(), "com.crashlytics.settings.json"));
                    try {
                        fileWriter.write(jSONObjectG.toString());
                        fileWriter.flush();
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            if (ah5.a.a(6)) {
                                Log.e("FirebaseCrashlytics", "Failed to cache settings", e);
                            }
                            vh5.c(fileWriter, "Failed to close settings writer.");
                            jm5.this.e(jSONObjectG, "Loaded settings: ");
                            jm5 jm5Var2 = jm5.this;
                            String str = jm5Var2.b.f;
                            SharedPreferences.Editor editorEdit = vh5.n(jm5Var2.a).edit();
                            editorEdit.putString("existing_instance_identifier", str);
                            editorEdit.apply();
                            jm5.this.h.set(tm5VarA);
                            jm5.this.i.get().b(tm5VarA.a);
                            f45<pm5> f45Var = new f45<>();
                            f45Var.b(tm5VarA.a);
                            jm5.this.i.set(f45Var);
                            return c50.X(null);
                        } catch (Throwable th) {
                            th = th;
                            fileWriter2 = fileWriter;
                            fileWriter = fileWriter2;
                            vh5.c(fileWriter, "Failed to close settings writer.");
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        vh5.c(fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileWriter = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileWriter = fileWriter2;
                    vh5.c(fileWriter, "Failed to close settings writer.");
                    throw th;
                }
                vh5.c(fileWriter, "Failed to close settings writer.");
                jm5.this.e(jSONObjectG, "Loaded settings: ");
                jm5 jm5Var22 = jm5.this;
                String str2 = jm5Var22.b.f;
                SharedPreferences.Editor editorEdit2 = vh5.n(jm5Var22.a).edit();
                editorEdit2.putString("existing_instance_identifier", str2);
                editorEdit2.apply();
                jm5.this.h.set(tm5VarA);
                jm5.this.i.get().b(tm5VarA.a);
                f45<pm5> f45Var2 = new f45<>();
                f45Var2.b(tm5VarA.a);
                jm5.this.i.set(f45Var2);
            }
            return c50.X(null);
        }
    }

    public jm5(Context context, um5 um5Var, nj5 nj5Var, lm5 lm5Var, gm5 gm5Var, ym5 ym5Var, bj5 bj5Var) {
        AtomicReference<sm5> atomicReference = new AtomicReference<>();
        this.h = atomicReference;
        this.i = new AtomicReference<>(new f45());
        this.a = context;
        this.b = um5Var;
        this.d = nj5Var;
        this.c = lm5Var;
        this.e = gm5Var;
        this.f = ym5Var;
        this.g = bj5Var;
        JSONObject jSONObject = new JSONObject();
        atomicReference.set(new tm5(hm5.b(nj5Var, 3600L, jSONObject), null, new rm5(jSONObject.optInt("max_custom_exception_events", 8), 4), new qm5(jSONObject.optBoolean("collect_reports", true)), 0, 3600));
    }

    public e45<pm5> a() {
        return this.i.get().a;
    }

    public final tm5 b(im5 im5Var) throws Throwable {
        tm5 tm5Var = null;
        try {
        } catch (Exception e) {
            e = e;
        }
        if (!im5.SKIP_CACHE_LOOKUP.equals(im5Var)) {
            JSONObject jSONObjectA = this.e.a();
            if (jSONObjectA != null) {
                tm5 tm5VarA = this.c.a(jSONObjectA);
                if (tm5VarA != null) {
                    e(jSONObjectA, "Loaded cached settings: ");
                    Objects.requireNonNull(this.d);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (im5.IGNORE_CACHE_EXPIRATION.equals(im5Var)) {
                        try {
                            ah5.a.b("Returning cached settings.");
                            tm5Var = tm5VarA;
                        } catch (Exception e2) {
                            e = e2;
                            tm5Var = tm5VarA;
                            if (ah5.a.a(6)) {
                                Log.e("FirebaseCrashlytics", "Failed to get cached settings", e);
                            }
                            return tm5Var;
                        }
                    } else {
                        if (tm5VarA.d < jCurrentTimeMillis) {
                            ah5.a.b("Cached settings have expired.");
                        } else {
                            ah5.a.b("Returning cached settings.");
                            tm5Var = tm5VarA;
                        }
                    }
                    return tm5Var;
                }
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "Failed to parse cached settings data.", null);
                }
            } else {
                ah5.a.b("No cached settings data found.");
            }
        }
        return tm5Var;
    }

    public sm5 c() {
        return this.h.get();
    }

    public e45<Void> d(im5 im5Var, Executor executor) throws Throwable {
        tm5 tm5VarB;
        if (!(!vh5.n(this.a).getString("existing_instance_identifier", "").equals(this.b.f)) && (tm5VarB = b(im5Var)) != null) {
            this.h.set(tm5VarB);
            this.i.get().b(tm5VarB.a);
            return c50.X(null);
        }
        tm5 tm5VarB2 = b(im5.IGNORE_CACHE_EXPIRATION);
        if (tm5VarB2 != null) {
            this.h.set(tm5VarB2);
            this.i.get().b(tm5VarB2.a);
        }
        return this.g.c().q(executor, new a());
    }

    public final void e(JSONObject jSONObject, String str) throws JSONException {
        ah5 ah5Var = ah5.a;
        StringBuilder sbZ = jo.z(str);
        sbZ.append(jSONObject.toString());
        ah5Var.b(sbZ.toString());
    }
}
