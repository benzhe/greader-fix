package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class x90 extends qd3 implements v90 {
    public x90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // defpackage.v90
    public final boolean B(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        Parcel parcelZ = Z(16, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.v90
    public final x20 D() throws RemoteException {
        return jo.L(Z(18, l0()));
    }

    @Override // defpackage.v90
    public final void E(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(17, parcelL0);
    }

    @Override // defpackage.v90
    public final void L(iu3 iu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, iu3Var);
        g0(25, parcelL0);
    }

    @Override // defpackage.v90
    public final void N() throws RemoteException {
        g0(22, l0());
    }

    @Override // defpackage.v90
    public final t70 a0() throws RemoteException {
        t70 v70Var;
        Parcel parcelZ = Z(29, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            v70Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            v70Var = iInterfaceQueryLocalInterface instanceof t70 ? (t70) iInterfaceQueryLocalInterface : new v70(strongBinder);
        }
        parcelZ.recycle();
        return v70Var;
    }

    @Override // defpackage.v90
    public final void b0(u90 u90Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, u90Var);
        g0(21, parcelL0);
    }

    @Override // defpackage.v90
    public final String d() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final void destroy() throws RemoteException {
        g0(13, l0());
    }

    @Override // defpackage.v90
    public final String e() throws RemoteException {
        Parcel parcelZ = Z(6, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final void e0() throws RemoteException {
        g0(27, l0());
    }

    @Override // defpackage.v90
    public final m70 f() throws RemoteException {
        m70 o70Var;
        Parcel parcelZ = Z(14, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            o70Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            o70Var = iInterfaceQueryLocalInterface instanceof m70 ? (m70) iInterfaceQueryLocalInterface : new o70(strongBinder);
        }
        parcelZ.recycle();
        return o70Var;
    }

    @Override // defpackage.v90
    public final String g() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final Bundle getExtras() throws RemoteException {
        Parcel parcelZ = Z(20, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.v90
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(11, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.v90
    public final List i() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ArrayList arrayList = parcelZ.readArrayList(rd3.a);
        parcelZ.recycle();
        return arrayList;
    }

    @Override // defpackage.v90
    public final void j0(fu3 fu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, fu3Var);
        g0(26, parcelL0);
    }

    @Override // defpackage.v90
    public final String k() throws RemoteException {
        Parcel parcelZ = Z(10, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final boolean k0() throws RemoteException {
        Parcel parcelZ = Z(30, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.v90
    public final boolean n2() throws RemoteException {
        Parcel parcelZ = Z(24, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.v90
    public final x20 o() throws RemoteException {
        return jo.L(Z(19, l0()));
    }

    @Override // defpackage.v90
    public final u70 p() throws RemoteException {
        u70 w70Var;
        Parcel parcelZ = Z(5, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            w70Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            w70Var = iInterfaceQueryLocalInterface instanceof u70 ? (u70) iInterfaceQueryLocalInterface : new w70(strongBinder);
        }
        parcelZ.recycle();
        return w70Var;
    }

    @Override // defpackage.v90
    public final double q() throws RemoteException {
        Parcel parcelZ = Z(8, l0());
        double d = parcelZ.readDouble();
        parcelZ.recycle();
        return d;
    }

    @Override // defpackage.v90
    public final List q4() throws RemoteException {
        Parcel parcelZ = Z(23, l0());
        ArrayList arrayList = parcelZ.readArrayList(rd3.a);
        parcelZ.recycle();
        return arrayList;
    }

    @Override // defpackage.v90
    public final void q6() throws RemoteException {
        g0(28, l0());
    }

    @Override // defpackage.v90
    public final String r() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final String s() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.v90
    public final void u(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(15, parcelL0);
    }

    @Override // defpackage.v90
    public final void zza(mu3 mu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, mu3Var);
        g0(32, parcelL0);
    }

    @Override // defpackage.v90
    public final ru3 zzkm() throws RemoteException {
        Parcel parcelZ = Z(31, l0());
        ru3 ru3VarW6 = t91.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return ru3VarW6;
    }
}
