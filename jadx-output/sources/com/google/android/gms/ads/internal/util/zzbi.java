package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.qd3;
import defpackage.rd3;
import defpackage.x20;

/* loaded from: classes.dex */
public final class zzbi extends qd3 implements zzbg {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(2, parcelL0);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(x20 x20Var, String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        Parcel parcelZ = Z(1, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }
}
