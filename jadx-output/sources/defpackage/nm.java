package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class nm {
    public final Context a;
    public SharedPreferences b;
    public boolean c;

    public nm(Context context) {
        this.a = context;
    }

    public final void a() {
        if (this.c) {
            return;
        }
        this.b = this.a.getSharedPreferences("androidx.work.util.id", 0);
        this.c = true;
    }

    public final int b(String str) {
        int i = this.b.getInt(str, 0);
        this.b.edit().putInt(str, i != Integer.MAX_VALUE ? i + 1 : 0).apply();
        return i;
    }

    public int c(int i, int i2) {
        synchronized (nm.class) {
            a();
            int iB = b("next_job_scheduler_id");
            if (iB < i || iB > i2) {
                this.b.edit().putInt("next_job_scheduler_id", i + 1).apply();
            } else {
                i = iB;
            }
        }
        return i;
    }
}
