package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzth;

/* loaded from: classes.dex */
public final class no3 implements Parcelable.Creator<zzth> {
    @Override // android.os.Parcelable.Creator
    public final zzth createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        long jV = 0;
        boolean zR = false;
        boolean zR2 = false;
        boolean zR3 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) bi.s(parcel, i, ParcelFileDescriptor.CREATOR);
            } else if (i2 == 3) {
                zR = bi.R(parcel, i);
            } else if (i2 == 4) {
                zR2 = bi.R(parcel, i);
            } else if (i2 == 5) {
                jV = bi.V(parcel, i);
            } else if (i2 != 6) {
                bi.Y(parcel, i);
            } else {
                zR3 = bi.R(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzth(parcelFileDescriptor, zR, zR2, jV, zR3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth[] newArray(int i) {
        return new zzth[i];
    }
}
