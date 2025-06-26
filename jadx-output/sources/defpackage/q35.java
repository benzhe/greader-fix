package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zaj;

/* loaded from: classes.dex */
public final class q35 implements Parcelable.Creator<zaj> {
    @Override // android.os.Parcelable.Creator
    public final zaj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        ConnectionResult connectionResult = null;
        ResolveAccountResponse resolveAccountResponse = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                connectionResult = (ConnectionResult) bi.s(parcel, i, ConnectionResult.CREATOR);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                resolveAccountResponse = (ResolveAccountResponse) bi.s(parcel, i, ResolveAccountResponse.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new zaj(iU, connectionResult, resolveAccountResponse);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaj[] newArray(int i) {
        return new zaj[i];
    }
}
