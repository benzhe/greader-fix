package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final zzb createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        String strT5 = null;
        String strT6 = null;
        String strT7 = null;
        Intent intent = null;
        IBinder iBinderT = null;
        boolean zR = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    strT2 = bi.t(parcel, i);
                    break;
                case 4:
                    strT3 = bi.t(parcel, i);
                    break;
                case 5:
                    strT4 = bi.t(parcel, i);
                    break;
                case 6:
                    strT5 = bi.t(parcel, i);
                    break;
                case 7:
                    strT6 = bi.t(parcel, i);
                    break;
                case 8:
                    strT7 = bi.t(parcel, i);
                    break;
                case 9:
                    intent = (Intent) bi.s(parcel, i, Intent.CREATOR);
                    break;
                case 10:
                    iBinderT = bi.T(parcel, i);
                    break;
                case 11:
                    zR = bi.R(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzb(strT, strT2, strT3, strT4, strT5, strT6, strT7, intent, iBinderT, zR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i) {
        return new zzb[i];
    }
}
