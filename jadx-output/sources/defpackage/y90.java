package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class y90 extends sd3 implements v90 {
    public y90() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        u90 w90Var = null;
        fu3 hu3Var = null;
        switch (i) {
            case 2:
                String strD = ((ho1) this).d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            case 3:
                List<?> listI = ((ho1) this).i();
                parcel2.writeNoException();
                parcel2.writeList(listI);
                return true;
            case 4:
                String strG = ((ho1) this).g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 5:
                u70 u70VarP = ((ho1) this).p();
                parcel2.writeNoException();
                rd3.b(parcel2, u70VarP);
                return true;
            case 6:
                String strE = ((ho1) this).e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 7:
                String strR = ((ho1) this).r();
                parcel2.writeNoException();
                parcel2.writeString(strR);
                return true;
            case 8:
                double dQ = ((ho1) this).q();
                parcel2.writeNoException();
                parcel2.writeDouble(dQ);
                return true;
            case 9:
                String strS = ((ho1) this).s();
                parcel2.writeNoException();
                parcel2.writeString(strS);
                return true;
            case 10:
                String strK = ((ho1) this).k();
                parcel2.writeNoException();
                parcel2.writeString(strK);
                return true;
            case 11:
                su3 videoController = ((ho1) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 12:
                String str = ((ho1) this).e;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 13:
                ((ho1) this).f.a();
                parcel2.writeNoException();
                return true;
            case 14:
                m70 m70VarF = ((ho1) this).f();
                parcel2.writeNoException();
                rd3.b(parcel2, m70VarF);
                return true;
            case 15:
                ((ho1) this).f.k((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean zB = ((ho1) this).B((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zB ? 1 : 0);
                return true;
            case 17:
                ((ho1) this).f.l((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                x20 x20VarD = ((ho1) this).D();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarD);
                return true;
            case 19:
                x20 x20VarW = ((ho1) this).g.w();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarW);
                return true;
            case 20:
                Bundle extras = ((ho1) this).getExtras();
                parcel2.writeNoException();
                rd3.d(parcel2, extras);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    w90Var = iInterfaceQueryLocalInterface instanceof u90 ? (u90) iInterfaceQueryLocalInterface : new w90(strongBinder);
                }
                ((ho1) this).b0(w90Var);
                parcel2.writeNoException();
                return true;
            case 22:
                ((ho1) this).N();
                parcel2.writeNoException();
                return true;
            case 23:
                List<?> listQ4 = ((ho1) this).q4();
                parcel2.writeNoException();
                parcel2.writeList(listQ4);
                return true;
            case 24:
                boolean zN2 = ((ho1) this).n2();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zN2 ? 1 : 0);
                return true;
            case 25:
                ((ho1) this).L(lv3.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
                    hu3Var = iInterfaceQueryLocalInterface2 instanceof fu3 ? (fu3) iInterfaceQueryLocalInterface2 : new hu3(strongBinder2);
                }
                ((ho1) this).j0(hu3Var);
                parcel2.writeNoException();
                return true;
            case 27:
                ((ho1) this).e0();
                parcel2.writeNoException();
                return true;
            case 28:
                ((ho1) this).q6();
                parcel2.writeNoException();
                return true;
            case 29:
                t70 t70VarA0 = ((ho1) this).a0();
                parcel2.writeNoException();
                rd3.b(parcel2, t70VarA0);
                return true;
            case 30:
                boolean zK0 = ((ho1) this).k0();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(zK0 ? 1 : 0);
                return true;
            case 31:
                ru3 ru3VarZzkm = ((ho1) this).zzkm();
                parcel2.writeNoException();
                rd3.b(parcel2, ru3VarZzkm);
                return true;
            case 32:
                ((ho1) this).zza(qu3.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
