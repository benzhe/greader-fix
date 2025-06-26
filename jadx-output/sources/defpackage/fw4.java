package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class fw4 extends j24 implements hw4 {
    public fw4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // defpackage.hw4
    public final void E0(zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzpVar);
        g0(20, parcelZ);
    }

    @Override // defpackage.hw4
    public final void G5(zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzpVar);
        g0(4, parcelZ);
    }

    @Override // defpackage.hw4
    public final byte[] I3(zzas zzasVar, String str) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzasVar);
        parcelZ.writeString(str);
        Parcel parcelL0 = l0(9, parcelZ);
        byte[] bArrCreateByteArray = parcelL0.createByteArray();
        parcelL0.recycle();
        return bArrCreateByteArray;
    }

    @Override // defpackage.hw4
    public final void I6(zzas zzasVar, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzasVar);
        z34.b(parcelZ, zzpVar);
        g0(1, parcelZ);
    }

    @Override // defpackage.hw4
    public final List<zzkr> M6(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(null);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        ClassLoader classLoader = z34.a;
        parcelZ.writeInt(z ? 1 : 0);
        Parcel parcelL0 = l0(15, parcelZ);
        ArrayList arrayListCreateTypedArrayList = parcelL0.createTypedArrayList(zzkr.CREATOR);
        parcelL0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.hw4
    public final List<zzkr> Q2(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        ClassLoader classLoader = z34.a;
        parcelZ.writeInt(z ? 1 : 0);
        z34.b(parcelZ, zzpVar);
        Parcel parcelL0 = l0(14, parcelZ);
        ArrayList arrayListCreateTypedArrayList = parcelL0.createTypedArrayList(zzkr.CREATOR);
        parcelL0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.hw4
    public final List<zzaa> V2(String str, String str2, String str3) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(null);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        Parcel parcelL0 = l0(17, parcelZ);
        ArrayList arrayListCreateTypedArrayList = parcelL0.createTypedArrayList(zzaa.CREATOR);
        parcelL0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.hw4
    public final String Z0(zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzpVar);
        Parcel parcelL0 = l0(11, parcelZ);
        String string = parcelL0.readString();
        parcelL0.recycle();
        return string;
    }

    @Override // defpackage.hw4
    public final void h3(zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzpVar);
        g0(18, parcelZ);
    }

    @Override // defpackage.hw4
    public final void j4(zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzpVar);
        g0(6, parcelZ);
    }

    @Override // defpackage.hw4
    public final List<zzaa> q0(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.b(parcelZ, zzpVar);
        Parcel parcelL0 = l0(16, parcelZ);
        ArrayList arrayListCreateTypedArrayList = parcelL0.createTypedArrayList(zzaa.CREATOR);
        parcelL0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.hw4
    public final void w4(zzkr zzkrVar, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzkrVar);
        z34.b(parcelZ, zzpVar);
        g0(2, parcelZ);
    }

    @Override // defpackage.hw4
    public final void x2(zzaa zzaaVar, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, zzaaVar);
        z34.b(parcelZ, zzpVar);
        g0(12, parcelZ);
    }

    @Override // defpackage.hw4
    public final void y2(long j, String str, String str2, String str3) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeLong(j);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        g0(10, parcelZ);
    }

    @Override // defpackage.hw4
    public final void z3(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        z34.b(parcelZ, zzpVar);
        g0(19, parcelZ);
    }
}
