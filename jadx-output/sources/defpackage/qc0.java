package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzajm;

/* loaded from: classes.dex */
public final class qc0 implements Parcelable.Creator<zzajm> {
    @Override // android.os.Parcelable.Creator
    public final zzajm createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        boolean zR = false;
        String strT = null;
        String strT2 = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                zR = bi.R(parcel, i);
            } else if (i2 == 3) {
                iU = bi.U(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                strT2 = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzajm(strT, zR, iU, strT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajm[] newArray(int i) {
        return new zzajm[i];
    }
}
