package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class f00 implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final Status createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        PendingIntent pendingIntent = null;
        int iU = 0;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU2 = bi.U(parcel, i);
            } else if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 == 3) {
                pendingIntent = (PendingIntent) bi.s(parcel, i, PendingIntent.CREATOR);
            } else if (i2 != 1000) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new Status(iU, iU2, strT, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
