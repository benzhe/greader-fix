package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.zzj;

/* loaded from: classes.dex */
public final class u20 implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final zzj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        boolean zR = false;
        String strT = null;
        IBinder iBinderT = null;
        boolean zR2 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                iBinderT = bi.T(parcel, i);
            } else if (i2 == 3) {
                zR = bi.R(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                zR2 = bi.R(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzj(strT, iBinderT, zR, zR2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
