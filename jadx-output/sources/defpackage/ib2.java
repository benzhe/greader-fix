package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ib2 implements nd2<Bundle> {
    public final Bundle a;

    public ib2(Bundle bundle) {
        this.a = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundleM1 = c50.m1(bundle2, "device");
        bundleM1.putBundle("android_mem_info", this.a);
        bundle2.putBundle("device", bundleM1);
    }
}
