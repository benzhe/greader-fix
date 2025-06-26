package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaaz;

/* loaded from: classes.dex */
public final class i40 implements Parcelable.Creator<zzaaz> {
    @Override // android.os.Parcelable.Creator
    public final zzaaz createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        boolean zR = false;
        boolean zR2 = false;
        boolean zR3 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                zR = bi.R(parcel, i);
            } else if (i2 == 3) {
                zR2 = bi.R(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                zR3 = bi.R(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaaz(zR, zR2, zR3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz[] newArray(int i) {
        return new zzaaz[i];
    }
}
