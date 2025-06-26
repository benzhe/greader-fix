package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class a80 extends sd3 implements x70 {
    public static final /* synthetic */ int e = 0;

    public a80() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        t70 v70Var;
        switch (i) {
            case 1:
                s2(parcel.readString(), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                x20 x20VarC4 = C4(parcel.readString());
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarC4);
                return true;
            case 3:
                c0(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                destroy();
                parcel2.writeNoException();
                return true;
            case 5:
                B0(x20.a.g0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                I(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                k3(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    v70Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    v70Var = iInterfaceQueryLocalInterface instanceof t70 ? (t70) iInterfaceQueryLocalInterface : new v70(strongBinder);
                }
                x6(v70Var);
                parcel2.writeNoException();
                return true;
            case 9:
                j2(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
