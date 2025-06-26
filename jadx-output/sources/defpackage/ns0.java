package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class ns0 implements Parcelable.Creator<zzbar> {
    @Override // android.os.Parcelable.Creator
    public final zzbar createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        int iU = 0;
        int iU2 = 0;
        boolean zR = false;
        boolean zR2 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 == 3) {
                iU = bi.U(parcel, i);
            } else if (i2 == 4) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 5) {
                zR = bi.R(parcel, i);
            } else if (i2 != 6) {
                bi.Y(parcel, i);
            } else {
                zR2 = bi.R(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzbar(strT, iU, iU2, zR, zR2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbar[] newArray(int i) {
        return new zzbar[i];
    }
}
