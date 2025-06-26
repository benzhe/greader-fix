package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzj;

/* loaded from: classes.dex */
public final class u10 extends d24 implements t10 {
    public u10(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // defpackage.t10
    public final boolean N5(zzj zzjVar, x20 x20Var) throws RemoteException {
        Parcel parcelZ = Z();
        int i = e24.a;
        parcelZ.writeInt(1);
        zzjVar.writeToParcel(parcelZ, 0);
        e24.b(parcelZ, x20Var);
        Parcel parcelG0 = g0(5, parcelZ);
        boolean z = parcelG0.readInt() != 0;
        parcelG0.recycle();
        return z;
    }
}
