package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<AdManagerAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final AdManagerAdViewOptions createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        boolean zR = false;
        IBinder iBinderT = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                zR = bi.R(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                iBinderT = bi.T(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new AdManagerAdViewOptions(zR, iBinderT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions[] newArray(int i) {
        return new AdManagerAdViewOptions[i];
    }
}
