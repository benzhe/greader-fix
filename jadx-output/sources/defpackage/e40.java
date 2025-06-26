package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaat;

/* loaded from: classes.dex */
public final class e40 implements Parcelable.Creator<zzaat> {
    @Override // android.os.Parcelable.Creator
    public final zzaat createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                iU2 = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaat(iU, iU2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaat[] newArray(int i) {
        return new zzaat[i];
    }
}
