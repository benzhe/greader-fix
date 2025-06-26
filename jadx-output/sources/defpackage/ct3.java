package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class ct3 extends qd3 implements at3 {
    public ct3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // defpackage.at3
    public final void D6(zzvq zzvqVar, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeInt(i);
        g0(5, parcelL0);
    }

    @Override // defpackage.at3
    public final void M0(zzvq zzvqVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        g0(1, parcelL0);
    }

    @Override // defpackage.at3
    public final boolean isLoading() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.at3
    public final String zzkl() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }
}
