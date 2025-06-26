package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdwt;

/* loaded from: classes.dex */
public final class ds2 implements Parcelable.Creator<zzdwt> {
    @Override // android.os.Parcelable.Creator
    public final zzdwt createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        byte[] bArrP = null;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                bArrP = bi.p(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                iU2 = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzdwt(iU, bArrP, iU2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwt[] newArray(int i) {
        return new zzdwt[i];
    }
}
