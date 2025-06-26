package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzatj;

/* loaded from: classes.dex */
public final class vl0 implements Parcelable.Creator<zzatj> {
    @Override // android.os.Parcelable.Creator
    public final zzatj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        IBinder iBinderT = null;
        IBinder iBinderT2 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iBinderT = bi.T(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                iBinderT2 = bi.T(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzatj(iBinderT, iBinderT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatj[] newArray(int i) {
        return new zzatj[i];
    }
}
