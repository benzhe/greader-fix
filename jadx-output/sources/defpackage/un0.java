package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzavt;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class un0 implements Parcelable.Creator<zzavt> {
    @Override // android.os.Parcelable.Creator
    public final zzavt createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        zzvq zzvqVar = null;
        String strT = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                zzvqVar = (zzvq) bi.s(parcel, i, zzvq.CREATOR);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                strT = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzavt(zzvqVar, strT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt[] newArray(int i) {
        return new zzavt[i];
    }
}
