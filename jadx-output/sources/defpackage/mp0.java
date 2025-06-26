package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaxn;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class mp0 implements Parcelable.Creator<zzaxn> {
    @Override // android.os.Parcelable.Creator
    public final zzaxn createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        ArrayList<String> arrayListV = null;
        ArrayList<String> arrayListV2 = null;
        boolean zR = false;
        boolean zR2 = false;
        boolean zR3 = false;
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
                    zR = bi.R(parcel, i);
                    break;
                case 5:
                    zR2 = bi.R(parcel, i);
                    break;
                case 6:
                    arrayListV = bi.v(parcel, i);
                    break;
                case 7:
                    zR3 = bi.R(parcel, i);
                    break;
                case 8:
                    zR4 = bi.R(parcel, i);
                    break;
                case 9:
                    arrayListV2 = bi.v(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzaxn(strT, strT2, zR, zR2, arrayListV, zR3, zR4, arrayListV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxn[] newArray(int i) {
        return new zzaxn[i];
    }
}
