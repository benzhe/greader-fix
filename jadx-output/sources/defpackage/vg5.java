package defpackage;

import android.os.Bundle;
import defpackage.bf5;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class vg5 implements bf5.b {
    public ih5 a;
    public ih5 b;

    @Override // bf5.b
    public void a(int i, Bundle bundle) {
        ah5.a.b("Received Analytics message: " + i + StringUtils.SPACE + bundle);
        String string = bundle.getString(InetAddressKeys.KEY_NAME);
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            ih5 ih5Var = "clx".equals(bundle2.getString("_o")) ? this.a : this.b;
            if (ih5Var == null) {
                return;
            }
            ih5Var.onEvent(string, bundle2);
        }
    }
}
