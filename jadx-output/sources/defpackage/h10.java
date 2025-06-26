package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.zzc;

/* loaded from: classes.dex */
public final class h10 implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final zzc createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        Bundle bundleO = null;
        Feature[] featureArr = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                bundleO = bi.o(parcel, i);
            } else if (i2 == 2) {
                featureArr = (Feature[]) bi.w(parcel, i, Feature.CREATOR);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzc(bundleO, featureArr, iU);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
