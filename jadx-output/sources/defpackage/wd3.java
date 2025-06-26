package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class wd3 extends qd3 implements vd3 {
    public wd3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // defpackage.vd3
    public final void F3(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(7, parcelL0);
    }

    @Override // defpackage.vd3
    public final void H3(x20 x20Var, String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        parcelL0.writeString(null);
        g0(8, parcelL0);
    }

    @Override // defpackage.vd3
    public final void L5() throws RemoteException {
        g0(3, l0());
    }

    @Override // defpackage.vd3
    public final void M2(int[] iArr) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeIntArray(null);
        g0(4, parcelL0);
    }

    @Override // defpackage.vd3
    public final void U2(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(6, parcelL0);
    }

    @Override // defpackage.vd3
    public final void l1(x20 x20Var, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        g0(2, parcelL0);
    }

    @Override // defpackage.vd3
    public final void w0(byte[] bArr) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeByteArray(bArr);
        g0(5, parcelL0);
    }
}
