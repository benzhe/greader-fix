package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class rp0 implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final Context a;
    public final SharedPreferences b;
    public final zzf c;
    public final cq0 d;
    public String e = "";

    public rp0(Context context, zzf zzfVar, cq0 cq0Var) {
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.c = zzfVar;
        this.a = context;
        this.d = cq0Var;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if ("IABTCF_PurposeConsents".equals(str)) {
            String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
            if (string.isEmpty() || this.e.equals(string)) {
                return;
            }
            this.e = string;
            boolean z = string.charAt(0) != '1';
            if (((Boolean) os3.j.f.a(y40.l0)).booleanValue()) {
                this.c.zzau(z);
                if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && z && (context = this.a) != null) {
                    context.deleteDatabase("OfflineUpload.db");
                }
            }
            if (((Boolean) os3.j.f.a(y40.h0)).booleanValue()) {
                synchronized (this.d.l) {
                }
            }
        }
    }
}
