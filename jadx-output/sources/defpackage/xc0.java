package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzajw;

/* loaded from: classes.dex */
public final class xc0 implements Parcelable.Creator<zzajw> {
    @Override // android.os.Parcelable.Creator
    public final zzajw createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        Bundle bundleO = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                bundleO = bi.o(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzajw(strT, bundleO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajw[] newArray(int i) {
        return new zzajw[i];
    }
}
