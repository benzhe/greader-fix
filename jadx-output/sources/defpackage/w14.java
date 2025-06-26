package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zze;

/* loaded from: classes.dex */
public final class w14 implements v14, IInterface {
    public final IBinder e;
    public final String f = "com.google.android.gms.clearcut.internal.IClearcutLoggerService";

    public w14(IBinder iBinder) {
        this.e = iBinder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.v14
    public final void M1(t14 t14Var, zze zzeVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f);
        int i = lx3.a;
        parcelObtain.writeStrongBinder((qw3) t14Var);
        if (zzeVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            zzeVar.writeToParcel(parcelObtain, 0);
        }
        try {
            this.e.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.e;
    }
}
