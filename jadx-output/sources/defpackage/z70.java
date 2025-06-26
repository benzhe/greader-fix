package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class z70 extends qd3 implements x70 {
    public z70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // defpackage.x70
    public final void B0(x20 x20Var, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(i);
        g0(5, parcelL0);
    }

    @Override // defpackage.x70
    public final x20 C4(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        return jo.L(Z(2, parcelL0));
    }

    @Override // defpackage.x70
    public final void I(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.x70
    public final void c0(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.x70
    public final void destroy() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.x70
    public final void j2(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(9, parcelL0);
    }

    @Override // defpackage.x70
    public final void k3(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.x70
    public final void s2(String str, x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, x20Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.x70
    public final void x6(t70 t70Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, t70Var);
        g0(8, parcelL0);
    }
}
