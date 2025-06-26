package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class rq0 {
    public final Map<String, sq0> a = new HashMap();
    public final List<vq0> b = new ArrayList();
    public final Context c;
    public final vp0 d;

    public rq0(Context context, vp0 vp0Var) {
        this.c = context;
        this.d = vp0Var;
    }

    public final synchronized void a(String str) {
        if (this.a.containsKey(str)) {
            return;
        }
        SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.c) : this.c.getSharedPreferences(str, 0);
        sq0 sq0Var = new sq0(this, str);
        this.a.put(str, sq0Var);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sq0Var);
    }
}
