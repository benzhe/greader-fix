package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdwr;

/* loaded from: classes.dex */
public final class cs2 implements Parcelable.Creator<zzdwr> {
    @Override // android.os.Parcelable.Creator
    public final zzdwr createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        int iU = 0;
        int iU2 = 0;
        int iU3 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 3) {
                strT = bi.t(parcel, i);
            } else if (i2 == 4) {
                strT2 = bi.t(parcel, i);
            } else if (i2 != 5) {
                bi.Y(parcel, i);
            } else {
                iU3 = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzdwr(iU, iU2, iU3, strT, strT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwr[] newArray(int i) {
        return new zzdwr[i];
    }
}
