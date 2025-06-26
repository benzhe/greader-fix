package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
public final class d40 extends sd3 implements lu3 {
    public final OnAdMetadataChangedListener e;

    public d40(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        super("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
        this.e = onAdMetadataChangedListener;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.e;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.lu3
    public final void onAdMetadataChanged() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.e;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
