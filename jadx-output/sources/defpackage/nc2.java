package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class nc2 implements nd2<Bundle> {
    public String a;
    public final String b;

    public nc2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) os3.j.f.a(y40.s4)).booleanValue()) {
            bundle2.putString("request_id", this.b);
        } else {
            bundle2.putString("request_id", this.a);
        }
    }
}
