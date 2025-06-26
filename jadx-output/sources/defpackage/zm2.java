package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzdrc;

/* loaded from: classes.dex */
public final class zm2 implements Parcelable.Creator<zzdrc> {
    @Override // android.os.Parcelable.Creator
    public final zzdrc createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        int iU = 0;
        int iU2 = 0;
        int iU3 = 0;
        int iU4 = 0;
        int iU5 = 0;
        int iU6 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    iU = bi.U(parcel, i);
                    break;
                case 2:
                    iU2 = bi.U(parcel, i);
                    break;
                case 3:
                    iU3 = bi.U(parcel, i);
                    break;
                case 4:
                    iU4 = bi.U(parcel, i);
                    break;
                case 5:
                    strT = bi.t(parcel, i);
                    break;
                case 6:
                    iU5 = bi.U(parcel, i);
                    break;
                case 7:
                    iU6 = bi.U(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzdrc(iU, iU2, iU3, iU4, strT, iU5, iU6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdrc[] newArray(int i) {
        return new zzdrc[i];
    }
}
