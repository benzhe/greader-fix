package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.ExperimentTokens;

/* loaded from: classes.dex */
public final class e35 implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final ExperimentTokens createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        byte[] bArrP = null;
        byte[][] bArrQ = null;
        byte[][] bArrQ2 = null;
        byte[][] bArrQ3 = null;
        byte[][] bArrQ4 = null;
        int[] iArrR = null;
        byte[][] bArrQ5 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    bArrP = bi.p(parcel, i);
                    break;
                case 4:
                    bArrQ = bi.q(parcel, i);
                    break;
                case 5:
                    bArrQ2 = bi.q(parcel, i);
                    break;
                case 6:
                    bArrQ3 = bi.q(parcel, i);
                    break;
                case 7:
                    bArrQ4 = bi.q(parcel, i);
                    break;
                case 8:
                    iArrR = bi.r(parcel, i);
                    break;
                case 9:
                    bArrQ5 = bi.q(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new ExperimentTokens(strT, bArrP, bArrQ, bArrQ2, bArrQ3, bArrQ4, iArrR, bArrQ5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i) {
        return new ExperimentTokens[i];
    }
}
