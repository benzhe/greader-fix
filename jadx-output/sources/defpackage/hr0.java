package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzazi;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class hr0 implements Parcelable.Creator<zzazi> {
    @Override // android.os.Parcelable.Creator
    public final zzazi createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        zzvt zzvtVar = null;
        zzvq zzvqVar = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                strT2 = bi.t(parcel, i);
            } else if (i2 == 3) {
                zzvtVar = (zzvt) bi.s(parcel, i, zzvt.CREATOR);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                zzvqVar = (zzvq) bi.s(parcel, i, zzvq.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new zzazi(strT, strT2, zzvtVar, zzvqVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazi[] newArray(int i) {
        return new zzazi[i];
    }
}
