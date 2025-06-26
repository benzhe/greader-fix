package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class uu3 extends qd3 implements su3 {
    public uu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // defpackage.su3
    public final boolean F0() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.su3
    public final xu3 K4() throws RemoteException {
        xu3 yu3Var;
        Parcel parcelZ = Z(11, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            yu3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            yu3Var = iInterfaceQueryLocalInterface instanceof xu3 ? (xu3) iInterfaceQueryLocalInterface : new yu3(strongBinder);
        }
        parcelZ.recycle();
        return yu3Var;
    }

    @Override // defpackage.su3
    public final void g2(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(3, parcelL0);
    }

    @Override // defpackage.su3
    public final boolean g5() throws RemoteException {
        Parcel parcelZ = Z(10, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.su3
    public final float getAspectRatio() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.su3
    public final float getCurrentTime() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.su3
    public final float getDuration() throws RemoteException {
        Parcel parcelZ = Z(6, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.su3
    public final int getPlaybackState() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        int i = parcelZ.readInt();
        parcelZ.recycle();
        return i;
    }

    @Override // defpackage.su3
    public final boolean m1() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.su3
    public final void n4(xu3 xu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, xu3Var);
        g0(8, parcelL0);
    }

    @Override // defpackage.su3
    public final void pause() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.su3
    public final void play() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.su3
    public final void stop() throws RemoteException {
        g0(13, l0());
    }
}
