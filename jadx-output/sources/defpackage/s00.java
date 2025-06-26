package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.GetServiceRequest;

/* loaded from: classes.dex */
public final class s00 implements t00 {
    public final IBinder e;

    public s00(IBinder iBinder) {
        this.e = iBinder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.t00
    public final void C1(r00 r00Var, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder((c24) r00Var);
            parcelObtain.writeInt(1);
            getServiceRequest.writeToParcel(parcelObtain, 0);
            this.e.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.e;
    }
}
