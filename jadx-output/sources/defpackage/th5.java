package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public class th5 {
    public final Float a;
    public final boolean b;

    public th5(Float f, boolean z) {
        this.b = z;
        this.a = f;
    }

    public static th5 a(Context context) {
        Float fValueOf = null;
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (intentRegisterReceiver != null) {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            if (intExtra != -1 && (intExtra == 2 || intExtra == 5)) {
                z = true;
            }
            int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
            int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra2 != -1 && intExtra3 != -1) {
                fValueOf = Float.valueOf(intExtra2 / intExtra3);
            }
        }
        return new th5(fValueOf, z);
    }

    public int b() {
        Float f;
        if (!this.b || (f = this.a) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }
}
