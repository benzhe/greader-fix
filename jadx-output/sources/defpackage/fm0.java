package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzatu;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fm0 implements Parcelable.Creator<zzatu> {
    @Override // android.os.Parcelable.Creator
    public final zzatu createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        boolean zR = false;
        ArrayList<String> arrayListV = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                zR = bi.R(parcel, i);
            } else if (i2 != 3) {
                bi.Y(parcel, i);
            } else {
                arrayListV = bi.v(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzatu(zR, arrayListV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatu[] newArray(int i) {
        return new zzatu[i];
    }
}
