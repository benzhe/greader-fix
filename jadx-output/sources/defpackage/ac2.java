package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ac2 implements nd2<Bundle> {
    public final String a;

    public ac2(String str) {
        this.a = str;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.a;
        if (str != null) {
            bundle2.putString("omid_v", str);
        }
    }
}
