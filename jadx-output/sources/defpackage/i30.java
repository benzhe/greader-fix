package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i30 extends d24 implements j30 {
    public i30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // defpackage.j30
    public final x20 b1(x20 x20Var, String str, int i, x20 x20Var2) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(i);
        e24.b(parcelZ, x20Var2);
        return jo.L(g0(2, parcelZ));
    }

    @Override // defpackage.j30
    public final x20 e1(x20 x20Var, String str, int i, x20 x20Var2) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(i);
        e24.b(parcelZ, x20Var2);
        return jo.L(g0(3, parcelZ));
    }
}
