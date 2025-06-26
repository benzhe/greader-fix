package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class zzs extends zze {
    public zzs(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zze, defpackage.xk0
    public final void onCreate(Bundle bundle) {
        zzd.zzed("AdOverlayParcel is null or does not contain valid overlay type.");
        this.q = zzl.OTHER;
        this.e.finish();
    }
}
