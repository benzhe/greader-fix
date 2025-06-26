package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.zzc;

/* loaded from: classes.dex */
public final class by implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final zzc createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        boolean zR = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                zR = bi.R(parcel, i);
            } else if (i2 == 2) {
                jV2 = bi.V(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                jV = bi.V(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzc(zR, jV, jV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
