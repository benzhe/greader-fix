package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzzj;

/* loaded from: classes.dex */
public final class av3 implements Parcelable.Creator<zzzj> {
    @Override // android.os.Parcelable.Creator
    public final zzzj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            if ((65535 & i) != 2) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzzj(iU);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzj[] newArray(int i) {
        return new zzzj[i];
    }
}
