package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;

/* loaded from: classes.dex */
public final class cy implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final zze createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        zzr zzrVar = null;
        byte[] bArrP = null;
        int[] iArrR = null;
        String[] strArrU = null;
        int[] iArrR2 = null;
        byte[][] bArrQ = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean zR = true;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    zzrVar = (zzr) bi.s(parcel, i, zzr.CREATOR);
                    break;
                case 3:
                    bArrP = bi.p(parcel, i);
                    break;
                case 4:
                    iArrR = bi.r(parcel, i);
                    break;
                case 5:
                    strArrU = bi.u(parcel, i);
                    break;
                case 6:
                    iArrR2 = bi.r(parcel, i);
                    break;
                case 7:
                    bArrQ = bi.q(parcel, i);
                    break;
                case 8:
                    zR = bi.R(parcel, i);
                    break;
                case 9:
                    experimentTokensArr = (ExperimentTokens[]) bi.w(parcel, i, ExperimentTokens.CREATOR);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zze(zzrVar, bArrP, iArrR, strArrU, iArrR2, bArrQ, zR, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i) {
        return new zze[i];
    }
}
