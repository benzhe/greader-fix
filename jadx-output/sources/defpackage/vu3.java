package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class vu3 extends sd3 implements su3 {
    public vu3() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static su3 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return iInterfaceQueryLocalInterface instanceof su3 ? (su3) iInterfaceQueryLocalInterface : new uu3(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        xu3 yu3Var;
        switch (i) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                ClassLoader classLoader = rd3.a;
                g2(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zM1 = m1();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(zM1 ? 1 : 0);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                float duration = getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 7:
                float currentTime = getCurrentTime();
                parcel2.writeNoException();
                parcel2.writeFloat(currentTime);
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    yu3Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    yu3Var = iInterfaceQueryLocalInterface instanceof xu3 ? (xu3) iInterfaceQueryLocalInterface : new yu3(strongBinder);
                }
                n4(yu3Var);
                parcel2.writeNoException();
                return true;
            case 9:
                float aspectRatio = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 10:
                boolean zG5 = g5();
                parcel2.writeNoException();
                ClassLoader classLoader3 = rd3.a;
                parcel2.writeInt(zG5 ? 1 : 0);
                return true;
            case 11:
                xu3 xu3VarK4 = K4();
                parcel2.writeNoException();
                rd3.b(parcel2, xu3VarK4);
                return true;
            case 12:
                boolean zF0 = F0();
                parcel2.writeNoException();
                ClassLoader classLoader4 = rd3.a;
                parcel2.writeInt(zF0 ? 1 : 0);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
