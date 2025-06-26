package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.zah;

/* loaded from: classes.dex */
public final class p35 implements Parcelable.Creator<zah> {
    @Override // android.os.Parcelable.Creator
    public final zah createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) bi.s(parcel, i, ResolveAccountRequest.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new zah(iU, resolveAccountRequest);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah[] newArray(int i) {
        return new zah[i];
    }
}
