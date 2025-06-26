package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.clearcut.zzr;

/* loaded from: classes.dex */
public final class z14 implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final zzr createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        int iU = 0;
        int iU2 = 0;
        boolean zR = true;
        boolean zR2 = false;
        int iU3 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    iU = bi.U(parcel, i);
                    break;
                case 4:
                    iU2 = bi.U(parcel, i);
                    break;
                case 5:
                    strT2 = bi.t(parcel, i);
                    break;
                case 6:
                    strT3 = bi.t(parcel, i);
                    break;
                case 7:
                    zR = bi.R(parcel, i);
                    break;
                case 8:
                    strT4 = bi.t(parcel, i);
                    break;
                case 9:
                    zR2 = bi.R(parcel, i);
                    break;
                case 10:
                    iU3 = bi.U(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzr(strT, iU, iU2, strT2, strT3, zR, strT4, zR2, iU3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
