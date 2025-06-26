package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzwc;

/* loaded from: classes.dex */
public final class l92 implements nd2<Bundle> {
    public final zzwc a;
    public final zzbar b;

    public l92(zzwc zzwcVar, zzbar zzbarVar) {
        this.a = zzwcVar;
        this.b = zzbarVar;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        int iIntValue = ((Integer) os3.j.f.a(y40.Z2)).intValue();
        zzbar zzbarVar = this.b;
        if (zzbarVar != null && zzbarVar.g >= iIntValue) {
            bundle2.putString("app_open_version", "2");
        }
        zzwc zzwcVar = this.a;
        if (zzwcVar != null) {
            int i = zzwcVar.e;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i == 2) {
                bundle2.putString("avo", "l");
            }
        }
    }
}
