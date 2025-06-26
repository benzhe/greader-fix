package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.signin.internal.zaj;

/* loaded from: classes.dex */
public class rv3 extends Binder implements IInterface {
    public rv3(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean zOnTransact;
        if (i > 16777215) {
            zOnTransact = super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        m35 m35Var = (m35) this;
        if (i == 3) {
        } else if (i == 4 || i == 6) {
        } else if (i == 7) {
        } else {
            if (i != 8) {
                return false;
            }
            tz tzVar = (tz) m35Var;
            tzVar.f.post(new vz(tzVar, (zaj) sv3.a(parcel, zaj.CREATOR)));
        }
        parcel2.writeNoException();
        return true;
    }
}
