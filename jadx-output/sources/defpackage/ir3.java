package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ir3 implements Parcelable.Creator<zzvh> {
    @Override // android.os.Parcelable.Creator
    public final zzvh createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        zzvh zzvhVar = null;
        IBinder iBinderT = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 == 3) {
                strT2 = bi.t(parcel, i);
            } else if (i2 == 4) {
                zzvhVar = (zzvh) bi.s(parcel, i, zzvh.CREATOR);
            } else if (i2 != 5) {
                bi.Y(parcel, i);
            } else {
                iBinderT = bi.T(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzvh(iU, strT, strT2, zzvhVar, iBinderT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvh[] newArray(int i) {
        return new zzvh[i];
    }
}
