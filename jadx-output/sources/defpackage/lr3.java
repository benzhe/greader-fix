package defpackage;

import android.os.Parcel;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes.dex */
public final class lr3 extends sd3 implements lt3 {
    public final AdMetadataListener e;

    public lr3(AdMetadataListener adMetadataListener) {
        super("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        this.e = adMetadataListener;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        AdMetadataListener adMetadataListener = this.e;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.lt3
    public final void onAdMetadataChanged() {
        AdMetadataListener adMetadataListener = this.e;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
