package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class wa2 implements nd2<Bundle> {
    public final Bundle a;

    public wa2(Bundle bundle) {
        this.a = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        bundle.putBundle("content_info", this.a);
    }
}
