package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class k20 implements Parcelable.Creator<Feature> {
    @Override // android.os.Parcelable.Creator
    public final Feature createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        int iU = 0;
        long jV = -1;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                iU = bi.U(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                jV = bi.V(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new Feature(strT, iU, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature[] newArray(int i) {
        return new Feature[i];
    }
}
