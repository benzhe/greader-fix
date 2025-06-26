package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.signin.internal.zah;

/* loaded from: classes.dex */
public final class o35 extends qv3 implements n35 {
    public o35(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.n35
    public final void b3(zah zahVar, l35 l35Var) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f);
        int i = sv3.a;
        parcelObtain.writeInt(1);
        zahVar.writeToParcel(parcelObtain, 0);
        parcelObtain.writeStrongBinder((rv3) l35Var);
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            this.e.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
