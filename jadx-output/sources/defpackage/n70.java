package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;

/* loaded from: classes.dex */
public final class n70 implements Parcelable.Creator<zzaei> {
    @Override // android.os.Parcelable.Creator
    public final zzaei createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        zzaaz zzaazVar = null;
        int iU = 0;
        boolean zR = false;
        int iU2 = 0;
        boolean zR2 = false;
        int iU3 = 0;
        boolean zR3 = false;
        int iU4 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    iU = bi.U(parcel, i);
                    break;
                case 2:
                    zR = bi.R(parcel, i);
                    break;
                case 3:
                    iU2 = bi.U(parcel, i);
                    break;
                case 4:
                    zR2 = bi.R(parcel, i);
                    break;
                case 5:
                    iU3 = bi.U(parcel, i);
                    break;
                case 6:
                    zzaazVar = (zzaaz) bi.s(parcel, i, zzaaz.CREATOR);
                    break;
                case 7:
                    zR3 = bi.R(parcel, i);
                    break;
                case 8:
                    iU4 = bi.U(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzaei(iU, zR, iU2, zR2, iU3, zzaazVar, zR3, iU4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaei[] newArray(int i) {
        return new zzaei[i];
    }
}
