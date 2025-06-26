package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.ads.internal.util.zzbr;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class u40 implements SharedPreferences.OnSharedPreferenceChangeListener {
    public Context g;
    public final Object a = new Object();
    public final ConditionVariable b = new ConditionVariable();
    public volatile boolean c = false;
    public volatile boolean d = false;
    public SharedPreferences e = null;
    public Bundle f = new Bundle();
    public JSONObject h = new JSONObject();

    public final <T> T a(final o40<T> o40Var) {
        if (!this.b.block(5000L)) {
            synchronized (this.a) {
                if (!this.d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.c || this.e == null) {
            synchronized (this.a) {
                if (this.c && this.e != null) {
                }
                return o40Var.c;
            }
        }
        int i = o40Var.a;
        if (i != 2) {
            return (i == 1 && this.h.has(o40Var.b)) ? o40Var.i(this.h) : (T) zzbr.zza(new gt2(this, o40Var) { // from class: x40
                public final u40 a;
                public final o40 b;

                {
                    this.a = this;
                    this.b = o40Var;
                }

                @Override // defpackage.gt2
                public final Object get() {
                    return this.b.d(this.a.e);
                }
            });
        }
        Bundle bundle = this.f;
        return bundle == null ? o40Var.c : o40Var.e(bundle);
    }

    public final void b() {
        if (this.e == null) {
            return;
        }
        try {
            this.h = new JSONObject((String) zzbr.zza(new gt2(this) { // from class: w40
                public final u40 a;

                {
                    this.a = this;
                }

                @Override // defpackage.gt2
                public final Object get() {
                    return this.a.e.getString("flag_configuration", "{}");
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            b();
        }
    }
}
