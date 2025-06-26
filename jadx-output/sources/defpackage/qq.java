package defpackage;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.apps.dashclock.api.DashClockExtension;

/* loaded from: classes.dex */
public abstract class qq extends Binder implements IInterface {
    public qq() {
        attachInterface(this, "com.google.android.apps.dashclock.api.internal.IExtension");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        sq rqVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.apps.dashclock.api.internal.IExtension");
                return true;
            }
            parcel.enforceInterface("com.google.android.apps.dashclock.api.internal.IExtension");
            int i3 = parcel.readInt();
            DashClockExtension.a aVar = (DashClockExtension.a) this;
            DashClockExtension dashClockExtension = DashClockExtension.this;
            if (dashClockExtension.e) {
                dashClockExtension.i.post(new pq(aVar, i3));
            }
            return true;
        }
        parcel.enforceInterface("com.google.android.apps.dashclock.api.internal.IExtension");
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            rqVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.dashclock.api.internal.IExtensionHost");
            rqVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof sq)) ? new rq(strongBinder) : (sq) iInterfaceQueryLocalInterface;
        }
        boolean z = false;
        boolean z2 = parcel.readInt() != 0;
        DashClockExtension.a aVar2 = (DashClockExtension.a) this;
        DashClockExtension dashClockExtension2 = DashClockExtension.this;
        if (!dashClockExtension2.f) {
            PackageManager packageManager = dashClockExtension2.getPackageManager();
            String[] packagesForUid = packageManager.getPackagesForUid(Binder.getCallingUid());
            if (packagesForUid != null && packagesForUid.length > 0) {
                try {
                    Signature[] signatureArr = packageManager.getPackageInfo(packagesForUid[0], 64).signatures;
                    if (signatureArr != null && signatureArr.length == 1) {
                        if (DashClockExtension.k.equals(signatureArr[0])) {
                            z = true;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            if (!z) {
                Log.e("DashClockExtension", "Caller is not official DashClock app and this extension is not world-readable.");
                throw new SecurityException("Caller is not official DashClock app and this extension is not world-readable.");
            }
        }
        DashClockExtension dashClockExtension3 = DashClockExtension.this;
        dashClockExtension3.g = rqVar;
        if (!dashClockExtension3.e) {
            dashClockExtension3.a(z2);
            DashClockExtension.this.e = true;
        }
        return true;
    }
}
