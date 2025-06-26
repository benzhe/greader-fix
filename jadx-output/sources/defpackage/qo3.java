package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzti;

/* loaded from: classes.dex */
public final class qo3 implements Parcelable.Creator<zzti> {
    @Override // android.os.Parcelable.Creator
    public final zzti createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        Bundle bundleO = null;
        String strT5 = null;
        boolean zR = false;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    jV = bi.V(parcel, i);
                    break;
                case 4:
                    strT2 = bi.t(parcel, i);
                    break;
                case 5:
                    strT3 = bi.t(parcel, i);
                    break;
                case 6:
                    strT4 = bi.t(parcel, i);
                    break;
                case 7:
                    bundleO = bi.o(parcel, i);
                    break;
                case 8:
                    zR = bi.R(parcel, i);
                    break;
                case 9:
                    jV2 = bi.V(parcel, i);
                    break;
                case 10:
                    strT5 = bi.t(parcel, i);
                    break;
                case 11:
                    iU = bi.U(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzti(strT, jV, strT2, strT3, strT4, bundleO, zR, jV2, strT5, iU);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzti[] newArray(int i) {
        return new zzti[i];
    }
}
