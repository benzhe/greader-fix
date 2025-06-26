package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.signin.internal.zaa;

/* loaded from: classes.dex */
public final class j35 implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final zaa createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        Intent intent = null;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 1) {
                iU = bi.U(parcel, i);
            } else if (i2 == 2) {
                iU2 = bi.U(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                intent = (Intent) bi.s(parcel, i, Intent.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new zaa(iU, iU2, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
