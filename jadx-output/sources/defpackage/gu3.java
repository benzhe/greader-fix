package defpackage;

import android.os.Parcel;
import com.google.android.gms.ads.MuteThisAdListener;

/* loaded from: classes.dex */
public final class gu3 extends sd3 implements fu3 {
    public final MuteThisAdListener e;

    public gu3(MuteThisAdListener muteThisAdListener) {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        this.e = muteThisAdListener;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        this.e.onAdMuted();
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.fu3
    public final void onAdMuted() {
        this.e.onAdMuted();
    }
}
