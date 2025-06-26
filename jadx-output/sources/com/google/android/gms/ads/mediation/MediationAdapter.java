package com.google.android.gms.ads.mediation;

import android.os.Bundle;

@Deprecated
/* loaded from: classes.dex */
public interface MediationAdapter extends MediationExtrasReceiver {

    public static class zza {
        public int a;

        public final Bundle zzafn() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.a);
            return bundle;
        }

        public final zza zzed(int i) {
            this.a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
