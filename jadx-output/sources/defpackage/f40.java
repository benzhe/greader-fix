package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaav;

/* loaded from: classes.dex */
public final class f40 implements Parcelable.Creator<zzaav> {
    @Override // android.os.Parcelable.Creator
    public final zzaav createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            if ((65535 & i) != 15) {
                bi.Y(parcel, i);
            } else {
                strT = bi.t(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzaav(strT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaav[] newArray(int i) {
        return new zzaav[i];
    }
}
