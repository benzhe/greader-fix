package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class pm {
    public Context a;
    public SharedPreferences b;

    public pm(Context context) {
        this.a = context;
    }

    public final SharedPreferences a() {
        SharedPreferences sharedPreferences;
        synchronized (pm.class) {
            if (this.b == null) {
                this.b = this.a.getSharedPreferences("androidx.work.util.preferences", 0);
            }
            sharedPreferences = this.b;
        }
        return sharedPreferences;
    }
}
