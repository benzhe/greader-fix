package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzatq;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzzj;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dm0 implements Parcelable.Creator<zzatq> {
    @Override // android.os.Parcelable.Creator
    public final zzatq createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        long jV = 0;
        long jV2 = 0;
        int iU = 0;
        Bundle bundleO = null;
        zzvq zzvqVar = null;
        zzvt zzvtVar = null;
        String strT = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        zzbar zzbarVar = null;
        Bundle bundleO2 = null;
        int iU2 = 0;
        ArrayList<String> arrayListV = null;
        Bundle bundleO3 = null;
        boolean zR = false;
        int iU3 = 0;
        int iU4 = 0;
        float fS = 0.0f;
        String strT5 = null;
        String strT6 = null;
        ArrayList<String> arrayListV2 = null;
        String strT7 = null;
        zzaei zzaeiVar = null;
        ArrayList<String> arrayListV3 = null;
        String strT8 = null;
        float fS2 = 0.0f;
        boolean zR2 = false;
        int iU5 = 0;
        int iU6 = 0;
        boolean zR3 = false;
        String strT9 = null;
        String strT10 = null;
        boolean zR4 = false;
        int iU7 = 0;
        Bundle bundleO4 = null;
        String strT11 = null;
        zzzj zzzjVar = null;
        boolean zR5 = false;
        Bundle bundleO5 = null;
        String strT12 = null;
        String strT13 = null;
        String strT14 = null;
        boolean zR6 = false;
        ArrayList arrayList = null;
        String strT15 = null;
        ArrayList<String> arrayListV4 = null;
        int iU8 = 0;
        boolean zR7 = false;
        boolean zR8 = false;
        boolean zR9 = false;
        ArrayList<String> arrayListV5 = null;
        String strT16 = null;
        zzajy zzajyVar = null;
        String strT17 = null;
        Bundle bundleO6 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    iU = bi.U(parcel, i);
                    break;
                case 2:
                    bundleO = bi.o(parcel, i);
                    break;
                case 3:
                    zzvqVar = (zzvq) bi.s(parcel, i, zzvq.CREATOR);
                    break;
                case 4:
                    zzvtVar = (zzvt) bi.s(parcel, i, zzvt.CREATOR);
                    break;
                case 5:
                    strT = bi.t(parcel, i);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) bi.s(parcel, i, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) bi.s(parcel, i, PackageInfo.CREATOR);
                    break;
                case 8:
                    strT2 = bi.t(parcel, i);
                    break;
                case 9:
                    strT3 = bi.t(parcel, i);
                    break;
                case 10:
                    strT4 = bi.t(parcel, i);
                    break;
                case 11:
                    zzbarVar = (zzbar) bi.s(parcel, i, zzbar.CREATOR);
                    break;
                case 12:
                    bundleO2 = bi.o(parcel, i);
                    break;
                case 13:
                    iU2 = bi.U(parcel, i);
                    break;
                case 14:
                    arrayListV = bi.v(parcel, i);
                    break;
                case 15:
                    bundleO3 = bi.o(parcel, i);
                    break;
                case 16:
                    zR = bi.R(parcel, i);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 38:
                case 62:
                default:
                    bi.Y(parcel, i);
                    break;
                case 18:
                    iU3 = bi.U(parcel, i);
                    break;
                case 19:
                    iU4 = bi.U(parcel, i);
                    break;
                case 20:
                    fS = bi.S(parcel, i);
                    break;
                case 21:
                    strT5 = bi.t(parcel, i);
                    break;
                case 25:
                    jV = bi.V(parcel, i);
                    break;
                case 26:
                    strT6 = bi.t(parcel, i);
                    break;
                case 27:
                    arrayListV2 = bi.v(parcel, i);
                    break;
                case 28:
                    strT7 = bi.t(parcel, i);
                    break;
                case 29:
                    zzaeiVar = (zzaei) bi.s(parcel, i, zzaei.CREATOR);
                    break;
                case 30:
                    arrayListV3 = bi.v(parcel, i);
                    break;
                case 31:
                    jV2 = bi.V(parcel, i);
                    break;
                case 33:
                    strT8 = bi.t(parcel, i);
                    break;
                case 34:
                    fS2 = bi.S(parcel, i);
                    break;
                case 35:
                    iU5 = bi.U(parcel, i);
                    break;
                case 36:
                    iU6 = bi.U(parcel, i);
                    break;
                case 37:
                    zR3 = bi.R(parcel, i);
                    break;
                case 39:
                    strT9 = bi.t(parcel, i);
                    break;
                case 40:
                    zR2 = bi.R(parcel, i);
                    break;
                case 41:
                    strT10 = bi.t(parcel, i);
                    break;
                case 42:
                    zR4 = bi.R(parcel, i);
                    break;
                case 43:
                    iU7 = bi.U(parcel, i);
                    break;
                case 44:
                    bundleO4 = bi.o(parcel, i);
                    break;
                case 45:
                    strT11 = bi.t(parcel, i);
                    break;
                case 46:
                    zzzjVar = (zzzj) bi.s(parcel, i, zzzj.CREATOR);
                    break;
                case 47:
                    zR5 = bi.R(parcel, i);
                    break;
                case 48:
                    bundleO5 = bi.o(parcel, i);
                    break;
                case 49:
                    strT12 = bi.t(parcel, i);
                    break;
                case 50:
                    strT13 = bi.t(parcel, i);
                    break;
                case 51:
                    strT14 = bi.t(parcel, i);
                    break;
                case 52:
                    zR6 = bi.R(parcel, i);
                    break;
                case 53:
                    int iW = bi.W(parcel, i);
                    int iDataPosition = parcel.dataPosition();
                    if (iW == 0) {
                        arrayList = null;
                        break;
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        int i2 = parcel.readInt();
                        for (int i3 = 0; i3 < i2; i3++) {
                            arrayList2.add(Integer.valueOf(parcel.readInt()));
                        }
                        parcel.setDataPosition(iDataPosition + iW);
                        arrayList = arrayList2;
                        break;
                    }
                case 54:
                    strT15 = bi.t(parcel, i);
                    break;
                case 55:
                    arrayListV4 = bi.v(parcel, i);
                    break;
                case 56:
                    iU8 = bi.U(parcel, i);
                    break;
                case 57:
                    zR7 = bi.R(parcel, i);
                    break;
                case 58:
                    zR8 = bi.R(parcel, i);
                    break;
                case 59:
                    zR9 = bi.R(parcel, i);
                    break;
                case 60:
                    arrayListV5 = bi.v(parcel, i);
                    break;
                case 61:
                    strT16 = bi.t(parcel, i);
                    break;
                case 63:
                    zzajyVar = (zzajy) bi.s(parcel, i, zzajy.CREATOR);
                    break;
                case 64:
                    strT17 = bi.t(parcel, i);
                    break;
                case 65:
                    bundleO6 = bi.o(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzatq(iU, bundleO, zzvqVar, zzvtVar, strT, applicationInfo, packageInfo, strT2, strT3, strT4, zzbarVar, bundleO2, iU2, arrayListV, bundleO3, zR, iU3, iU4, fS, strT5, jV, strT6, arrayListV2, strT7, zzaeiVar, arrayListV3, jV2, strT8, fS2, zR2, iU5, iU6, zR3, strT9, strT10, zR4, iU7, bundleO4, strT11, zzzjVar, zR5, bundleO5, strT12, strT13, strT14, zR6, arrayList, strT15, arrayListV4, iU8, zR7, zR8, zR9, arrayListV5, strT16, zzajyVar, strT17, bundleO6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatq[] newArray(int i) {
        return new zzatq[i];
    }
}
