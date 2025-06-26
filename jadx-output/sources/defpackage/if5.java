package defpackage;

import android.os.Bundle;
import defpackage.xr4;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class if5 implements xr4.a {
    public final /* synthetic */ jf5 a;

    public if5(jf5 jf5Var) {
        this.a = jf5Var;
    }

    @Override // defpackage.ry4
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (str == null || str.equals("crash") || !(!ff5.a.contains(str2))) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(InetAddressKeys.KEY_NAME, str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        this.a.a.a(3, bundle2);
    }
}
