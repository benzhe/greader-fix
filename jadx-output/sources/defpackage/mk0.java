package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class mk0 extends sd3 implements jk0 {
    public static final /* synthetic */ int e = 0;

    public mk0() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((cz1) this).f0((Intent) rd3.a(parcel, Intent.CREATOR));
        } else if (i == 2) {
            ((cz1) this).h5(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
        } else {
            if (i != 3) {
                return false;
            }
            cz1 cz1Var = (cz1) this;
            cz1Var.i.c(new uy1(cz1Var.h));
        }
        parcel2.writeNoException();
        return true;
    }
}
