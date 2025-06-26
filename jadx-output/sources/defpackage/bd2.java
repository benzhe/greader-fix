package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class bd2 implements nd2<Bundle> {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final int e;
    public final int f;
    public final int g;

    public bd2(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = z3;
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) os3.j.f.a(y40.Q1));
        bundle2.putInt("target_api", this.e);
        bundle2.putInt("dv", this.f);
        bundle2.putInt("lv", this.g);
        Bundle bundle3 = bundle2.getBundle("sdk_env");
        if (bundle3 == null) {
            bundle3 = new Bundle();
        }
        bundle3.putBoolean("mf", r60.a.a().booleanValue());
        bundle3.putBoolean("instant_app", this.a);
        bundle3.putBoolean("lite", this.b);
        bundle3.putBoolean("is_privileged_process", this.d);
        bundle2.putBundle("sdk_env", bundle3);
        Bundle bundle4 = bundle3.getBundle("build_meta");
        if (bundle4 == null) {
            bundle4 = new Bundle();
        }
        bundle4.putString("cl", "360757573");
        bundle4.putString("rapid_rc", "dev");
        bundle4.putString("rapid_rollup", "HEAD");
        bundle3.putBundle("build_meta", bundle4);
    }
}
