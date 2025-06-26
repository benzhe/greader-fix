package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.zzy;

/* loaded from: classes.dex */
public final class hg4 implements Parcelable.Creator<zzy> {
    @Override // android.os.Parcelable.Creator
    public final zzy createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        Bundle bundleO = null;
        String strT4 = null;
        boolean zR = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    jV = bi.V(parcel, i);
                    break;
                case 2:
                    jV2 = bi.V(parcel, i);
                    break;
                case 3:
                    zR = bi.R(parcel, i);
                    break;
                case 4:
                    strT = bi.t(parcel, i);
                    break;
                case 5:
                    strT2 = bi.t(parcel, i);
                    break;
                case 6:
                    strT3 = bi.t(parcel, i);
                    break;
                case 7:
                    bundleO = bi.o(parcel, i);
                    break;
                case 8:
                    strT4 = bi.t(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzy(jV, jV2, zR, strT, strT2, strT3, bundleO, strT4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzy[] newArray(int i) {
        return new zzy[i];
    }
}
