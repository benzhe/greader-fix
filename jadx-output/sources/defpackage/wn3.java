package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class wn3 extends sd3 implements xn3 {
    public wn3() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        co3 eo3Var = null;
        do3 fo3Var = null;
        switch (i) {
            case 2:
                it3 it3VarD2 = d2();
                parcel2.writeNoException();
                rd3.b(parcel2, it3VarD2);
                return true;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    eo3Var = iInterfaceQueryLocalInterface instanceof co3 ? (co3) iInterfaceQueryLocalInterface : new eo3(strongBinder);
                }
                r6(eo3Var);
                parcel2.writeNoException();
                return true;
            case 4:
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    fo3Var = iInterfaceQueryLocalInterface2 instanceof do3 ? (do3) iInterfaceQueryLocalInterface2 : new fo3(strongBinder2);
                }
                d1(x20VarG0, fo3Var);
                parcel2.writeNoException();
                return true;
            case 5:
                ru3 ru3VarZzkm = zzkm();
                parcel2.writeNoException();
                rd3.b(parcel2, ru3VarZzkm);
                return true;
            case 6:
                ClassLoader classLoader = rd3.a;
                setImmersiveMode(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 7:
                zza(qu3.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
