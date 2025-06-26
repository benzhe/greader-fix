package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class eb2 implements nd2<Bundle> {
    public final Boolean a;

    public eb2(Boolean bool) {
        this.a = bool;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        Boolean bool = this.a;
        if (bool != null) {
            bundle2.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
