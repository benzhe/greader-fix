package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzajm;
import defpackage.x20;
import java.util.List;

/* loaded from: classes.dex */
public abstract class cu3 extends sd3 implements zt3 {
    public cu3() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        tc0 vc0Var;
        switch (i) {
            case 1:
                m0();
                parcel2.writeNoException();
                return true;
            case 2:
                k5(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                Z5(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                ClassLoader classLoader = rd3.a;
                L1(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 5:
                r0(x20.a.g0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                J3(parcel.readString(), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float fV3 = v3();
                parcel2.writeNoException();
                parcel2.writeFloat(fV3);
                return true;
            case 8:
                boolean zD2 = D2();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(zD2 ? 1 : 0);
                return true;
            case 9:
                String strE3 = E3();
                parcel2.writeNoException();
                parcel2.writeString(strE3);
                return true;
            case 10:
                B6(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                L4(gg0.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    vc0Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    vc0Var = iInterfaceQueryLocalInterface instanceof tc0 ? (tc0) iInterfaceQueryLocalInterface : new vc0(strongBinder);
                }
                e4(vc0Var);
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzajm> listE1 = E1();
                parcel2.writeNoException();
                parcel2.writeTypedList(listE1);
                return true;
            case 14:
                N2((zzaat) rd3.a(parcel, zzaat.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                H0();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
