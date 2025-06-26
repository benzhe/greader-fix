package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zn3 extends qd3 implements xn3 {
    public zn3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // defpackage.xn3
    public final void d1(x20 x20Var, do3 do3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, do3Var);
        g0(4, parcelL0);
    }

    @Override // defpackage.xn3
    public final it3 d2() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        it3 it3VarZzc = ht3.zzc(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return it3VarZzc;
    }

    @Override // defpackage.xn3
    public final void r6(co3 co3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, co3Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.xn3
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(6, parcelL0);
    }

    @Override // defpackage.xn3
    public final void zza(mu3 mu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, mu3Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.xn3
    public final ru3 zzkm() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        ru3 ru3VarW6 = t91.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return ru3VarW6;
    }
}
