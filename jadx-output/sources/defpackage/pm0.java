package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzdrc;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class pm0 implements Parcelable.Creator<zzauj> {
    @Override // android.os.Parcelable.Creator
    public final zzauj createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        Bundle bundleO = null;
        zzbar zzbarVar = null;
        ApplicationInfo applicationInfo = null;
        String strT = null;
        ArrayList<String> arrayListV = null;
        PackageInfo packageInfo = null;
        String strT2 = null;
        String strT3 = null;
        zzdrc zzdrcVar = null;
        String strT4 = null;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    bundleO = bi.o(parcel, i);
                    break;
                case 2:
                    zzbarVar = (zzbar) bi.s(parcel, i, zzbar.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) bi.s(parcel, i, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    strT = bi.t(parcel, i);
                    break;
                case 5:
                    arrayListV = bi.v(parcel, i);
                    break;
                case 6:
                    packageInfo = (PackageInfo) bi.s(parcel, i, PackageInfo.CREATOR);
                    break;
                case 7:
                    strT2 = bi.t(parcel, i);
                    break;
                case 8:
                default:
                    bi.Y(parcel, i);
                    break;
                case 9:
                    strT3 = bi.t(parcel, i);
                    break;
                case 10:
                    zzdrcVar = (zzdrc) bi.s(parcel, i, zzdrc.CREATOR);
                    break;
                case 11:
                    strT4 = bi.t(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzauj(bundleO, zzbarVar, applicationInfo, strT, arrayListV, packageInfo, strT2, strT3, zzdrcVar, strT4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzauj[] newArray(int i) {
        return new zzauj[i];
    }
}
