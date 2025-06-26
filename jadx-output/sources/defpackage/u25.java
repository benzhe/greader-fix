package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzp;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class u25 implements Parcelable.Creator<zzp> {
    @Override // android.os.Parcelable.Creator
    public final zzp createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        long jV3 = 0;
        long jV4 = 0;
        long jV5 = 0;
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        String strT5 = null;
        String strT6 = null;
        String strT7 = null;
        Boolean boolValueOf = null;
        ArrayList<String> arrayListV = null;
        String strT8 = null;
        String strT9 = "";
        long jV6 = -2147483648L;
        boolean zR = true;
        boolean zR2 = false;
        int iU = 0;
        boolean zR3 = true;
        boolean zR4 = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    strT2 = bi.t(parcel, i);
                    break;
                case 4:
                    strT3 = bi.t(parcel, i);
                    break;
                case 5:
                    strT4 = bi.t(parcel, i);
                    break;
                case 6:
                    jV = bi.V(parcel, i);
                    break;
                case 7:
                    jV2 = bi.V(parcel, i);
                    break;
                case 8:
                    strT5 = bi.t(parcel, i);
                    break;
                case 9:
                    zR = bi.R(parcel, i);
                    break;
                case 10:
                    zR2 = bi.R(parcel, i);
                    break;
                case 11:
                    jV6 = bi.V(parcel, i);
                    break;
                case 12:
                    strT6 = bi.t(parcel, i);
                    break;
                case 13:
                    jV3 = bi.V(parcel, i);
                    break;
                case 14:
                    jV4 = bi.V(parcel, i);
                    break;
                case 15:
                    iU = bi.U(parcel, i);
                    break;
                case 16:
                    zR3 = bi.R(parcel, i);
                    break;
                case 17:
                case 20:
                default:
                    bi.Y(parcel, i);
                    break;
                case 18:
                    zR4 = bi.R(parcel, i);
                    break;
                case 19:
                    strT7 = bi.t(parcel, i);
                    break;
                case 21:
                    int iW = bi.W(parcel, i);
                    if (iW != 0) {
                        bi.s0(parcel, iW, 4);
                        boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                        break;
                    } else {
                        boolValueOf = null;
                        break;
                    }
                case 22:
                    jV5 = bi.V(parcel, i);
                    break;
                case 23:
                    arrayListV = bi.v(parcel, i);
                    break;
                case 24:
                    strT8 = bi.t(parcel, i);
                    break;
                case 25:
                    strT9 = bi.t(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzp(strT, strT2, strT3, strT4, jV, jV2, strT5, zR, zR2, jV6, strT6, jV3, jV4, iU, zR3, zR4, strT7, boolValueOf, jV5, arrayListV, strT8, strT9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
