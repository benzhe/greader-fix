package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzaq;

/* loaded from: classes.dex */
public final class ns4 implements Parcelable.Creator<zzaq> {
    @Override // android.os.Parcelable.Creator
    public final zzaq createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        Bundle bundleO = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            if ((65535 & i) != 2) {
                bi.Y(parcel, i);
            } else {
                bundleO = bi.o(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaq(bundleO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
