package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;

@Deprecated
/* loaded from: classes.dex */
public final class AdMobExtras implements NetworkExtras {
    public final Bundle a;

    public AdMobExtras(Bundle bundle) {
        this.a = bundle != null ? new Bundle(bundle) : null;
    }

    public final Bundle getExtras() {
        return this.a;
    }
}
