package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvf;

/* loaded from: classes.dex */
public final class gr3 implements Parcelable.Creator<zzvf> {
    @Override // android.os.Parcelable.Creator
    public final zzvf createFromParcel(Parcel parcel) {
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
        return new zzvf(strT, strT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvf[] newArray(int i) {
        return new zzvf[i];
    }
}
