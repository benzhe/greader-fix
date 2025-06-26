package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class s80 extends qd3 implements q80 {
    public s80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // defpackage.q80
    public final boolean A3(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(10, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.q80
    public final void K2(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(14, parcelL0);
    }

    @Override // defpackage.q80
    public final boolean L6() throws RemoteException {
        Parcel parcelZ = Z(13, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.q80
    public final x20 Q1() throws RemoteException {
        return jo.L(Z(9, l0()));
    }

    @Override // defpackage.q80
    public final boolean S0() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.q80
    public final String S1(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(1, parcelL0);
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.q80
    public final u70 X5(String str) throws RemoteException {
        u70 w70Var;
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(2, parcelL0);
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

    @Override // defpackage.q80
    public final void destroy() throws RemoteException {
        g0(8, l0());
    }

    @Override // defpackage.q80
    public final List<String> getAvailableAssetNames() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ArrayList<String> arrayListCreateStringArrayList = parcelZ.createStringArrayList();
        parcelZ.recycle();
        return arrayListCreateStringArrayList;
    }

    @Override // defpackage.q80
    public final String getCustomTemplateId() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.q80
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.q80
    public final void performClick(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(5, parcelL0);
    }

    @Override // defpackage.q80
    public final void recordImpression() throws RemoteException {
        g0(6, l0());
    }

    @Override // defpackage.q80
    public final void u1() throws RemoteException {
        g0(15, l0());
    }
}
