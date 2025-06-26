package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaqr;

/* loaded from: classes.dex */
public final class lj0 implements Parcelable.Creator<zzaqr> {
    @Override // android.os.Parcelable.Creator
    public final zzaqr createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
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
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                iU3 = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaqr(iU, iU2, iU3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaqr[] newArray(int i) {
        return new zzaqr[i];
    }
}
