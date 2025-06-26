package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzn implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        zzb zzbVar = null;
        IBinder iBinderT = null;
        IBinder iBinderT2 = null;
        IBinder iBinderT3 = null;
        IBinder iBinderT4 = null;
        String strT = null;
        String strT2 = null;
        IBinder iBinderT5 = null;
        String strT3 = null;
        zzbar zzbarVar = null;
        String strT4 = null;
        com.google.android.gms.ads.internal.zzk zzkVar = null;
        IBinder iBinderT6 = null;
        String strT5 = null;
        IBinder iBinderT7 = null;
        IBinder iBinderT8 = null;
        IBinder iBinderT9 = null;
        IBinder iBinderT10 = null;
        String strT6 = null;
        String strT7 = null;
        boolean zR = false;
        int iU = 0;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    zzbVar = (zzb) bi.s(parcel, i, zzb.CREATOR);
                    break;
                case 3:
                    iBinderT = bi.T(parcel, i);
                    break;
                case 4:
                    iBinderT2 = bi.T(parcel, i);
                    break;
                case 5:
                    iBinderT3 = bi.T(parcel, i);
                    break;
                case 6:
                    iBinderT4 = bi.T(parcel, i);
                    break;
                case 7:
                    strT = bi.t(parcel, i);
                    break;
                case 8:
                    zR = bi.R(parcel, i);
                    break;
                case 9:
                    strT2 = bi.t(parcel, i);
                    break;
                case 10:
                    iBinderT5 = bi.T(parcel, i);
                    break;
                case 11:
                    iU = bi.U(parcel, i);
                    break;
                case 12:
                    iU2 = bi.U(parcel, i);
                    break;
                case 13:
                    strT3 = bi.t(parcel, i);
                    break;
                case 14:
                    zzbarVar = (zzbar) bi.s(parcel, i, zzbar.CREATOR);
                    break;
                case 15:
                default:
                    bi.Y(parcel, i);
                    break;
                case 16:
                    strT4 = bi.t(parcel, i);
                    break;
                case 17:
                    zzkVar = (com.google.android.gms.ads.internal.zzk) bi.s(parcel, i, com.google.android.gms.ads.internal.zzk.CREATOR);
                    break;
                case 18:
                    iBinderT6 = bi.T(parcel, i);
                    break;
                case 19:
                    strT5 = bi.t(parcel, i);
                    break;
                case 20:
                    iBinderT7 = bi.T(parcel, i);
                    break;
                case 21:
                    iBinderT8 = bi.T(parcel, i);
                    break;
                case 22:
                    iBinderT9 = bi.T(parcel, i);
                    break;
                case 23:
                    iBinderT10 = bi.T(parcel, i);
                    break;
                case 24:
                    strT6 = bi.t(parcel, i);
                    break;
                case 25:
                    strT7 = bi.t(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new AdOverlayInfoParcel(zzbVar, iBinderT, iBinderT2, iBinderT3, iBinderT4, strT, zR, strT2, iBinderT5, iU, iU2, strT3, zzbarVar, strT4, zzkVar, iBinderT6, strT5, iBinderT7, iBinderT8, iBinderT9, iBinderT10, strT6, strT7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
