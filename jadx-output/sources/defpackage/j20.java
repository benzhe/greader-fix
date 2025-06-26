package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class j20 implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final ConnectionResult createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        PendingIntent pendingIntent = null;
        String strT = null;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 3) {
                pendingIntent = (PendingIntent) bi.s(parcel, i, PendingIntent.CREATOR);
            } else if (i2 != 4) {
                bi.Y(parcel, i);
            } else {
                strT = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new ConnectionResult(iU, iU2, pendingIntent, strT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
