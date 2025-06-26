package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class e00 implements Parcelable.Creator<Scope> {
    @Override // android.os.Parcelable.Creator
    public final Scope createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        String strT = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 != 2) {
                bi.Y(parcel, i);
            } else {
                strT = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new Scope(iU, strT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Scope[] newArray(int i) {
        return new Scope[i];
    }
}
