package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class gj5 implements hj5 {
    public static final Pattern f = Pattern.compile("[^\\p{Alnum}]");
    public static final String g = Pattern.quote("/");
    public final ij5 a;
    public final Context b;
    public final String c;
    public final z96 d;
    public String e;

    public gj5(Context context, String str, z96 z96Var) {
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.b = context;
        this.c = str;
        this.d = z96Var;
        this.a = new ij5();
    }

    public final synchronized String a(String str, SharedPreferences sharedPreferences) {
        String lowerCase;
        String string = UUID.randomUUID().toString();
        lowerCase = string == null ? null : f.matcher(string).replaceAll("").toLowerCase(Locale.US);
        ah5.a.b("Created new Crashlytics IID: " + lowerCase);
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    public synchronized String b() {
        String str;
        String str2 = this.e;
        if (str2 != null) {
            return str2;
        }
        SharedPreferences sharedPreferencesN = vh5.n(this.b);
        e45<String> e45VarN = this.d.n();
        String string = sharedPreferencesN.getString("firebase.installation.id", null);
        try {
            str = (String) qj5.a(e45VarN);
        } catch (Exception e) {
            if (ah5.a.a(3)) {
                Log.d("FirebaseCrashlytics", "Failed to retrieve installation id", e);
            }
            str = string != null ? string : null;
        }
        if (string != null) {
            if (string.equals(str)) {
                this.e = sharedPreferencesN.getString("crashlytics.installation.id", null);
                ah5.a.b("Found matching FID, using Crashlytics IID: " + this.e);
                if (this.e == null) {
                    this.e = a(str, sharedPreferencesN);
                }
            } else {
                this.e = a(str, sharedPreferencesN);
            }
            return this.e;
        }
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("com.crashlytics.prefs", 0);
        String string2 = sharedPreferences.getString("crashlytics.installation.id", null);
        ah5.a.b("No cached FID; legacy id is " + string2);
        if (string2 == null) {
            this.e = a(str, sharedPreferencesN);
        } else {
            this.e = string2;
            d(string2, str, sharedPreferencesN, sharedPreferences);
        }
        return this.e;
    }

    public String c() {
        String str;
        ij5 ij5Var = this.a;
        Context context = this.b;
        synchronized (ij5Var) {
            if (ij5Var.a == null) {
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName == null) {
                    installerPackageName = "";
                }
                ij5Var.a = installerPackageName;
            }
            str = "".equals(ij5Var.a) ? null : ij5Var.a;
        }
        return str;
    }

    public final synchronized void d(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        ah5.a.b("Migrating legacy Crashlytics IID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
        sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
    }

    public final String e(String str) {
        return str.replaceAll(g, "");
    }
}
