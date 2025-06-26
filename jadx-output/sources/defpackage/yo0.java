package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaww;

/* loaded from: classes.dex */
public final class yo0 implements Parcelable.Creator<zzaww> {
    @Override // android.os.Parcelable.Creator
    public final zzaww createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                strT2 = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaww(strT, strT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaww[] newArray(int i) {
        return new zzaww[i];
    }
}
