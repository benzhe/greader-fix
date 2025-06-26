package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class qr3 implements Parcelable.Creator<zzvt> {
    @Override // android.os.Parcelable.Creator
    public final zzvt createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        zzvt[] zzvtVarArr = null;
        int iU = 0;
        int iU2 = 0;
        boolean zR = false;
        int iU3 = 0;
        int iU4 = 0;
        boolean zR2 = false;
        boolean zR3 = false;
        boolean zR4 = false;
        boolean zR5 = false;
        boolean zR6 = false;
        boolean zR7 = false;
        boolean zR8 = false;
        boolean zR9 = false;
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
                    zR = bi.R(parcel, i);
                    break;
                case 6:
                    iU3 = bi.U(parcel, i);
                    break;
                case 7:
                    iU4 = bi.U(parcel, i);
                    break;
                case 8:
                    zzvtVarArr = (zzvt[]) bi.w(parcel, i, zzvt.CREATOR);
                    break;
                case 9:
                    zR2 = bi.R(parcel, i);
                    break;
                case 10:
                    zR3 = bi.R(parcel, i);
                    break;
                case 11:
                    zR4 = bi.R(parcel, i);
                    break;
                case 12:
                    zR5 = bi.R(parcel, i);
                    break;
                case 13:
                    zR6 = bi.R(parcel, i);
                    break;
                case 14:
                    zR7 = bi.R(parcel, i);
                    break;
                case 15:
                    zR8 = bi.R(parcel, i);
                    break;
                case 16:
                    zR9 = bi.R(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzvt(strT, iU, iU2, zR, iU3, iU4, zzvtVarArr, zR2, zR3, zR4, zR5, zR6, zR7, zR8, zR9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvt[] newArray(int i) {
        return new zzvt[i];
    }
}
