package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class cd0 extends sd3 implements zc0 {
    public cd0() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        su3 su3Var = null;
        dd0 fd0Var = null;
        if (i == 3) {
            un1 un1Var = (un1) this;
            bi.f("#008 Must be called on the main UI thread.");
            if (un1Var.h) {
                is0.zzex("getVideoController: Instream ad should not be used after destroyed");
            } else {
                su3Var = un1Var.f;
            }
            parcel2.writeNoException();
            rd3.b(parcel2, su3Var);
            return true;
        }
        if (i == 4) {
            ((un1) this).destroy();
            parcel2.writeNoException();
            return true;
        }
        if (i == 5) {
            x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                fd0Var = iInterfaceQueryLocalInterface instanceof dd0 ? (dd0) iInterfaceQueryLocalInterface : new fd0(strongBinder);
            }
            ((un1) this).W6(x20VarG0, fd0Var);
            parcel2.writeNoException();
            return true;
        }
        if (i == 6) {
            x20 x20VarG02 = x20.a.g0(parcel.readStrongBinder());
            bi.f("#008 Must be called on the main UI thread.");
            ((un1) this).W6(x20VarG02, new wn1());
            parcel2.writeNoException();
            return true;
        }
        if (i != 7) {
            return false;
        }
        t70 t70VarA0 = ((un1) this).a0();
        parcel2.writeNoException();
        rd3.b(parcel2, t70VarA0);
        return true;
    }
}
