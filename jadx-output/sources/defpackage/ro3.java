package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzth;
import com.google.android.gms.internal.ads.zzti;

/* loaded from: classes.dex */
public final class ro3 extends qd3 implements so3 {
    public ro3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // defpackage.so3
    public final zzth B5(zzti zztiVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zztiVar);
        Parcel parcelZ = Z(1, parcelL0);
        zzth zzthVar = (zzth) rd3.a(parcelZ, zzth.CREATOR);
        parcelZ.recycle();
        return zzthVar;
    }

    @Override // defpackage.so3
    public final zzth D1(zzti zztiVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zztiVar);
        Parcel parcelZ = Z(2, parcelL0);
        zzth zzthVar = (zzth) rd3.a(parcelZ, zzth.CREATOR);
        parcelZ.recycle();
        return zzthVar;
    }

    @Override // defpackage.so3
    public final long w1(zzti zztiVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zztiVar);
        Parcel parcelZ = Z(3, parcelL0);
        long j = parcelZ.readLong();
        parcelZ.recycle();
        return j;
    }
}
