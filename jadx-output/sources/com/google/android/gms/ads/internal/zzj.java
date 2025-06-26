package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzj implements Parcelable.Creator<zzk> {
    @Override // android.os.Parcelable.Creator
    public final zzk createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        boolean zR = false;
        boolean zR2 = false;
        boolean zR3 = false;
        float fS = 0.0f;
        int iU = 0;
        boolean zR4 = false;
        boolean zR5 = false;
        boolean zR6 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    zR = bi.R(parcel, i);
                    break;
                case 3:
                    zR2 = bi.R(parcel, i);
                    break;
                case 4:
                    strT = bi.t(parcel, i);
                    break;
                case 5:
                    zR3 = bi.R(parcel, i);
                    break;
                case 6:
                    fS = bi.S(parcel, i);
                    break;
                case 7:
                    iU = bi.U(parcel, i);
                    break;
                case 8:
                    zR4 = bi.R(parcel, i);
                    break;
                case 9:
                    zR5 = bi.R(parcel, i);
                    break;
                case 10:
                    zR6 = bi.R(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzk(zR, zR2, strT, zR3, fS, iU, zR4, zR5, zR6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk[] newArray(int i) {
        return new zzk[i];
    }
}
