package defpackage;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.internal.ads.zzvv;

/* loaded from: classes.dex */
public final class c40 extends qu3 {
    public final OnPaidEventListener e;

    public c40(OnPaidEventListener onPaidEventListener) {
        this.e = onPaidEventListener;
    }

    @Override // defpackage.mu3
    public final void x4(zzvv zzvvVar) {
        if (this.e != null) {
            this.e.onPaidEvent(AdValue.zza(zzvvVar.f, zzvvVar.g, zzvvVar.h));
        }
    }
}
