package defpackage;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class xd2 implements nd2<Bundle> {
    public final String a;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;

    public xd2(String str, int i, int i2, int i3, boolean z, int i4) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.a;
        if (!TextUtils.isEmpty(str)) {
            bundle2.putString("carrier", str);
        }
        c50.b2(bundle2, "cnt", Integer.valueOf(this.b), this.b != -2);
        bundle2.putInt("gnt", this.c);
        bundle2.putInt("pt", this.d);
        Bundle bundle3 = bundle2.getBundle("device");
        if (bundle3 == null) {
            bundle3 = new Bundle();
        }
        bundle2.putBundle("device", bundle3);
        Bundle bundle4 = bundle3.getBundle("network");
        if (bundle4 == null) {
            bundle4 = new Bundle();
        }
        bundle3.putBundle("network", bundle4);
        bundle4.putInt("active_network_state", this.f);
        bundle4.putBoolean("active_network_metered", this.e);
    }
}
