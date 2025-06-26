package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class c92 implements nd2<Bundle> {
    public final Bundle a;

    public c92(Bundle bundle, f92 f92Var) {
        this.a = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.a.isEmpty()) {
            return;
        }
        bundle2.putBundle("installed_adapter_data", this.a);
    }
}
