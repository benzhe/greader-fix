package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaja;

/* loaded from: classes.dex */
public final class fc0 implements Parcelable.Creator<zzaja> {
    @Override // android.os.Parcelable.Creator
    public final zzaja createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        byte[] bArrP = null;
        String[] strArrU = null;
        String[] strArrU2 = null;
        long jV = 0;
        boolean zR = false;
        int iU = 0;
        boolean zR2 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    zR = bi.R(parcel, i);
                    break;
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    iU = bi.U(parcel, i);
                    break;
                case 4:
                    bArrP = bi.p(parcel, i);
                    break;
                case 5:
                    strArrU = bi.u(parcel, i);
                    break;
                case 6:
                    strArrU2 = bi.u(parcel, i);
                    break;
                case 7:
                    zR2 = bi.R(parcel, i);
                    break;
                case 8:
                    jV = bi.V(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzaja(zR, strT, iU, bArrP, strArrU, strArrU2, zR2, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja[] newArray(int i) {
        return new zzaja[i];
    }
}
