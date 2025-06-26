package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ic2 implements nd2<Bundle> {
    public final Bundle a;

    public ic2(Bundle bundle) {
        this.a = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
