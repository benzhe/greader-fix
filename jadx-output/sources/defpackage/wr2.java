package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdwj;

/* loaded from: classes.dex */
public final class wr2 implements Parcelable.Creator<zzdwj> {
    @Override // android.os.Parcelable.Creator
    public final zzdwj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        byte[] bArrP = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                bArrP = bi.p(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzdwj(iU, bArrP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwj[] newArray(int i) {
        return new zzdwj[i];
    }
}
