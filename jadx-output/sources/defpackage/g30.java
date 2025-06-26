package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class g30 extends d24 implements h30 {
    public g30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // defpackage.h30
    public final int D4(x20 x20Var, String str, boolean z) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(z ? 1 : 0);
        Parcel parcelG0 = g0(3, parcelZ);
        int i = parcelG0.readInt();
        parcelG0.recycle();
        return i;
    }

    @Override // defpackage.h30
    public final int M3(x20 x20Var, String str, boolean z) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(z ? 1 : 0);
        Parcel parcelG0 = g0(5, parcelZ);
        int i = parcelG0.readInt();
        parcelG0.recycle();
        return i;
    }

    @Override // defpackage.h30
    public final x20 N4(x20 x20Var, String str, int i) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(i);
        return jo.L(g0(4, parcelZ));
    }

    @Override // defpackage.h30
    public final int b() throws RemoteException {
        Parcel parcelG0 = g0(6, Z());
        int i = parcelG0.readInt();
        parcelG0.recycle();
        return i;
    }

    @Override // defpackage.h30
    public final x20 r2(x20 x20Var, String str, int i) throws RemoteException {
        Parcel parcelZ = Z();
        e24.b(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeInt(i);
        return jo.L(g0(2, parcelZ));
    }
}
