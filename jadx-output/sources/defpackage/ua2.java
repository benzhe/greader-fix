package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ua2 implements nd2<Bundle> {
    public final String a;
    public final String b;
    public final Bundle c;

    public ua2(String str, String str2, Bundle bundle, va2 va2Var) {
        this.a = str;
        this.b = str2;
        this.c = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.a);
        bundle2.putString("fc_consent", this.b);
        bundle2.putBundle("iab_consent_info", this.c);
    }
}
