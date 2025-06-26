package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class xg0 extends qd3 implements vg0 {
    public xg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // defpackage.vg0
    public final x20 C() throws RemoteException {
        return jo.L(Z(18, l0()));
    }

    @Override // defpackage.vg0
    public final boolean F() throws RemoteException {
        Parcel parcelZ = Z(14, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.vg0
    public final void K(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(12, parcelL0);
    }

    @Override // defpackage.vg0
    public final String d() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.vg0
    public final String e() throws RemoteException {
        Parcel parcelZ = Z(6, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.vg0
    public final m70 f() throws RemoteException {
        Parcel parcelZ = Z(19, l0());
        m70 m70VarW6 = p70.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return m70VarW6;
    }

    @Override // defpackage.vg0
    public final String g() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.vg0
    public final Bundle getExtras() throws RemoteException {
        Parcel parcelZ = Z(15, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.vg0
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(17, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.vg0
    public final List i() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ArrayList arrayList = parcelZ.readArrayList(rd3.a);
        parcelZ.recycle();
        return arrayList;
    }

    @Override // defpackage.vg0
    public final String k() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.vg0
    public final x20 o() throws RemoteException {
        return jo.L(Z(21, l0()));
    }

    @Override // defpackage.vg0
    public final u70 p() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        u70 u70VarW6 = h70.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return u70VarW6;
    }

    @Override // defpackage.vg0
    public final double q() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        double d = parcelZ.readDouble();
        parcelZ.recycle();
        return d;
    }

    @Override // defpackage.vg0
    public final void recordImpression() throws RemoteException {
        g0(10, l0());
    }

    @Override // defpackage.vg0
    public final String s() throws RemoteException {
        Parcel parcelZ = Z(8, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.vg0
    public final void v(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(11, parcelL0);
    }

    @Override // defpackage.vg0
    public final boolean w() throws RemoteException {
        Parcel parcelZ = Z(13, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.vg0
    public final void x(x20 x20Var, x20 x20Var2, x20 x20Var3) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        rd3.b(parcelL0, x20Var3);
        g0(22, parcelL0);
    }

    @Override // defpackage.vg0
    public final void y(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(16, parcelL0);
    }

    @Override // defpackage.vg0
    public final x20 z() throws RemoteException {
        return jo.L(Z(20, l0()));
    }
}
