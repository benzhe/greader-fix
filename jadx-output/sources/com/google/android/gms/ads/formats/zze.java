package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zze implements Parcelable.Creator<PublisherAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final PublisherAdViewOptions createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        IBinder iBinderT = null;
        IBinder iBinderT2 = null;
        boolean zR = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                zR = bi.R(parcel, i);
            } else if (i2 == 2) {
                iBinderT = bi.T(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                iBinderT2 = bi.T(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new PublisherAdViewOptions(zR, iBinderT, iBinderT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PublisherAdViewOptions[] newArray(int i) {
        return new PublisherAdViewOptions[i];
    }
}
