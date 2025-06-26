package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes.dex */
public final class vr2 implements Parcelable.Creator<zzdwh> {
    @Override // android.os.Parcelable.Creator
    public final zzdwh createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                strT2 = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzdwh(iU, strT, strT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwh[] newArray(int i) {
        return new zzdwh[i];
    }
}
