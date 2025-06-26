package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzi;
import defpackage.aw2;
import defpackage.is0;
import defpackage.l60;
import defpackage.ms0;
import defpackage.os3;
import defpackage.pr0;
import defpackage.y40;
import defpackage.zm3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzi implements zzf {
    public boolean b;
    public aw2<?> d;
    public SharedPreferences f;
    public SharedPreferences.Editor g;
    public String i;
    public String j;
    public final Object a = new Object();
    public final List<Runnable> c = new ArrayList();
    public zm3 e = null;
    public boolean h = true;
    public boolean k = true;
    public pr0 l = new pr0("", 0);
    public long m = 0;
    public long n = 0;
    public int o = -1;
    public int p = 0;
    public Set<String> q = Collections.emptySet();
    public JSONObject r = new JSONObject();
    public boolean s = true;
    public boolean t = true;
    public String u = null;
    public int v = -1;
    public int w = -1;

    public final void a() throws ExecutionException, InterruptedException, TimeoutException {
        aw2<?> aw2Var = this.d;
        if (aw2Var == null || aw2Var.isDone()) {
            return;
        }
        try {
            this.d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            is0.zzd("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException e2) {
            e = e2;
            is0.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            is0.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            is0.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    public final void b() {
        ms0.a.execute(new Runnable(this) { // from class: tw
            public final zzi e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.e.zzza();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void initialize(final Context context) {
        synchronized (this.a) {
            if (this.f != null) {
                return;
            }
            final String str = "admob";
            this.d = ms0.a.C(new Runnable(this, context, str) { // from class: sw
                public final zzi e;
                public final Context f;

                {
                    this.e = this;
                    this.f = context;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzi zziVar = this.e;
                    Context context2 = this.f;
                    Objects.requireNonNull(zziVar);
                    SharedPreferences sharedPreferences = context2.getSharedPreferences("admob", 0);
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    synchronized (zziVar.a) {
                        zziVar.f = sharedPreferences;
                        zziVar.g = editorEdit;
                        if (Build.VERSION.SDK_INT >= 23) {
                            NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                        }
                        zziVar.h = zziVar.f.getBoolean("use_https", zziVar.h);
                        zziVar.s = zziVar.f.getBoolean("content_url_opted_out", zziVar.s);
                        zziVar.i = zziVar.f.getString("content_url_hashes", zziVar.i);
                        zziVar.k = zziVar.f.getBoolean("gad_idless", zziVar.k);
                        zziVar.t = zziVar.f.getBoolean("content_vertical_opted_out", zziVar.t);
                        zziVar.j = zziVar.f.getString("content_vertical_hashes", zziVar.j);
                        zziVar.p = zziVar.f.getInt("version_code", zziVar.p);
                        zziVar.l = new pr0(zziVar.f.getString("app_settings_json", zziVar.l.e), zziVar.f.getLong("app_settings_last_update_ms", zziVar.l.f));
                        zziVar.m = zziVar.f.getLong("app_last_background_time_ms", zziVar.m);
                        zziVar.o = zziVar.f.getInt("request_in_session_count", zziVar.o);
                        zziVar.n = zziVar.f.getLong("first_ad_req_time_ms", zziVar.n);
                        zziVar.q = zziVar.f.getStringSet("never_pool_slots", zziVar.q);
                        zziVar.u = zziVar.f.getString("display_cutout", zziVar.u);
                        zziVar.v = zziVar.f.getInt("app_measurement_npa", zziVar.v);
                        zziVar.w = zziVar.f.getInt("sd_app_measure_npa", zziVar.w);
                        try {
                            zziVar.r = new JSONObject(zziVar.f.getString("native_advanced_settings", "{}"));
                        } catch (JSONException e) {
                            is0.zzd("Could not convert native advanced settings to json object", e);
                        }
                        zziVar.b();
                    }
                }
            });
            this.b = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zza(String str, String str2, boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            JSONArray jSONArrayOptJSONArray = this.r.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            }
            int length = jSONArrayOptJSONArray.length();
            int i = 0;
            while (true) {
                if (i < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (!str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                        i++;
                    } else if (z && jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    } else {
                        length = i;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzr.zzlc().a());
                jSONArrayOptJSONArray.put(length, jSONObject);
                this.r.put(str, jSONArrayOptJSONArray);
            } catch (JSONException e) {
                is0.zzd("Could not update native advanced settings", e);
            }
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putString("native_advanced_settings", this.r.toString());
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzas(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.s == z) {
                return;
            }
            this.s = z;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzat(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.t == z) {
                return;
            }
            this.t = z;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzau(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (z == this.k) {
                return;
            }
            this.k = z;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzb(Runnable runnable) {
        this.c.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdi(int i) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.p == i) {
                return;
            }
            this.p = i;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdj(int i) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.o == i) {
                return;
            }
            this.o = i;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdk(int i) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.w == i) {
                return;
            }
            this.w = i;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzee(String str) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.i)) {
                    this.i = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("content_url_hashes", str);
                        this.g.apply();
                    }
                    b();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzef(String str) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.j)) {
                    this.j = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("content_vertical_hashes", str);
                        this.g.apply();
                    }
                    b();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzeg(String str) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            long jA = com.google.android.gms.ads.internal.zzr.zzlc().a();
            if (str != null && !str.equals(this.l.e)) {
                this.l = new pr0(str, jA);
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.g.putLong("app_settings_last_update_ms", jA);
                    this.g.apply();
                }
                b();
                Iterator<Runnable> it = this.c.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                return;
            }
            this.l.f = jA;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzeh(String str) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (TextUtils.equals(this.u, str)) {
                return;
            }
            this.u = str;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfa(long j) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.m == j) {
                return;
            }
            this.m = j;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfb(long j) throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            if (this.n == j) {
                return;
            }
            this.n = j;
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final zm3 zzza() {
        if (!this.b) {
            return null;
        }
        if ((zzzb() && zzzd()) || !l60.b.a().booleanValue()) {
            return null;
        }
        synchronized (this.a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.e == null) {
                this.e = new zm3();
            }
            zm3 zm3Var = this.e;
            synchronized (zm3Var.g) {
                if (zm3Var.e) {
                    is0.zzdz("Content hash thread already started, quiting...");
                } else {
                    zm3Var.e = true;
                    zm3Var.start();
                }
            }
            is0.zzey("start fetching content...");
            return this.e;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzb() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        a();
        synchronized (this.a) {
            z = this.s;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzzc() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        a();
        synchronized (this.a) {
            str = this.i;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzd() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        a();
        synchronized (this.a) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzze() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        a();
        synchronized (this.a) {
            str = this.j;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzzf() throws ExecutionException, InterruptedException, TimeoutException {
        int i;
        a();
        synchronized (this.a) {
            i = this.p;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final pr0 zzzg() throws ExecutionException, InterruptedException, TimeoutException {
        pr0 pr0Var;
        a();
        synchronized (this.a) {
            pr0Var = this.l;
        }
        return pr0Var;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzzh() throws ExecutionException, InterruptedException, TimeoutException {
        long j;
        a();
        synchronized (this.a) {
            j = this.m;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzzi() throws ExecutionException, InterruptedException, TimeoutException {
        int i;
        a();
        synchronized (this.a) {
            i = this.o;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzzj() throws ExecutionException, InterruptedException, TimeoutException {
        long j;
        a();
        synchronized (this.a) {
            j = this.n;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final JSONObject zzzk() throws ExecutionException, InterruptedException, TimeoutException {
        JSONObject jSONObject;
        a();
        synchronized (this.a) {
            jSONObject = this.r;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzzl() throws ExecutionException, InterruptedException, TimeoutException {
        a();
        synchronized (this.a) {
            this.r = new JSONObject();
            SharedPreferences.Editor editor = this.g;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.g.apply();
            }
            b();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzzm() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        a();
        synchronized (this.a) {
            str = this.u;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzn() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        if (!((Boolean) os3.j.f.a(y40.l0)).booleanValue()) {
            return false;
        }
        a();
        synchronized (this.a) {
            z = this.k;
        }
        return z;
    }
}
