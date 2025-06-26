package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class oc2 implements nd2<Bundle> {
    public final String a;

    public oc2(String str) {
        this.a = str;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        bundle.putString("rtb", this.a);
    }
}
