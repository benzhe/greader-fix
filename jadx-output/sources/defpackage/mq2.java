package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class mq2 extends qd3 implements kq2 {
    public mq2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // defpackage.kq2
    public final void O1(x20 x20Var, x20 x20Var2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        g0(5, parcelL0);
    }

    @Override // defpackage.kq2
    public final x20 O2(String str, x20 x20Var, String str2, String str3, String str4, String str5) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str2);
        parcelL0.writeString(str3);
        parcelL0.writeString(str4);
        parcelL0.writeString(str5);
        return jo.L(Z(9, parcelL0));
    }

    @Override // defpackage.kq2
    public final void Q0(x20 x20Var, x20 x20Var2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        g0(8, parcelL0);
    }

    @Override // defpackage.kq2
    public final void l5(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.kq2
    public final x20 m2(String str, x20 x20Var, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str2);
        parcelL0.writeString(str3);
        parcelL0.writeString(str4);
        parcelL0.writeString(str5);
        parcelL0.writeString(str6);
        parcelL0.writeString(str7);
        parcelL0.writeString(str8);
        return jo.L(Z(10, parcelL0));
    }

    @Override // defpackage.kq2
    public final String m6() throws RemoteException {
        Parcel parcelZ = Z(6, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.kq2
    public final boolean o3(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(2, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.kq2
    public final void p4(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(4, parcelL0);
    }

    @Override // defpackage.kq2
    public final x20 q1(String str, x20 x20Var, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str2);
        parcelL0.writeString(str3);
        parcelL0.writeString(str4);
        parcelL0.writeString(str5);
        parcelL0.writeString(str6);
        parcelL0.writeString(str7);
        parcelL0.writeString(str8);
        return jo.L(Z(11, parcelL0));
    }
}
