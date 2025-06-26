package defpackage;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;

/* loaded from: classes.dex */
public final class i10 implements Parcelable.Creator<GetServiceRequest> {
    @Override // android.os.Parcelable.Creator
    public final GetServiceRequest createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        IBinder iBinderT = null;
        Scope[] scopeArr = null;
        Bundle bundleO = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        int iU = 0;
        int iU2 = 0;
        int iU3 = 0;
        boolean zR = false;
        int iU4 = 0;
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
                    strT = bi.t(parcel, i);
                    break;
                case 5:
                    iBinderT = bi.T(parcel, i);
                    break;
                case 6:
                    scopeArr = (Scope[]) bi.w(parcel, i, Scope.CREATOR);
                    break;
                case 7:
                    bundleO = bi.o(parcel, i);
                    break;
                case 8:
                    account = (Account) bi.s(parcel, i, Account.CREATOR);
                    break;
                case 9:
                default:
                    bi.Y(parcel, i);
                    break;
                case 10:
                    featureArr = (Feature[]) bi.w(parcel, i, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) bi.w(parcel, i, Feature.CREATOR);
                    break;
                case 12:
                    zR = bi.R(parcel, i);
                    break;
                case 13:
                    iU4 = bi.U(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new GetServiceRequest(iU, iU2, iU3, strT, iBinderT, scopeArr, bundleO, account, featureArr, featureArr2, zR, iU4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
