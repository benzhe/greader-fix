package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;

/* loaded from: classes.dex */
public final class f10 implements Parcelable.Creator<ResolveAccountResponse> {
    @Override // android.os.Parcelable.Creator
    public final ResolveAccountResponse createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        IBinder iBinderT = null;
        ConnectionResult connectionResult = null;
        int iU = 0;
        boolean zR = false;
        boolean zR2 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iBinderT = bi.T(parcel, i);
            } else if (i2 == 3) {
                connectionResult = (ConnectionResult) bi.s(parcel, i, ConnectionResult.CREATOR);
            } else if (i2 == 4) {
                zR = bi.R(parcel, i);
            } else if (i2 != 5) {
                bi.Y(parcel, i);
            } else {
                zR2 = bi.R(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new ResolveAccountResponse(iU, iBinderT, connectionResult, zR, zR2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
