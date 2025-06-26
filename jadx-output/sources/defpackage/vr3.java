package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzwc;

/* loaded from: classes.dex */
public final class vr3 implements Parcelable.Creator<zzwc> {
    @Override // android.os.Parcelable.Creator
    public final zzwc createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            if ((65535 & i) != 2) {
                bi.Y(parcel, i);
            } else {
                iU = bi.U(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzwc(iU);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzwc[] newArray(int i) {
        return new zzwc[i];
    }
}
