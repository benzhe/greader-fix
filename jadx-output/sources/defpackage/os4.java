package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzas;

/* loaded from: classes.dex */
public final class os4 implements Parcelable.Creator<zzas> {
    public static void a(zzas zzasVar, Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, zzasVar.e, false);
        bi.h0(parcel, 3, zzasVar.f, i, false);
        bi.i0(parcel, 4, zzasVar.g, false);
        long j = zzasVar.h;
        bi.r0(parcel, 5, 8);
        parcel.writeLong(j);
        bi.t0(parcel, iM0);
    }

    @Override // android.os.Parcelable.Creator
    public final zzas createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        zzaq zzaqVar = null;
        String strT2 = null;
        long jV = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            int i2 = 65535 & i;
            if (i2 == 2) {
                strT = bi.t(parcel, i);
            } else if (i2 == 3) {
                zzaqVar = (zzaq) bi.s(parcel, i, zzaq.CREATOR);
            } else if (i2 == 4) {
                strT2 = bi.t(parcel, i);
            } else if (i2 != 5) {
                bi.Y(parcel, i);
            } else {
                jV = bi.V(parcel, i);
            }
        }
        bi.A(parcel, iB0);
        return new zzas(strT, zzaqVar, strT2, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
