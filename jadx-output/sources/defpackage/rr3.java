package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvv;

/* loaded from: classes.dex */
public final class rr3 implements Parcelable.Creator<zzvv> {
    @Override // android.os.Parcelable.Creator
    public final zzvv createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        long jV = 0;
        int iU = 0;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 3) {
                strT = bi.t(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                jV = bi.V(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzvv(iU, iU2, strT, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvv[] newArray(int i) {
        return new zzvv[i];
    }
}
