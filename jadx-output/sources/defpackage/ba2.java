package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ba2 implements qd2<ca2> {
    public final zv2 a;
    public final Context b;

    public ba2(zv2 zv2Var, Context context) {
        this.a = zv2Var;
        this.b = context;
    }

    @Override // defpackage.qd2
    public final aw2<ca2> a() {
        return this.a.y(new Callable(this) { // from class: ea2
            public final ba2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                double intExtra;
                ba2 ba2Var = this.e;
                Objects.requireNonNull(ba2Var);
                Intent intentRegisterReceiver = ba2Var.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                boolean z = false;
                if (intentRegisterReceiver != null) {
                    int intExtra2 = intentRegisterReceiver.getIntExtra("status", -1);
                    intExtra = intentRegisterReceiver.getIntExtra("level", -1) / intentRegisterReceiver.getIntExtra("scale", -1);
                    if (intExtra2 == 2 || intExtra2 == 5) {
                        z = true;
                    }
                } else {
                    intExtra = -1.0d;
                }
                return new ca2(intExtra, z);
            }
        });
    }
}
