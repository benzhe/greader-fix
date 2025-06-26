package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class sq0 implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final String a;
    public final /* synthetic */ rq0 b;

    public sq0(rq0 rq0Var, String str) {
        this.b = rq0Var;
        this.a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.b) {
            Iterator<vq0> it = this.b.b.iterator();
            while (it.hasNext()) {
                it.next().a(sharedPreferences, this.a, str);
            }
        }
    }
}
