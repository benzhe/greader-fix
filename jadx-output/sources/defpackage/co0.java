package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzavy;

/* loaded from: classes.dex */
public final class co0 implements Parcelable.Creator<zzavy> {
    @Override // android.os.Parcelable.Creator
    public final zzavy createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzavy(strT, iU);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavy[] newArray(int i) {
        return new zzavy[i];
    }
}
