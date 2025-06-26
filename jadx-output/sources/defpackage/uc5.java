package defpackage;

import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.bd5;

/* loaded from: classes.dex */
public interface uc5 extends IInterface {

    public static abstract class a extends Binder implements uc5 {
        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.IConnectionCallbacks");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.youtube.player.internal.IConnectionCallbacks");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
            String string = parcel.readString();
            IBinder strongBinder = parcel.readStrongBinder();
            bd5 bd5Var = bd5.this;
            Handler handler = bd5Var.b;
            handler.sendMessage(handler.obtainMessage(1, new bd5.d(string, strongBinder)));
            parcel2.writeNoException();
            return true;
        }
    }
}
