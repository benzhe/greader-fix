package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class v70 extends qd3 implements t70 {
    public v70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // defpackage.t70
    public final void c1(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.t70
    public final float getAspectRatio() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.t70
    public final float getCurrentTime() throws RemoteException {
        Parcel parcelZ = Z(6, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.t70
    public final float getDuration() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }

    @Override // defpackage.t70
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.t70
    public final boolean hasVideoContent() throws RemoteException {
        Parcel parcelZ = Z(8, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.t70
    public final x20 w5() throws RemoteException {
        return jo.L(Z(4, l0()));
    }
}
