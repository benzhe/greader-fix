package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonConfig;

/* loaded from: classes.dex */
public final class g10 implements Parcelable.Creator<SignInButtonConfig> {
    @Override // android.os.Parcelable.Creator
    public final SignInButtonConfig createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        Scope[] scopeArr = null;
        int iU2 = 0;
        int iU3 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 3) {
                iU3 = bi.U(parcel, i);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                scopeArr = (Scope[]) bi.w(parcel, i, Scope.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new SignInButtonConfig(iU, iU2, iU3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig[] newArray(int i) {
        return new SignInButtonConfig[i];
    }
}
