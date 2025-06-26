package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class ri0 extends sd3 implements oi0 {
    public ri0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        bh0 dh0Var;
        if (i == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                dh0Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
                dh0Var = iInterfaceQueryLocalInterface instanceof bh0 ? (bh0) iInterfaceQueryLocalInterface : new dh0(strongBinder);
            }
            i22 i22Var = (i22) this;
            i22Var.f.c = dh0Var;
            ((g12) i22Var.e.c).onAdLoaded();
        } else if (i == 2) {
            ((g12) ((i22) this).e.c).t2(0, parcel.readString());
        } else {
            if (i != 3) {
                return false;
            }
            ((g12) ((i22) this).e.c).U((zzvh) rd3.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
