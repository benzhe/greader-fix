package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaiy;

/* loaded from: classes.dex */
public final class dc0 implements Parcelable.Creator<zzaiy> {
    @Override // android.os.Parcelable.Creator
    public final zzaiy createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String[] strArrU = null;
        String[] strArrU2 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                strArrU = bi.u(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                strArrU2 = bi.u(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaiy(strT, strArrU, strArrU2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiy[] newArray(int i) {
        return new zzaiy[i];
    }
}
