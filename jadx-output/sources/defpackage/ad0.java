package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzajy;

/* loaded from: classes.dex */
public final class ad0 implements Parcelable.Creator<zzajy> {
    @Override // android.os.Parcelable.Creator
    public final zzajy createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        String strT = null;
        int iU2 = 0;
        int iU3 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 == 3) {
                iU3 = bi.U(parcel, i);
            } else if (i2 != 1000) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzajy(iU, iU2, strT, iU3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajy[] newArray(int i) {
        return new zzajy[i];
    }
}
