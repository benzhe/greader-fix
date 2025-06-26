package defpackage;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ResolveAccountRequest;

/* loaded from: classes.dex */
public final class e10 implements Parcelable.Creator<ResolveAccountRequest> {
    @Override // android.os.Parcelable.Creator
    public final ResolveAccountRequest createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                account = (Account) bi.s(parcel, i, Account.CREATOR);
            } else if (i2 == 3) {
                iU2 = bi.U(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                googleSignInAccount = (GoogleSignInAccount) bi.s(parcel, i, GoogleSignInAccount.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new ResolveAccountRequest(iU, account, iU2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
