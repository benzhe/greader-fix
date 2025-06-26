package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaue;

/* loaded from: classes.dex */
public final class nm0 implements Parcelable.Creator<zzaue> {
    @Override // android.os.Parcelable.Creator
    public final zzaue createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            if ((65535 & i) != 2) {
                bi.Y(parcel, i);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) bi.s(parcel, i, ParcelFileDescriptor.CREATOR);
            }
        }
        bi.A(parcel, iB0);
        return new zzaue(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaue[] newArray(int i) {
        return new zzaue[i];
    }
}
