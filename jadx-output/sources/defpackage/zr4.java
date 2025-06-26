package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;

/* loaded from: classes.dex */
public final class zr4 implements Parcelable.Creator<zzaa> {
    @Override // android.os.Parcelable.Creator
    public final zzaa createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        long jV3 = 0;
        String strT = null;
        String strT2 = null;
        zzkr zzkrVar = null;
        String strT3 = null;
        zzas zzasVar = null;
        zzas zzasVar2 = null;
        zzas zzasVar3 = null;
        boolean zR = false;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    strT2 = bi.t(parcel, i);
                    break;
                case 4:
                    zzkrVar = (zzkr) bi.s(parcel, i, zzkr.CREATOR);
                    break;
                case 5:
                    jV = bi.V(parcel, i);
                    break;
                case 6:
                    zR = bi.R(parcel, i);
                    break;
                case 7:
                    strT3 = bi.t(parcel, i);
                    break;
                case 8:
                    zzasVar = (zzas) bi.s(parcel, i, zzas.CREATOR);
                    break;
                case 9:
                    jV2 = bi.V(parcel, i);
                    break;
                case 10:
                    zzasVar2 = (zzas) bi.s(parcel, i, zzas.CREATOR);
                    break;
                case 11:
                    jV3 = bi.V(parcel, i);
                    break;
                case 12:
                    zzasVar3 = (zzas) bi.s(parcel, i, zzas.CREATOR);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzaa(strT, strT2, zzkrVar, jV, zR, strT3, zzasVar, jV2, zzasVar2, jV3, zzasVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
