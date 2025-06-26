package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzdwc;
import com.google.android.gms.internal.ads.zzdwh;
import com.google.android.gms.internal.ads.zzdwj;
import com.google.android.gms.internal.ads.zzdwr;
import com.google.android.gms.internal.ads.zzdwt;

/* loaded from: classes.dex */
public final class xr2 extends qd3 implements yr2 {
    public xr2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // defpackage.yr2
    public final zzdwt I2(zzdwr zzdwrVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzdwrVar);
        Parcel parcelZ = Z(3, parcelL0);
        zzdwt zzdwtVar = (zzdwt) rd3.a(parcelZ, zzdwt.CREATOR);
        parcelZ.recycle();
        return zzdwtVar;
    }

    @Override // defpackage.yr2
    public final void U0(zzdwc zzdwcVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzdwcVar);
        g0(2, parcelL0);
    }

    @Override // defpackage.yr2
    public final zzdwj n3(zzdwh zzdwhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzdwhVar);
        Parcel parcelZ = Z(1, parcelL0);
        zzdwj zzdwjVar = (zzdwj) rd3.a(parcelZ, zzdwj.CREATOR);
        parcelZ.recycle();
        return zzdwjVar;
    }
}
