package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.rd3;
import defpackage.sd3;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class zzbf extends sd3 implements zzbg {
    public zzbf() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            boolean zZzd = zzd(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            ClassLoader classLoader = rd3.a;
            parcel2.writeInt(zZzd ? 1 : 0);
        } else {
            if (i != 2) {
                return false;
            }
            zzaq(x20.a.g0(parcel.readStrongBinder()));
            parcel2.writeNoException();
        }
        return true;
    }
}
