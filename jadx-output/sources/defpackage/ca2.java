package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ca2 implements nd2<Bundle> {
    public final double a;
    public final boolean b;

    public ca2(double d, boolean z) {
        this.a = d;
        this.b = z;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundleM1 = c50.m1(bundle2, "device");
        bundle2.putBundle("device", bundleM1);
        Bundle bundle3 = bundleM1.getBundle("battery");
        if (bundle3 == null) {
            bundle3 = new Bundle();
        }
        bundleM1.putBundle("battery", bundle3);
        bundle3.putBoolean("is_charging", this.b);
        bundle3.putDouble("battery_level", this.a);
    }
}
