package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdwc;

/* loaded from: classes.dex */
public final class ur2 implements Parcelable.Creator<zzdwc> {
    @Override // android.os.Parcelable.Creator
    public final zzdwc createFromParcel(Parcel parcel) {
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
        return new zzdwc(iU, bArrP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwc[] newArray(int i) {
        return new zzdwc[i];
    }
}
