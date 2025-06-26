package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaav;
import com.google.android.gms.internal.ads.zzvf;
import com.google.android.gms.internal.ads.zzvq;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class or3 implements Parcelable.Creator<zzvq> {
    @Override // android.os.Parcelable.Creator
    public final zzvq createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        Bundle bundleO = null;
        ArrayList<String> arrayListV = null;
        String strT = null;
        zzaav zzaavVar = null;
        Location location = null;
        String strT2 = null;
        Bundle bundleO2 = null;
        Bundle bundleO3 = null;
        ArrayList<String> arrayListV2 = null;
        String strT3 = null;
        String strT4 = null;
        zzvf zzvfVar = null;
        String strT5 = null;
        ArrayList<String> arrayListV3 = null;
        long jV = 0;
        int iU = 0;
        int iU2 = 0;
        boolean zR = false;
        int iU3 = 0;
        boolean zR2 = false;
        boolean zR3 = false;
        int iU4 = 0;
        int iU5 = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    iU = bi.U(parcel, i);
                    break;
                case 2:
                    jV = bi.V(parcel, i);
                    break;
                case 3:
                    bundleO = bi.o(parcel, i);
                    break;
                case 4:
                    iU2 = bi.U(parcel, i);
                    break;
                case 5:
                    arrayListV = bi.v(parcel, i);
                    break;
                case 6:
                    zR = bi.R(parcel, i);
                    break;
                case 7:
                    iU3 = bi.U(parcel, i);
                    break;
                case 8:
                    zR2 = bi.R(parcel, i);
                    break;
                case 9:
                    strT = bi.t(parcel, i);
                    break;
                case 10:
                    zzaavVar = (zzaav) bi.s(parcel, i, zzaav.CREATOR);
                    break;
                case 11:
                    location = (Location) bi.s(parcel, i, Location.CREATOR);
                    break;
                case 12:
                    strT2 = bi.t(parcel, i);
                    break;
                case 13:
                    bundleO2 = bi.o(parcel, i);
                    break;
                case 14:
                    bundleO3 = bi.o(parcel, i);
                    break;
                case 15:
                    arrayListV2 = bi.v(parcel, i);
                    break;
                case 16:
                    strT3 = bi.t(parcel, i);
                    break;
                case 17:
                    strT4 = bi.t(parcel, i);
                    break;
                case 18:
                    zR3 = bi.R(parcel, i);
                    break;
                case 19:
                    zzvfVar = (zzvf) bi.s(parcel, i, zzvf.CREATOR);
                    break;
                case 20:
                    iU4 = bi.U(parcel, i);
                    break;
                case 21:
                    strT5 = bi.t(parcel, i);
                    break;
                case 22:
                    arrayListV3 = bi.v(parcel, i);
                    break;
                case 23:
                    iU5 = bi.U(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzvq(iU, jV, bundleO, iU2, arrayListV, zR, iU3, zR2, strT, zzaavVar, location, strT2, bundleO2, bundleO3, arrayListV2, strT3, strT4, zR3, zzvfVar, iU4, strT5, arrayListV3, iU5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvq[] newArray(int i) {
        return new zzvq[i];
    }
}
