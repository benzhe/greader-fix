package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvx;

/* loaded from: classes.dex */
public final class ur3 implements Parcelable.Creator<zzvx> {
    @Override // android.os.Parcelable.Creator
    public final zzvx createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        zzvh zzvhVar = null;
        Bundle bundleO = null;
        long jV = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                strT = bi.t(parcel, i);
            } else if (i2 == 2) {
                jV = bi.V(parcel, i);
            } else if (i2 == 3) {
                zzvhVar = (zzvh) bi.s(parcel, i, zzvh.CREATOR);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                bundleO = bi.o(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzvx(strT, jV, zzvhVar, bundleO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx[] newArray(int i) {
        return new zzvx[i];
    }
}
