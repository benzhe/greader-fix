package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class o80 extends qd3 implements m80 {
    public o80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // defpackage.m80
    public final boolean B(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        Parcel parcelZ = Z(13, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.m80
    public final x20 D() throws RemoteException {
        return jo.L(Z(2, l0()));
    }

    @Override // defpackage.m80
    public final void E(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(14, parcelL0);
    }

    @Override // defpackage.m80
    public final u70 R() throws RemoteException {
        u70 w70Var;
        Parcel parcelZ = Z(6, l0());
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

    @Override // defpackage.m80
    public final String d() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m80
    public final void destroy() throws RemoteException {
        g0(10, l0());
    }

    @Override // defpackage.m80
    public final String e() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m80
    public final m70 f() throws RemoteException {
        m70 o70Var;
        Parcel parcelZ = Z(15, l0());
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

    @Override // defpackage.m80
    public final String g() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m80
    public final Bundle getExtras() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.m80
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel parcelZ = Z(17, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m80
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(11, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.m80
    public final List i() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        ArrayList arrayList = parcelZ.readArrayList(rd3.a);
        parcelZ.recycle();
        return arrayList;
    }

    @Override // defpackage.m80
    public final String r() throws RemoteException {
        Parcel parcelZ = Z(8, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m80
    public final void u(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(12, parcelL0);
    }
}
